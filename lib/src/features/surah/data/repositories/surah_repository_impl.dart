import 'package:quran/src/features/core/models/base_response.dart';
import 'package:quran/src/features/surah/data/data_sources/local/surah_local_data_source.dart';
import 'package:quran/src/features/surah/data/data_sources/local/surah_translate_data_source.dart';
import 'package:quran/src/features/surah/data/data_sources/remote/surah_remote_data_source.dart';
import 'package:quran/src/features/surah/domain/failures/surah_failure.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';
import 'package:quran/src/features/surah/domain/repositories/surah_repository.dart';
import 'package:dartz/dartz.dart';

class SurahRepositoryImpl extends SurahRepository {
  final SurahRemoteDataSource _remoteDS;
  final SurahLocalDataSource _localSurahDS;
  final SurahTranslateLocalDataSource _localTranslateDS;
  final String tokenFieldKey = 'token';

  SurahRepositoryImpl(
    this._remoteDS,
    this._localSurahDS,
    this._localTranslateDS,
  );

  @override
  Future<Either<SurahFailure, void>> cacheSurahData(
      {required int surahNumber, required Surah surah}) {
    return _localSurahDS
        .cacheData(fieldKey: surahNumber.toString(), value: surah)
        .then(
          (value) => value.fold(
            (l) => left<SurahFailure, void>(SurahFailure.database(l)),
            (r) => right<SurahFailure, void>(null),
          ),
        );
  }

  @override
  Future<Either<SurahFailure, Surah>> getCachedSurahData(
          {required int surahNumber}) =>
      _localSurahDS.getCachedData(fieldKey: surahNumber.toString()).then(
        (value) {
          return value.fold(
            (l) => left<SurahFailure, Surah>(SurahFailure.database(l)),
            (r) {
              if (r!.ayahs != null) {
                return right<SurahFailure, Surah>(r);
              } else {
                return left<SurahFailure, Surah>(
                    const SurahFailure.nullParam());
              }
            },
          );
        },
      );

  @override
  Future<Either<SurahFailure, Surah>> getSurah({required int surahNumber}) {
    return _remoteDS.getDataFromServer(surahNumber: surahNumber).then(
          (value) => value.fold(
            (l) => left<SurahFailure, Surah>(SurahFailure.api(l)),
            (r) {
              final surahDataFromServer = Surah.fromJson(
                BaseResponse.fromJson(r.data ?? {}).data,
              );
              return right<SurahFailure, Surah>(surahDataFromServer);
            },
          ),
        );
  }

  @override
  Future<Either<SurahFailure, Surah>> getSurahTranslate(
      {required int surahNumber}) {
    print(123);
    return _remoteDS.getTranslateDataFromServer(surahNumber: surahNumber).then(
          (value) => value.fold(
            (l) => left<SurahFailure, Surah>(SurahFailure.api(l)),
            (r) {
              print(2234);
              final surahDataFromServer = Surah.fromJson(
                BaseResponse.fromJson(r.data ?? {}).data,
              );
              return right<SurahFailure, Surah>(surahDataFromServer);
            },
          ),
        );
  }

  @override
  Future<Either<SurahFailure, void>> cacheSurahTranslateData(
      {required int surahNumber, required Surah surah}) {
    return _localTranslateDS
        .cacheData(
            fieldKey: surahNumber.toString() + '_translate', value: surah)
        .then(
          (value) => value.fold(
            (l) => left<SurahFailure, void>(SurahFailure.database(l)),
            (r) => right<SurahFailure, void>(null),
          ),
        );
  }

  @override
  Future<Either<SurahFailure, Surah>> getCachedSurahTranslateData(
          {required int surahNumber}) =>
      _localTranslateDS
          .getCachedData(fieldKey: surahNumber.toString() + '_translate')
          .then(
        (value) {
          return value.fold(
            (l) => left<SurahFailure, Surah>(SurahFailure.database(l)),
            (r) {
              if (r!.ayahs != null) {
                return right<SurahFailure, Surah>(r);
              } else {
                return left<SurahFailure, Surah>(
                    const SurahFailure.nullParam());
              }
            },
          );
        },
      );
}
