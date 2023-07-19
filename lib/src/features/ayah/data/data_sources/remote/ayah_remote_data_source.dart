import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class AyahRemoteDataSource {
  Future<Either<DioException, Response<List<int>>>> getDataFromServer(
      {required String audioLink});
}

class AyahRemoteDataSourceImpl implements AyahRemoteDataSource {
  AyahRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;
  @override
  Future<Either<DioException, Response<List<int>>>> getDataFromServer(
      {required String audioLink}) {
    return apiService.getMethod(
      audioLink,
      option: const ApiServiceOption(
        header: ApiServiceHeader.basic(
          headers: {
            'accept': 'application/json',
          },
        ),
      ),
    );
  }
}
