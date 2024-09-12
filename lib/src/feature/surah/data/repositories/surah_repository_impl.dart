import 'package:fpdart/fpdart.dart';
import 'package:quran/src/feature/core/models/base_response.dart';
import 'package:quran/src/feature/shared/failures/server_failure.dart';
import 'package:quran/src/feature/surah/data/data_sources/remote/surah_remote_data_source.dart';
import 'package:quran/src/feature/surah/domain/models/surah_model.dart';
import 'package:quran/src/feature/surah/domain/repositories/surah_repository.dart';

class SurahRepositoryImpl extends SurahRepository {
  SurahRepositoryImpl(
    this._remoteDS,
  );
  final SurahRemoteDataSource _remoteDS;
  final String tokenFieldKey = 'token';

  @override
  Future<Either<ServerFailure, Surah>> getSurah({
    required int surahNumber,
  }) async {
    return await _remoteDS.getDataFromServer(surahNumber: surahNumber).then(
          (value) => value.fold(
            (l) => left<ServerFailure, Surah>(l),
            (r) {
              final surahDataFromServer = Surah.fromJson(
                (BaseResponse.fromJson(r.data ?? {}).data)
                    as Map<String, Object?>,
              );
              return right<ServerFailure, Surah>(surahDataFromServer);
            },
          ),
        );
  }

  @override
  Future<Either<ServerFailure, Surah>> getSurahTranslate({
    required int surahNumber,
  }) async {
    return await _remoteDS
        .getTranslateDataFromServer(surahNumber: surahNumber)
        .then(
          (value) => value.fold(
            (l) => left<ServerFailure, Surah>(l),
            (r) {
              final surahDataFromServer = Surah.fromJson(
                (BaseResponse.fromJson(r.data ?? {}).data)
                    as Map<String, Object?>,
              );
              return right<ServerFailure, Surah>(surahDataFromServer);
            },
          ),
        );
  }
}
