import 'package:dartz/dartz.dart';
import 'package:quran/src/features/core/models/tuple.dart' as tuple;
import 'package:quran/src/features/core/models/use_case.dart';
import 'package:quran/src/features/home/domain/failures/home_failure.dart';
import 'package:quran/src/features/home/domain/models/list_of_surahs.dart';
import 'package:quran/src/features/home/domain/repositories/home_repository.dart';

class GetCachedHomeSurahDataUseCase
    implements UseCase<HomeFailure, ListOfHomeSurah, tuple.Tuple0> {
  const GetCachedHomeSurahDataUseCase(this.repo);

  final HomeRepository repo;

  @override
  Future<Either<HomeFailure, ListOfHomeSurah>> call({tuple.Tuple0? param}) =>
       repo.getCachedHomeData();
}
