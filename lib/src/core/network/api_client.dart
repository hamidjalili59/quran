import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quran/src/core/constants/general_constants.dart';
import 'package:quran/src/core/network/retry_interceptor.dart';
import 'package:quran/src/core/network/token_interceptor.dart';

class ApiClient {
  ApiClient(this.ref);

  final Ref ref;

  final _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      validateStatus: (status) => switch (status) {
        200 => true,
        201 => true,
        304 => true,
        _ => false,
      },
    ),
  );

  Dio initDio() {
    _dio.interceptors.add(TokenInterceptor(_dio));
    _dio.interceptors.add(
      RetryInterceptor(
        _dio,
        retryOptions: const RetryOptions(),
      ),
    );
    return _dio;
  }
}
