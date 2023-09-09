import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quran/src/config/routes/router.dart';
import 'package:quran/src/config/utils/function_helper.dart';
import 'package:quran/src/features/core/models/tuple.dart' as tuple;
import 'package:quran/src/features/home/domain/failures/home_failure.dart';
import 'package:quran/src/features/home/domain/models/list_of_surahs.dart';
import 'package:quran/src/features/home/domain/use_cases/cache_home_surah_data_use_case.dart';
import 'package:quran/src/features/home/domain/use_cases/get_cached_home_surah_data_use_case.dart';
import 'package:quran/src/features/home/domain/use_cases/get_home_surah_from_server_use_case.dart';
import 'package:quran/src/injectable/injectable.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this._cacheHomeSurahsDataUseCase,
    this._getCachedHomeSurahDataUseCase,
    this._getHomeSurahFromServerUseCase,
  ) : super(const _Idle()) {
    on<_GetHomeSurahs>(_onGetHomeSurahs);
    on<_OpenOneSurah>(_onOpenOneSurah);
    on<_CheckDataIsAvailable>(_onCheckDataIsAvailable);
    add(const _CheckDataIsAvailable());
  }
  final CacheHomeSurahDataUseCase _cacheHomeSurahsDataUseCase;
  final GetCachedHomeSurahDataUseCase _getCachedHomeSurahDataUseCase;
  final GetHomeSurahFromServerUseCase _getHomeSurahFromServerUseCase;
  final AppRouter appRoute = getIt.get<AppRouter>();

  @override
  void onEvent(HomeEvent event) {
    FunctionHelper().logMessage('>>>>> Auth Bloc event: $event');
    super.onEvent(event);
  }

//
  FutureOr<void> _onOpenOneSurah(
    _OpenOneSurah event,
    Emitter<HomeState> emit,
  ) async {
    await Future<void>.delayed(const Duration(milliseconds: 100))
        .whenComplete(() => appRoute.pushNamed('/surah'));
    // if (getIt.isRegistered<int>(instanceName: "SurahIndex")) {
    //   getIt.unregister<int>(instanceName: 'SurahIndex');
    //   getIt.registerSingleton<int>(event.surahNumber,
    //       instanceName: 'SurahIndex');
    // } else {
    //   getIt.registerSingleton<int>(event.surahNumber,
    //       instanceName: 'SurahIndex');
    // }
  }

  //
  FutureOr<void> _onCheckDataIsAvailable(
    _CheckDataIsAvailable event,
    Emitter<HomeState> emit,
  ) async {
    try {
      final getCachedSurahsResult = await _getCachedHomeSurahDataUseCase();
      await getCachedSurahsResult.fold(
        (l) async {
          emit(_Failure(failure: l));
        },
        (r) {
          if ((r.listSurahs ?? []).isEmpty) {
            emit(const _Failure());
          } else {
            emit(_DataIsAvailableInStorage(listSurahs: r));
          }
        },
      );
    } catch (e) {
      emit(_Failure(message: e.toString()));
    }
  }

//
  FutureOr<void> _onGetHomeSurahs(
    _GetHomeSurahs event,
    Emitter<HomeState> emit,
  ) async {
    final checkInternet = await Dio().get<void>('https://www.google.com');
    if (checkInternet.statusCode != 200) {
      emit(const _Failure(message: 'No Internet'));
    } else {
      emit(const _Idle(isLoading: true));
      try {
        final getSurahsResult = await _getHomeSurahFromServerUseCase();
        await Future<void>.delayed(const Duration(milliseconds: 150));
        getSurahsResult.fold(
          (l) {
            emit(_Failure(failure: l));
          },
          (r) {
            _cacheHomeSurahsDataUseCase(param: tuple.Tuple1(r));
            emit(_GetSurahsSuccess(listSurahs: r));
          },
        );
      } catch (e) {
        FunctionHelper().logErrorDetailMessage(
          e,
          libraryName: 'loginError',
          bodyMessage: 'check your login details',
        );
        emit(_Failure(message: e.toString()));
      }
    }
  }
}
