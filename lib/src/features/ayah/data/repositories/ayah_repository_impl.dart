import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:path_provider/path_provider.dart' as path;
import 'package:quran/src/features/ayah/data/data_sources/local/ayah_local_data_source.dart';
import 'package:quran/src/features/ayah/data/data_sources/remote/ayah_remote_data_source.dart';
import 'package:quran/src/features/ayah/domain/failures/ayah_failure.dart';
import 'package:quran/src/features/ayah/domain/repositories/ayah_repository.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';

class AyahRepositoryImpl extends AyahRepository {
  AyahRepositoryImpl(this._remoteDS, this._localDS);
  final AyahRemoteDataSource _remoteDS;
  final AyahLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  @override
  Future<Either<AyahFailure, File>> getCachedAyahData({
    required int ayahNumber,
    required Surah surah,
    required String qari,
  }) =>
      _localDS.getCachedData(fieldKey: ayahNumber.toString()).then(
        (value) {
          return value.fold(
            (l) => left<AyahFailure, File>(AyahFailure.database(l)),
            (r) {
              return left<AyahFailure, File>(const AyahFailure.nullParam());
            },
          );
        },
      );

  @override
  Future<Either<AyahFailure, File>> getVoice({
    required int ayahNumber,
    required Surah surah,
    required String qari,
    required String audioLink,
  }) async {
    final dir = await path.getApplicationDocumentsDirectory();
    if (File('${dir.path}${surah.number}-$ayahNumber-$qari.mp3').existsSync()) {
      final file = File('${dir.path}${surah.number}-$ayahNumber-$qari.mp3');
      return right<AyahFailure, File>(file);
    } else {
      return _remoteDS
          .getDataFromServer(
            audioLink: audioLink,
            path: '${dir.path}${surah.number}-$ayahNumber-$qari.mp3',
          )
          .then(
            (value) => value.fold(
              (l) {
                return left<AyahFailure, File>(AyahFailure.api(l));
              },
              (r) async {
                final file = File(
                  '${dir.path}${surah.number}-$ayahNumber-$qari.mp3',
                );
                return right<AyahFailure, File>(file);
              },
            ),
          );
    }
  }
}
