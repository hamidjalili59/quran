import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:quran/src/features/surah/data/data_sources/local/surah_local_data_source.dart';
import 'package:quran/src/features/surah/data/data_sources/remote/surah_remote_data_source.dart';
import 'package:quran/src/features/surah/data/repositories/surah_repository_impl.dart';
import 'package:quran/src/features/surah/domain/repositories/surah_repository.dart';
import 'package:quran/src/features/surah/domain/use_cases/cache_surah_data_use_case.dart';
import 'package:quran/src/features/surah/domain/use_cases/get_cached_surah_data_use_case.dart';
import 'package:quran/src/features/surah/domain/use_cases/get_surah_from_server_use_case.dart';
import 'package:quran/src/injectable/injectable.dart';

@module
abstract class SurahFeatureModule {
  SurahRemoteDataSource get remoteDS => SurahRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      );
  SurahLocalDataSource get localDS => SurahLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  SurahRepository get repo => SurahRepositoryImpl(remoteDS, localDS);

  CacheSurahDataUseCase get cacheSurahDataUseCase =>
      CacheSurahDataUseCase(repo);
  GetCachedSurahDataUseCase get getCachedSurahDataUseCase =>
      GetCachedSurahDataUseCase(repo);
  GetSurahFromServerUseCase get getSurahsUseCase =>
      GetSurahFromServerUseCase(repo);
}
