import 'package:fpdart/fpdart.dart';
import 'package:quran/src/feature/shared/failures/server_failure.dart';
import 'package:quran/src/feature/surah/domain/models/surah_model.dart';

abstract class SurahRepository {
  //
  Future<Either<ServerFailure, Surah>> getSurah({required int surahNumber});
  //
  Future<Either<ServerFailure, Surah>> getSurahTranslate({
    required int surahNumber,
  });
  //
}
