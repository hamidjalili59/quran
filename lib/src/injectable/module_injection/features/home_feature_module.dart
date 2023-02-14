import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:quran/src/features/home/data/data_sources/local/home_local_data_source.dart';
import 'package:quran/src/features/home/data/data_sources/remote/home_remote_data_source.dart';
import 'package:quran/src/features/home/data/repositories/home_repository_impl.dart';
import 'package:quran/src/features/home/domain/repositories/home_repository.dart';
import 'package:quran/src/features/home/domain/use_cases/cache_home_surah_data_use_case.dart';
import 'package:quran/src/features/home/domain/use_cases/get_cached_home_surah_data_use_case.dart';
import 'package:quran/src/features/home/domain/use_cases/get_home_surah_from_server_use_case.dart';
import 'package:quran/src/injectable/injectable.dart';

@module
abstract class HomeFeatureModule {
  HomeRemoteDataSource get remoteDS => HomeRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      );
  HomeLocalDataSource get localDS => HomeLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  HomeRepository get repo => HomeRepositoryImpl(remoteDS, localDS);

  CacheHomeSurahDataUseCase get cacheHomeDataUseCase =>
      CacheHomeSurahDataUseCase(repo);
  GetCachedHomeSurahDataUseCase get getCachedHomeDataUseCase =>
      GetCachedHomeSurahDataUseCase(repo);
  GetHomeSurahFromServerUseCase get getHomesUseCase =>
      GetHomeSurahFromServerUseCase(repo);
}
