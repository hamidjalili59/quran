import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:quran/src/features/ayah/data/data_sources/local/ayah_local_data_source.dart';
import 'package:quran/src/features/ayah/data/data_sources/remote/ayah_remote_data_source.dart';
import 'package:quran/src/features/ayah/data/repositories/ayah_repository_impl.dart';
import 'package:quran/src/features/ayah/domain/repositories/ayah_repository.dart';
import 'package:quran/src/features/ayah/domain/use_cases/get_audio_ayah_from_server_use_case.dart';
import 'package:quran/src/features/ayah/domain/use_cases/get_cached_ayah_data_use_case.dart';
import 'package:quran/src/injectable/injectable.dart';

@module
abstract class AyahFeatureModule {
  AyahRemoteDataSource get remoteDS => AyahRemoteDataSource(
        getIt.get<ApiService>(),
      );
  AyahLocalDataSource get localDS => AyahLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  AyahRepository get repo => AyahRepositoryImpl(remoteDS, localDS);

  GetCachedAyahDataUseCase get getCachedAyahDataUseCase =>
      GetCachedAyahDataUseCase(repo);
  GetAudioAyahFromServerUseCase get getAyahsUseCase =>
      GetAudioAyahFromServerUseCase(repo);
}
