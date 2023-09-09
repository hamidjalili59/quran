import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:quran/src/features/ayah/domain/failures/ayah_failure.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';

abstract class AyahRepository {
  //
  Future<Either<AyahFailure, File>> getVoice(
      {required int ayahNumber,
      required Surah surah,
      required String qari,
      required String audioLink,});
  //
  Future<Either<AyahFailure, File>> getCachedAyahData(
      {required int ayahNumber, required Surah surah, required String qari,});
}
