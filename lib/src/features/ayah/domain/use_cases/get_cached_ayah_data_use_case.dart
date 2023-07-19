import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:quran/src/features/core/models/tuple.dart' as tuple;
import 'package:quran/src/features/core/models/use_case.dart';
import 'package:quran/src/features/ayah/domain/failures/ayah_failure.dart';
import 'package:quran/src/features/ayah/domain/repositories/ayah_repository.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';

class GetCachedAyahDataUseCase
    implements UseCase<AyahFailure, File, tuple.Tuple3<int, String, Surah>> {
  const GetCachedAyahDataUseCase(this.repo);

  final AyahRepository repo;

  @override
  Future<Either<AyahFailure, File>> call(
          {tuple.Tuple3<int, String, Surah>? param}) =>
      (param == null)
          ? Future.value(left(const AyahFailure.nullParam()))
          : repo.getCachedAyahData(
              ayahNumber: param.value1,
              qari: param.value2,
              surah: param.value3);
}
