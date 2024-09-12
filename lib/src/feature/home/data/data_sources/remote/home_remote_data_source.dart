import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quran/src/feature/home/data/data_sources/remote/home_end_points.dart';
import 'package:quran/src/feature/shared/failures/server_failure.dart';
import 'package:quran/src/injection/main_modules_providers.dart';

abstract class HomeRemoteDataSource {
  Future<Either<ServerFailure, Response<Map<String, dynamic>>>>
      getDataSurahsFromServer();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  HomeRemoteDataSourceImpl(this.ref);
  final Ref ref;
  @override
  Future<Either<ServerFailure, Response<Map<String, dynamic>>>>
      getDataSurahsFromServer() async {
    final result = await ref.read(dioProvider).get<Map<String, dynamic>>(
          HomeEndpoints.surahList,
        );
    if (result.statusCode == 304 || result.statusCode == 200) {
      return right(result);
    } else {
      return left(ServerFailure.unexpectedStatusCode(result.statusCode ?? 505));
    }
  }
}
