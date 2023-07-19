import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class SurahRemoteDataSource {
  Future<Either<DioException, Response<Map<String, dynamic>>>>
      getDataFromServer({required int surahNumber});
  Future<Either<DioException, Response<Map<String, dynamic>>>>
      getTranslateDataFromServer({required int surahNumber});
}

class SurahRemoteDataSourceImpl implements SurahRemoteDataSource {
  SurahRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;
  @override
  Future<Either<DioException, Response<Map<String, dynamic>>>>
      getDataFromServer({required int surahNumber}) {
    print(0);
    return apiService.getMethod(
      'https://api.alquran.cloud/v1/surah/${surahNumber + 1}/ar.abdulbasitmurattal',
      option: const ApiServiceOption(
        header: ApiServiceHeader.basic(
          headers: {
            'accept': 'application/json',
          },
        ),
      ),
    );
  }

  @override
  Future<Either<DioException, Response<Map<String, dynamic>>>>
      getTranslateDataFromServer({required int surahNumber}) {
    print('start');
    return apiService.getMethod(
      'https://api.alquran.cloud/v1/surah/${surahNumber + 1}/fa.ayati',
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
