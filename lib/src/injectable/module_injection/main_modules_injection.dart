import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:quran/src/config/routes/router.dart';
import 'package:quran/src/core/interceptors/auth_header_suplier.dart';
import 'package:quran/src/core/interceptors/request_interceptor.dart';
import 'package:quran/src/features/auth/domain/models/otp_verify_response.dart';
import 'package:quran/src/features/home/domain/models/home_surah_model.dart';
import 'package:quran/src/features/home/domain/models/list_of_surahs.dart';
import 'package:quran/src/features/surah/domain/models/ayah_model.dart';
import 'package:quran/src/features/surah/domain/models/current_surah.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';
import 'package:quran/src/injectable/injectable.dart';

class MainModulesInjection {
  MainModulesInjection() {
    getIt
      ..registerSingleton<Dio>(Dio())
      ..registerLazySingleton<ApiService>(
        () => ApiServiceImpl(
          interceptors: [getIt.get<RequestInterceptor>()],
          dio: getIt.get<Dio>(),
        ),
      )
      ..registerLazySingleton<DatabaseService>(
        DatabaseServiceImpl.new,
      )
      ..registerLazySingleton<AppRouter>(AppRouter.new)
      ..registerLazySingleton<AuthHeaderSupplier>(AuthHeaderSupplier.new);
  }

  //
  Future<void> initDatabase() async =>
      getIt.get<DatabaseService>().initialize();

  Future<void> registerHiveAdapters() async {
    final databaseService = getIt.get<DatabaseService>();

    await databaseService
        .registerAdapter<ListOfHomeSurah>(ListOfHomeSurahAdapter());
    await databaseService.registerAdapter<Surah>(SurahAdapter());
    await databaseService.registerAdapter<Ayah>(AyahAdapter());
    await databaseService.registerAdapter<HomeSurah>(HomeSurahAdapter());
    await databaseService.registerAdapter<CurrentSurah>(CurrentSurahAdapter());
    await databaseService
        .registerAdapter<OtpVerifyResponse>(OtpVerifyResponseAdapter());
  }
}
