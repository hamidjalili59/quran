import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:path_provider/path_provider.dart' as path;
import 'package:quran/src/feature/ayah/data/data_sources/remote/ayah_remote_data_source.dart';
import 'package:quran/src/feature/ayah/domain/failures/ayah_failure.dart';
import 'package:quran/src/feature/ayah/domain/repositories/ayah_repository.dart';
import 'package:quran/src/feature/surah/domain/models/surah_model.dart';

class AyahRepositoryImpl extends AyahRepository {
  AyahRepositoryImpl(this._remoteDS);
  final AyahRemoteDataSource _remoteDS;
  final String tokenFieldKey = 'token';



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
      return await _remoteDS
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
