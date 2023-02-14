import 'package:dartz/dartz.dart';
import 'package:quran/src/features/home/domain/failures/home_failure.dart';
import 'package:quran/src/features/home/domain/models/list_of_surahs.dart';

abstract class HomeRepository {
  //
  Future<Either<HomeFailure, ListOfHomeSurah>> getHomeSurahFromServer();
  //
  Future<Either<HomeFailure, ListOfHomeSurah>> getCachedHomeData();
  //
  Future<Either<HomeFailure, void>> cacheHomeData(
      {required ListOfHomeSurah surah});
}
