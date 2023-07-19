import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quran/src/injectable/injectable.dart';

abstract class AyahRemoteDataSource {
  Future<Either<DioException, Response<ResponseBody>>> getDataFromServer(
      {required String audioLink, required String path});
}

class AyahRemoteDataSourceImpl implements AyahRemoteDataSource {
  AyahRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;
  @override
  Future<Either<DioException, Response<ResponseBody>>> getDataFromServer(
      {required String audioLink, required String path}) async {
    return getIt
        .get<Dio>()
        .downloadUri(Uri.parse(audioLink), path,
            options: Options(
                sendTimeout: Duration(seconds: 2),
                receiveTimeout: Duration(seconds: 3)))
        .then((value) {
      return right(value as Response<ResponseBody>);
    });
  }
}
