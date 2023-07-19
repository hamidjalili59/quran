import 'package:dartz/dartz.dart';
import 'package:quran/src/features/surah/domain/failures/surah_failure.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';

abstract class SurahRepository {
  //
  Future<Either<SurahFailure, Surah>> getSurah({required int surahNumber});
  //
  Future<Either<SurahFailure, Surah>> getSurahTranslate(
      {required int surahNumber});
  //
  Future<Either<SurahFailure, Surah>> getCachedSurahData(
      {required int surahNumber});
  //
  Future<Either<SurahFailure, void>> cacheSurahData(
      {required int surahNumber, required Surah surah});
  Future<Either<SurahFailure, Surah>> getCachedSurahTranslateData(
      {required int surahNumber});
  //
  Future<Either<SurahFailure, void>> cacheSurahTranslateData(
      {required int surahNumber, required Surah surah});
}
