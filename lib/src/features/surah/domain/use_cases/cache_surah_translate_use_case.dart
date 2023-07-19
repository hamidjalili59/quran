import 'package:dartz/dartz.dart';
import 'package:quran/src/features/core/models/tuple.dart' as tuple;
import 'package:quran/src/features/core/models/use_case.dart';
import 'package:quran/src/features/surah/domain/failures/surah_failure.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';
import 'package:quran/src/features/surah/domain/repositories/surah_repository.dart';

class CacheSurahTranslateDataUseCase
    implements UseCase<SurahFailure, void, tuple.Tuple2<int, Surah>> {
  const CacheSurahTranslateDataUseCase(this.repo);

  final SurahRepository repo;

  @override
  Future<Either<SurahFailure, void>> call({tuple.Tuple2<int, Surah>? param}) =>
      (param == null)
          ? Future.value(left(const SurahFailure.nullParam()))
          : repo.cacheSurahTranslateData(
              surahNumber: param.value1, surah: param.value2);
}
