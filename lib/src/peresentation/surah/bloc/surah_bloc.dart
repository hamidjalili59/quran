// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:quran/src/config/routes/router.dart';
import 'package:quran/src/config/utils/function_helper.dart';
import 'package:quran/src/features/surah/domain/failures/surah_failure.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';
import 'package:quran/src/features/surah/domain/use_cases/cache_surah_data_use_case.dart';
import 'package:quran/src/features/surah/domain/use_cases/get_cached_surah_data_use_case.dart';
import 'package:quran/src/features/surah/domain/use_cases/get_surah_from_server_use_case.dart';
import 'package:quran/src/features/core/models/tuple.dart' as tuple;
import 'package:quran/src/injectable/injectable.dart';

part 'surah_bloc.freezed.dart';
part 'surah_event.dart';
part 'surah_state.dart';

@injectable
class SurahBloc extends Bloc<SurahEvent, SurahState> {
  final CacheSurahDataUseCase _cacheSurahsDataUseCase;
  final GetCachedSurahDataUseCase _getCachedSurahDataUseCase;
  final GetSurahFromServerUseCase _getSurahFromServerUseCase;
  final AppRouter appRoute = getIt.get<AppRouter>();
  Surah currentSurah = Surah();
  SurahBloc(
    this._cacheSurahsDataUseCase,
    this._getCachedSurahDataUseCase,
    this._getSurahFromServerUseCase,
  ) : super(const _Idle()) {
    on<_GetSurah>(_onGetSurah);
    on<_ChangeAyah>(_onChangeAyah);
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
    emit(const _Idle(isLoading: true));
    try {
      final getSurahsResult = await _getSurahFromServerUseCase(
          param: tuple.Tuple1(event.surahNumber));
      await Future.delayed(const Duration(milliseconds: 150));
      getSurahsResult.fold(
        (l) {
          emit(_Failure(failure: l));
        },
        (r) async {
          currentSurah = r;
          // await _cacheSurahsDataUseCase(
          //     param: tuple.Tuple2(event.surahNumber, r));
          emit(_GetSurahSuccess(surah: r));
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

//
  FutureOr<void> _onChangeAyah(
    _ChangeAyah event,
    Emitter<SurahState> emit,
  ) async {
    emit(const _Idle(isLoading: true));
    emit(_AyahIndex(currentAyah: event.ayahNumber, surah: currentSurah));
    try {} catch (e) {
      FunctionHelper().logErrorDetailMessage(
        e,
        libraryName: 'change ayah error',
        bodyMessage: 'chack ayah error bloc _onChangeAyah method',
      );
      emit(_Failure(message: e.toString()));
    }
  }
}
