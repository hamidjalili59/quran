import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quran/src/injectable/injectable.dart';

class AyahRemoteDataSource {
  AyahRemoteDataSource(this.apiService);
  final ApiService apiService;

  Future<Either<DioException, Response<ResponseBody>>> getDataFromServer({
    required String audioLink,
    required String path,
  }) async {
    return getIt
        .get<Dio>()
        .downloadUri(
          Uri.parse(audioLink),
          path,
          options: Options(
            sendTimeout: const Duration(seconds: 4),
            receiveTimeout: const Duration(seconds: 5),
          ),
        )
        .then((value) {
      return right(value as Response<ResponseBody>);
    });
  }
}
