import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenInterceptor extends Interceptor {
  const TokenInterceptor(this.dio);

  final Dio dio;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('accessToken');

    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      final prefs = await SharedPreferences.getInstance();
      final refreshToken = prefs.getString('refreshToken');

      if (refreshToken != null) {
        try {
          final response = await dio.post<Map<String, dynamic>>(
            '/auth/refresh-token',
            data: {'refreshToken': refreshToken},
          );
          final newToken = await response.data?['accessToken'] as String?;

          await prefs.setString('accessToken', newToken ?? '');
          err.requestOptions.headers['Authorization'] = 'Bearer $newToken';

          final retryResponse = await dio.request<dynamic>(
            err.requestOptions.path,
            options: Options(
              method: err.requestOptions.method,
              headers: err.requestOptions.headers,
            ),
            data: err.requestOptions.data,
            queryParameters: err.requestOptions.queryParameters,
          );

          return handler.resolve(retryResponse);
        } catch (e) {
          // Handle refresh token expiration or other errors
          await prefs.remove('accessToken');
          await prefs.remove('refreshToken');
          return handler.reject(err);
        }
      }
    }

    return handler.next(err);
  }
}

Future<void> saveTokens(String accessToken, String refreshToken) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('accessToken', accessToken);
  await prefs.setString('refreshToken', refreshToken);
}

Future<void> clearTokens() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove('accessToken');
  await prefs.remove('refreshToken');
}
