import 'package:quran/src/features/core/models/base_response.dart';
import 'package:quran/src/features/surah/data/data_sources/local/surah_local_data_source.dart';
import 'package:quran/src/features/surah/data/data_sources/remote/surah_remote_data_source.dart';
import 'package:quran/src/features/surah/domain/failures/surah_failure.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';
import 'package:quran/src/features/surah/domain/repositories/surah_repository.dart';
import 'package:dartz/dartz.dart';

class SurahRepositoryImpl extends SurahRepository {
  final SurahRemoteDataSource _remoteDS;
  final SurahLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  SurahRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<SurahFailure, void>> cacheSurahData(
      {required int surahNumber, required Surah surah}) {
    return _localDS
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
      {required int surahNumber}) {
    print(surahNumber);
    return _localDS.getCachedData(fieldKey: surahNumber.toString()).then(
      (value) {
        print('________________');
        print(value.toString());
        print('________________');
        return value.fold(
          (l) => left<SurahFailure, Surah>(SurahFailure.database(l)),
          (r) {
            if (r!.ayahs != null) {
              return right<SurahFailure, Surah>(r);
            } else {
              return left<SurahFailure, Surah>(const SurahFailure.nullParam());
            }
          },
        );
      },
    );
  }

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
}
