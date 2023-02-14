// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/interceptors/request_interceptor.dart' as _i13;
import '../features/home/data/data_sources/local/home_local_data_source.dart'
    as _i10;
import '../features/home/data/data_sources/remote/home_remote_data_source.dart'
    as _i11;
import '../features/home/domain/repositories/home_repository.dart' as _i12;
import '../features/home/domain/use_cases/cache_home_surah_data_use_case.dart'
    as _i3;
import '../features/home/domain/use_cases/get_cached_home_surah_data_use_case.dart'
    as _i5;
import '../features/home/domain/use_cases/get_home_surah_from_server_use_case.dart'
    as _i7;
import '../features/surah/data/data_sources/local/surah_local_data_source.dart'
    as _i15;
import '../features/surah/data/data_sources/remote/surah_remote_data_source.dart'
    as _i16;
import '../features/surah/domain/repositories/surah_repository.dart' as _i17;
import '../features/surah/domain/use_cases/cache_surah_data_use_case.dart'
    as _i4;
import '../features/surah/domain/use_cases/get_cached_surah_data_use_case.dart'
    as _i6;
import '../features/surah/domain/use_cases/get_surah_from_server_use_case.dart'
    as _i8;
import '../peresentation/home/bloc/home_bloc.dart' as _i9;
import '../peresentation/surah/bloc/surah_bloc.dart' as _i14;
import 'module_injection/features/home_feature_module.dart' as _i18;
import 'module_injection/features/surah_feature_module.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final homeFeatureModule = _$HomeFeatureModule();
  final surahFeatureModule = _$SurahFeatureModule();
  gh.factory<_i3.CacheHomeSurahDataUseCase>(
      () => homeFeatureModule.cacheHomeDataUseCase);
  gh.factory<_i4.CacheSurahDataUseCase>(
      () => surahFeatureModule.cacheSurahDataUseCase);
  gh.factory<_i5.GetCachedHomeSurahDataUseCase>(
      () => homeFeatureModule.getCachedHomeDataUseCase);
  gh.factory<_i6.GetCachedSurahDataUseCase>(
      () => surahFeatureModule.getCachedSurahDataUseCase);
  gh.factory<_i7.GetHomeSurahFromServerUseCase>(
      () => homeFeatureModule.getHomesUseCase);
  gh.factory<_i8.GetSurahFromServerUseCase>(
      () => surahFeatureModule.getSurahsUseCase);
  gh.factory<_i9.HomeBloc>(() => _i9.HomeBloc(
        get<_i3.CacheHomeSurahDataUseCase>(),
        get<_i5.GetCachedHomeSurahDataUseCase>(),
        get<_i7.GetHomeSurahFromServerUseCase>(),
      ));
  gh.factory<_i10.HomeLocalDataSource>(() => homeFeatureModule.localDS);
  gh.factory<_i11.HomeRemoteDataSource>(() => homeFeatureModule.remoteDS);
  gh.factory<_i12.HomeRepository>(() => homeFeatureModule.repo);
  gh.factory<_i13.RequestInterceptor>(() => _i13.RequestInterceptor());
  gh.factory<_i14.SurahBloc>(() => _i14.SurahBloc(
        get<_i4.CacheSurahDataUseCase>(),
        get<_i6.GetCachedSurahDataUseCase>(),
        get<_i8.GetSurahFromServerUseCase>(),
      ));
  gh.factory<_i15.SurahLocalDataSource>(() => surahFeatureModule.localDS);
  gh.factory<_i16.SurahRemoteDataSource>(() => surahFeatureModule.remoteDS);
  gh.factory<_i17.SurahRepository>(() => surahFeatureModule.repo);
  return get;
}

class _$HomeFeatureModule extends _i18.HomeFeatureModule {}

class _$SurahFeatureModule extends _i19.SurahFeatureModule {}
