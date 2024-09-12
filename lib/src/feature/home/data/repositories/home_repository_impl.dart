import 'package:fpdart/fpdart.dart';
import 'package:quran/src/feature/core/models/base_response.dart';
import 'package:quran/src/feature/home/data/data_sources/remote/home_remote_data_source.dart';
import 'package:quran/src/feature/home/domain/repositories/home_repository.dart';
import 'package:quran/src/feature/shared/failures/server_failure.dart';
import 'package:quran/src/feature/surah/domain/models/surah_model.dart';

class HomeRepositoryImpl extends HomeRepository {
  HomeRepositoryImpl(this._remoteDS);
  final HomeRemoteDataSource _remoteDS;

  @override
  Future<Either<ServerFailure, List<Surah>>> getHomeSurahFromServer() async {
    return await _remoteDS.getDataSurahsFromServer().then(
          (value) => value.fold(
            (l) => left<ServerFailure, List<Surah>>(l),
            (r) {
              if (r.data != null) {
                final List<dynamic> surahList =
                    BaseResponse.fromJson(r.data!).data as List<dynamic>;
                final surahDataFromServer = surahList
                    .map((e) => Surah.fromJson(e as Map<String, dynamic>))
                    .toList();

                return right<ServerFailure, List<Surah>>(surahDataFromServer);
              } else {
                return left(const ServerFailure.serverError());
              }
            },
          ),
        );
  }
}
