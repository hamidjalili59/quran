import 'dart:async';

import 'package:dio/dio.dart';

class RetryInterceptor extends Interceptor {
  RetryInterceptor(this.dio, {required this.retryOptions});

  final Dio dio;
  final RetryOptions retryOptions;

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    var retryCount = (err.requestOptions.extra['retryCount'] as int?) ?? 0;

    if (retryCount < retryOptions.maxRetries) {
      retryCount++;
      err.requestOptions.extra['retryCount'] = retryCount;

      try {
        await Future<void>.delayed(
          retryOptions.retryInterval,
        );
        final response = await Dio().request<dynamic>(
          err.requestOptions.path,
          options: Options(
            method: err.requestOptions.method,
            headers: err.requestOptions.headers,
            extra: err.requestOptions.extra,
          ),
          data: err.requestOptions.data,
          queryParameters: err.requestOptions.queryParameters,
        );
        return handler.resolve(response);
      } catch (e) {
        if (retryCount >= retryOptions.maxRetries) {
          return handler.next(err);
        } else {
          return onError(err, handler);
        }
      }
    } else {
      return handler.next(err);
    }
  }
}

class RetryOptions {
  const RetryOptions({
    this.maxRetries = 3,
    this.retryInterval = const Duration(seconds: 1),
  });

  final int maxRetries;
  final Duration retryInterval;
}
