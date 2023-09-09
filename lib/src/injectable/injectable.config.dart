// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas, cascade_invocations
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:quran/src/core/interceptors/request_interceptor.dart' as _i21;
import 'package:quran/src/features/ayah/data/data_sources/local/ayah_local_data_source.dart'
    as _i3;
import 'package:quran/src/features/ayah/data/data_sources/remote/ayah_remote_data_source.dart'
    as _i4;
import 'package:quran/src/features/ayah/domain/repositories/ayah_repository.dart'
    as _i5;
import 'package:quran/src/features/ayah/domain/use_cases/get_audio_ayah_from_server_use_case.dart'
    as _i9;
import 'package:quran/src/features/ayah/domain/use_cases/get_cached_ayah_data_use_case.dart'
    as _i10;
import 'package:quran/src/features/home/data/data_sources/local/home_local_data_source.dart'
    as _i18;
import 'package:quran/src/features/home/data/data_sources/remote/home_remote_data_source.dart'
    as _i19;
import 'package:quran/src/features/home/domain/repositories/home_repository.dart'
    as _i20;
import 'package:quran/src/features/home/domain/use_cases/cache_home_surah_data_use_case.dart'
    as _i6;
import 'package:quran/src/features/home/domain/use_cases/get_cached_home_surah_data_use_case.dart'
    as _i11;
import 'package:quran/src/features/home/domain/use_cases/get_home_surah_from_server_use_case.dart'
    as _i14;
import 'package:quran/src/features/surah/data/data_sources/local/surah_local_data_source.dart'
    as _i23;
import 'package:quran/src/features/surah/data/data_sources/local/surah_translate_data_source.dart'
    as _i26;
import 'package:quran/src/features/surah/data/data_sources/remote/surah_remote_data_source.dart'
    as _i24;
import 'package:quran/src/features/surah/domain/repositories/surah_repository.dart'
    as _i25;
import 'package:quran/src/features/surah/domain/use_cases/cache_surah_data_use_case.dart'
    as _i7;
import 'package:quran/src/features/surah/domain/use_cases/cache_surah_translate_use_case.dart'
    as _i8;
import 'package:quran/src/features/surah/domain/use_cases/get_cached_surah_data_use_case.dart'
    as _i12;
import 'package:quran/src/features/surah/domain/use_cases/get_cached_surah_translate_data_use_case.dart'
    as _i13;
import 'package:quran/src/features/surah/domain/use_cases/get_surah_from_server_use_case.dart'
    as _i15;
import 'package:quran/src/features/surah/domain/use_cases/get_surah_translate_from_server_use_case.dart'
    as _i16;
import 'package:quran/src/injectable/module_injection/features/ayah_feature_module.dart'
    as _i28;
import 'package:quran/src/injectable/module_injection/features/home_feature_module.dart'
    as _i29;
import 'package:quran/src/injectable/module_injection/features/surah_feature_module.dart'
    as _i30;
import 'package:quran/src/peresentation/ayah/bloc/ayah_voice_controller/ayah_voice_controller_bloc.dart'
    as _i27;
import 'package:quran/src/peresentation/home/bloc/home_bloc.dart' as _i17;
import 'package:quran/src/peresentation/surah/bloc/surah_bloc.dart' as _i22;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final ayahFeatureModule = _$AyahFeatureModule();
    final homeFeatureModule = _$HomeFeatureModule();
    final surahFeatureModule = _$SurahFeatureModule();
    gh.factory<_i3.AyahLocalDataSource>(() => ayahFeatureModule.localDS);
    gh.factory<_i4.AyahRemoteDataSource>(() => ayahFeatureModule.remoteDS);
    gh.factory<_i5.AyahRepository>(() => ayahFeatureModule.repo);
    gh.factory<_i6.CacheHomeSurahDataUseCase>(
      () => homeFeatureModule.cacheHomeDataUseCase,
    );
    gh.factory<_i7.CacheSurahDataUseCase>(
      () => surahFeatureModule.cacheSurahDataUseCase,
    );
    gh.factory<_i8.CacheSurahTranslateDataUseCase>(
      () => surahFeatureModule.cacheSurahTranslateDataUseCase,
    );
    gh.factory<_i9.GetAudioAyahFromServerUseCase>(
      () => ayahFeatureModule.getAyahsUseCase,
    );
    gh.factory<_i10.GetCachedAyahDataUseCase>(
      () => ayahFeatureModule.getCachedAyahDataUseCase,
    );
    gh.factory<_i11.GetCachedHomeSurahDataUseCase>(
      () => homeFeatureModule.getCachedHomeDataUseCase,
    );
    gh.factory<_i12.GetCachedSurahDataUseCase>(
      () => surahFeatureModule.getCachedSurahDataUseCase,
    );
    gh.factory<_i13.GetCachedSurahTranslateDataUseCase>(
      () => surahFeatureModule.getCachedSurahTranslateDataUseCase,
    );
    gh.factory<_i14.GetHomeSurahFromServerUseCase>(
      () => homeFeatureModule.getHomesUseCase,
    );
    gh.factory<_i15.GetSurahFromServerUseCase>(
      () => surahFeatureModule.getSurahUseCase,
    );
    gh.factory<_i16.GetSurahTranslateFromServerUseCase>(
      () => surahFeatureModule.getSurahTranslateUseCase,
    );
    gh.lazySingleton<_i17.HomeBloc>(
      () => _i17.HomeBloc(
        gh<_i6.CacheHomeSurahDataUseCase>(),
        gh<_i11.GetCachedHomeSurahDataUseCase>(),
        gh<_i14.GetHomeSurahFromServerUseCase>(),
      ),
    );
    gh.factory<_i18.HomeLocalDataSource>(() => homeFeatureModule.localDS);
    gh.factory<_i19.HomeRemoteDataSource>(() => homeFeatureModule.remoteDS);
    gh.factory<_i20.HomeRepository>(() => homeFeatureModule.repo);
    gh.factory<_i21.RequestInterceptor>(() => _i21.RequestInterceptor());
    gh.lazySingleton<_i22.SurahBloc>(
      () => _i22.SurahBloc(
        gh<_i12.GetCachedSurahDataUseCase>(),
        gh<_i15.GetSurahFromServerUseCase>(),
        gh<_i7.CacheSurahDataUseCase>(),
        gh<_i13.GetCachedSurahTranslateDataUseCase>(),
        gh<_i8.CacheSurahTranslateDataUseCase>(),
        gh<_i16.GetSurahTranslateFromServerUseCase>(),
      ),
    );
    gh.factory<_i23.SurahLocalDataSource>(
      () => surahFeatureModule.localSurahDS,
    );
    gh.factory<_i24.SurahRemoteDataSource>(() => surahFeatureModule.remoteDS);
    gh.factory<_i25.SurahRepository>(() => surahFeatureModule.repo);
    gh.factory<_i26.SurahTranslateLocalDataSource>(
      () => surahFeatureModule.localTranslateDS,
    );
    gh.lazySingleton<_i27.AyahVoiceControllerBloc>(
      () =>
          _i27.AyahVoiceControllerBloc(gh<_i9.GetAudioAyahFromServerUseCase>()),
    );
    return this;
  }
}

class _$AyahFeatureModule extends _i28.AyahFeatureModule {}

class _$HomeFeatureModule extends _i29.HomeFeatureModule {}

class _$SurahFeatureModule extends _i30.SurahFeatureModule {}
