import 'package:dartz/dartz.dart';
import 'package:quran/src/features/core/models/tuple.dart' as tuple;
import 'package:quran/src/features/core/models/use_case.dart';
import 'package:quran/src/features/home/domain/failures/home_failure.dart';
import 'package:quran/src/features/home/domain/models/list_of_surahs.dart';
import 'package:quran/src/features/home/domain/repositories/home_repository.dart';

class CacheHomeSurahDataUseCase
    implements UseCase<HomeFailure, void, tuple.Tuple1<ListOfHomeSurah>> {
  const CacheHomeSurahDataUseCase(this.repo);

  final HomeRepository repo;

  @override
  Future<Either<HomeFailure, void>> call(
          {tuple.Tuple1<ListOfHomeSurah>? param,}) =>
      (param == null)
          ? Future.value(left(const HomeFailure.nullParam()))
          : repo.cacheHomeData(surah: param.value1);
}
