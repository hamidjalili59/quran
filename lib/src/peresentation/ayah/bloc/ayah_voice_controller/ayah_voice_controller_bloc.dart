import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran/src/features/ayah/domain/failures/ayah_failure.dart';
import 'package:quran/src/features/ayah/domain/use_cases/get_audio_ayah_from_server_use_case.dart';
import 'package:quran/src/features/core/models/tuple.dart' as tuple;
import 'package:quran/src/features/surah/domain/models/current_surah.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';
import 'package:quran/src/injectable/injectable.dart';
import 'package:quran/src/peresentation/surah/bloc/surah_bloc.dart';

part 'ayah_voice_controller_state.dart';
part 'ayah_voice_controller_event.dart';
part 'ayah_voice_controller_bloc.freezed.dart';

@lazySingleton
class AyahVoiceControllerBloc
    extends Bloc<AyahVoiceControllerEvent, AyahVoiceControllerState> {
  AyahVoiceControllerBloc(this._getAudioAyahFromServerUseCase)
      : super(const AyahVoiceControllerState.idle()) {
    on<_PlayAyah>(_onPlayAyah);
    on<_StopAyah>(_onStopAyah);
    on<_NextAyah>(_onNextAyah);
  }
  final GetAudioAyahFromServerUseCase _getAudioAyahFromServerUseCase;
  StreamSubscription<void>? _playerSubscription;

  FutureOr<void> _onPlayAyah(
    _PlayAyah event,
    Emitter<AyahVoiceControllerState> emit,
  ) async {
    try {
      await state.maybeWhen(
        orElse: () {},
        idle: (isLoading) async {
          emit(const AyahVoiceControllerState.playingAudio());
          final audio = await _getAudioAyahFromServerUseCase.call(
            param: tuple.Tuple4<int, String, Surah, String>(
              event.currentSurah.currentAyah,
              'abdolbaset',
              event.currentSurah.surah!,
              event.currentSurah.audioLink,
            ),
          );
          await audio.fold(
            (l) {
              emit(const AyahVoiceControllerState.idle());
            },
            (file) async {
              if (!getIt.isRegistered<AudioPlayer>()) {
                getIt.registerSingleton<AudioPlayer>(AudioPlayer());
              }
              if (file.existsSync()) {
                // Todo: unused_local_variable
                // Duration? audioDuration =
                await getIt.get<AudioPlayer>().setFilePath(file.path);
                await getIt.get<AudioPlayer>().play();
                _playerSubscription = getIt
                    .get<AudioPlayer>()
                    .playerStateStream
                    .listen((playerState) {
                  if (playerState.processingState ==
                      ProcessingState.completed) {
                    if (event.currentSurah.surah!.numberOfAyahs! >
                        event.currentSurah.currentAyah + 1) {
                      add(
                        AyahVoiceControllerEvent.nextAyah(
                          event.currentSurah.currentAyah + 1,
                          event.currentSurah.surah!,
                          event.currentSurah.translate!,
                        ),
                      );
                    } else {
                      add(const AyahVoiceControllerEvent.stopAyah());
                    }
                  }
                });
              }
            },
          );
        },
      );
    } catch (e) {
      emit(const AyahVoiceControllerState.idle());
    }
  }

  FutureOr<void> _onStopAyah(
    _StopAyah event,
    Emitter<AyahVoiceControllerState> emit,
  ) async {
    try {
      if (getIt.get<AudioPlayer>().playing) {
        await _playerSubscription!.cancel();
        await getIt.get<AudioPlayer>().pause();
        emit(const AyahVoiceControllerState.idle());
      }
    } catch (_) {}
  }

  FutureOr<void> _onNextAyah(
    _NextAyah event,
    Emitter<AyahVoiceControllerState> emit,
  ) {
    _playerSubscription!.cancel();
    emit(const AyahVoiceControllerState.idle());
    final link = event.surah.ayahs![event.ayahNumber].audio!;
    getIt.get<SurahBloc>().add(
          SurahEvent.changeAyah(
            event.ayahNumber,
            event.surah,
            translate: event.translate,
          ),
        );
    add(
      AyahVoiceControllerEvent.playAyah(
        CurrentSurah(
          currentAyah: event.ayahNumber,
          surah: event.surah,
          audioLink: link,
          translate: event.translate,
        ),
      ),
    );
  }
}
