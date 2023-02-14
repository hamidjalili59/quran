import 'package:dartz/dartz.dart';
import 'package:quran/src/features/core/models/tuple.dart' as tuple;
import 'package:quran/src/features/core/models/use_case.dart';
import 'package:quran/src/features/surah/domain/failures/surah_failure.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';
import 'package:quran/src/features/surah/domain/repositories/surah_repository.dart';

class GetCachedSurahDataUseCase
    implements UseCase<SurahFailure, Surah, tuple.Tuple1<int>> {
  const GetCachedSurahDataUseCase(this.repo);

  final SurahRepository repo;

  @override
  Future<Either<SurahFailure, Surah>> call({tuple.Tuple1<int>? param}) =>
      (param == null)
          ? Future.value(left(const SurahFailure.nullParam()))
          : repo.getCachedSurahData(surahNumber: param.value1);
}
