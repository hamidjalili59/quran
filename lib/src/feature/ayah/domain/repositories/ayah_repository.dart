import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:quran/src/feature/ayah/domain/failures/ayah_failure.dart';
import 'package:quran/src/feature/surah/domain/models/surah_model.dart';

abstract class AyahRepository {
  Future<Either<AyahFailure, String>> voiceExists({
    required int ayahNumber,
    required Surah surah,
    required String qari,
    required String audioLink,
  });
  //
  Future<Either<AyahFailure, File>> getVoice({
    required int ayahNumber,
    required Surah surah,
    required String qari,
    required String audioLink,
  });
  //
}
