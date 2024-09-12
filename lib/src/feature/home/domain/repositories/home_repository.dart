import 'package:fpdart/fpdart.dart';
import 'package:quran/src/feature/shared/failures/server_failure.dart';
import 'package:quran/src/feature/surah/domain/models/surah_model.dart';

abstract class HomeRepository {
  //
  Future<Either<ServerFailure, List<Surah>>> getHomeSurahFromServer();
  //
}
