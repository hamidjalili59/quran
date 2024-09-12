import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quran/src/feature/shared/failures/server_failure.dart';
import 'package:quran/src/injection/main_modules_providers.dart';

abstract class SurahRemoteDataSource {
  Future<Either<ServerFailure, Response<Map<String, dynamic>>>>
      getDataFromServer({required int surahNumber});
  Future<Either<ServerFailure, Response<Map<String, dynamic>>>>
      getTranslateDataFromServer({required int surahNumber});
}

class SurahRemoteDataSourceImpl implements SurahRemoteDataSource {
  SurahRemoteDataSourceImpl(this.ref);
  final Ref ref;
  @override
  Future<Either<ServerFailure, Response<Map<String, dynamic>>>>
      getDataFromServer({required int surahNumber}) async {
    final result = await ref.read(dioProvider).get<Map<String, dynamic>>(
          'https://api.alquran.cloud/v1/surah/$surahNumber/ar.abdulbasitmurattal',
        );
    if (result.statusCode == 200) {
      return right(result);
    } else {
      return left(ServerFailure.unexpectedStatusCode(result.statusCode ?? 505));
    }
  }

  @override
  Future<Either<ServerFailure, Response<Map<String, dynamic>>>>
      getTranslateDataFromServer({required int surahNumber}) async {
    final result = await ref.read(dioProvider).get<Map<String, dynamic>>(
          'https://api.alquran.cloud/v1/surah/$surahNumber/fa.ayati',
        );
    if (result.statusCode == 200) {
      return right(result);
    } else {
      return left(ServerFailure.unexpectedStatusCode(result.statusCode ?? 505));
    }
  }
}
