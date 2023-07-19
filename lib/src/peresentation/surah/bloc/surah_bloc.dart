// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quran/src/config/constants/general_constants.dart';

import 'package:quran/src/config/routes/router.dart';
import 'package:quran/src/config/utils/function_helper.dart';
import 'package:quran/src/features/surah/domain/failures/surah_failure.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';
import 'package:quran/src/features/surah/domain/use_cases/cache_surah_data_use_case.dart';
import 'package:quran/src/features/surah/domain/use_cases/cache_surah_translate_use_case.dart';
import 'package:quran/src/features/surah/domain/use_cases/get_cached_surah_data_use_case.dart';
import 'package:quran/src/features/surah/domain/use_cases/get_cached_surah_translate_data_use_case.dart';
import 'package:quran/src/features/surah/domain/use_cases/get_surah_from_server_use_case.dart';
import 'package:quran/src/features/core/models/tuple.dart' as tuple;
import 'package:quran/src/features/surah/domain/use_cases/get_surah_translate_from_server_use_case.dart';
import 'package:quran/src/injectable/injectable.dart';

part 'surah_bloc.freezed.dart';
part 'surah_event.dart';
part 'surah_state.dart';

@injectable
class SurahBloc extends Bloc<SurahEvent, SurahState> {
  final GetCachedSurahDataUseCase _getCachedSurahDataUseCase;
  final CacheSurahDataUseCase _cacheSurahDataUseCase;
  final GetSurahFromServerUseCase _getSurahFromServerUseCase;
  final GetCachedSurahTranslateDataUseCase _getCachedSurahTranslateDataUseCase;
  final CacheSurahTranslateDataUseCase _cacheSurahTranslateDataUseCase;
  final GetSurahTranslateFromServerUseCase _getSurahTranslateFromServerUseCase;
  final AppRouter appRoute = getIt.get<AppRouter>();
  SurahBloc(
    this._getCachedSurahDataUseCase,
    this._getSurahFromServerUseCase,
    this._cacheSurahDataUseCase,
    this._getCachedSurahTranslateDataUseCase,
    this._cacheSurahTranslateDataUseCase,
    this._getSurahTranslateFromServerUseCase,
  ) : super(const _Idle()) {
    on<_GetSurah>(_onGetSurah);
    on<_ChangeAyah>(_onChangeAyah);
    on<_CheckSurahDataIsAvailable>(_onCheckSurahDataAvailable);
    add(_CheckSurahDataIsAvailable());
  }

  @override
  void onEvent(SurahEvent event) {
    FunctionHelper().logMessage('>>>>> Auth Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

//
  FutureOr<void> _onGetSurah(
    _GetSurah event,
    Emitter<SurahState> emit,
  ) async {
    try {
      final checkInternet = await Dio().get('https://www.google.com');
      if (checkInternet.statusCode != 200) {
        emit(_Failure(message: 'No Internet'));
      } else {
        final getSurahsResult = await _getSurahFromServerUseCase(
            param: tuple.Tuple1(event.surahNumber));
        final getSurahTranslateResult =
            await _getSurahTranslateFromServerUseCase(
                param: tuple.Tuple1(event.surahNumber));
        getSurahsResult.fold(
          (l) {
            emit(_Failure(failure: l));
          },
          (r) {
            getSurahTranslateResult.fold(
              (l) => emit(_Failure(failure: l)),
              (tr) {
                _cacheSurahTranslateDataUseCase.call(
                    param: tuple.Tuple2(GeneralConstants.surahNumber, tr));
                _cacheSurahDataUseCase.call(
                    param: tuple.Tuple2(GeneralConstants.surahNumber, r));
                GeneralConstants.currentSurah = r;
                GeneralConstants.currentSurahTranslate = tr;
                emit(_GetSurahSuccess(
                  surah: GeneralConstants.currentSurah,
                  translate: GeneralConstants.currentSurahTranslate,
                ));
              },
            );
          },
        );
      }
    } catch (e) {
      FunctionHelper().logErrorDetailMessage(
        e,
        libraryName: 'loginError',
        bodyMessage: 'check your login details',
      );
      emit(_Failure(message: e.toString()));
    }
  }

//
  FutureOr<void> _onChangeAyah(
    _ChangeAyah event,
    Emitter<SurahState> emit,
  ) async {
    try {
      GeneralConstants.currentSurah = event.surah;
      GeneralConstants.currentSurahTranslate = event.translate;
      emit(_AyahIndex(
        currentAyah: event.ayahNumber,
        surah: event.surah,
        translate: event.translate,
      ));
    } catch (e) {
      FunctionHelper().logErrorDetailMessage(
        e,
        libraryName: 'change ayah error',
        bodyMessage: 'chack ayah error bloc _onChangeAyah method',
      );
    }
  }

  FutureOr<void> _onCheckSurahDataAvailable(
      _CheckSurahDataIsAvailable event, Emitter<SurahState> emit) async {
    try {
      final getCachedSurahsResult = await _getCachedSurahDataUseCase(
          param: tuple.Tuple1(GeneralConstants.surahNumber));
      final getCachedSurahTranslateResult =
          await _getCachedSurahTranslateDataUseCase(
              param: tuple.Tuple1(GeneralConstants.surahNumber));
      getCachedSurahsResult.fold(
        (l) async {
          emit(_Failure(failure: l));
        },
        (r) {
          getCachedSurahTranslateResult.fold(
            (l) => null,
            (tr) => emit(_GetSurahSuccess(surah: r, translate: tr)),
          );
        },
      );
    } catch (e) {
      emit(_Failure(message: e.toString()));
    }
  }
}
