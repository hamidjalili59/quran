import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran/src/features/ayah/domain/failures/ayah_failure.dart';
import 'package:quran/src/features/ayah/domain/use_cases/get_audio_ayah_from_server_use_case.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';
import 'package:quran/src/features/core/models/tuple.dart' as tuple;
import 'package:quran/src/injectable/injectable.dart';

part 'ayah_voice_controller_state.dart';
part 'ayah_voice_controller_event.dart';
part 'ayah_voice_controller_bloc.freezed.dart';

@lazySingleton
class AyahVoiceControllerBloc
    extends Bloc<AyahVoiceControllerEvent, AyahVoiceControllerState> {
  final GetAudioAyahFromServerUseCase _getAudioAyahFromServerUseCase;
  AyahVoiceControllerBloc(this._getAudioAyahFromServerUseCase)
      : super(const AyahVoiceControllerState.idle()) {
    on<_PlayAyah>(_onPlayAyah);
  }

  FutureOr<void> _onPlayAyah(
      _PlayAyah event, Emitter<AyahVoiceControllerState> emit) async {
    print('playing ...');
    final audio = await _getAudioAyahFromServerUseCase.call(
      param: tuple.Tuple4<int, String, Surah, String>(
        event.ayahNumber,
        'abdolbaset',
        event.surah,
        event.link,
      ),
    );
    audio.fold(
      (l) {
        return null;
      },
      (file) async {
        if (!getIt.isRegistered<AudioPlayer>()) {
          getIt.registerSingleton<AudioPlayer>(AudioPlayer());
        }
        if (await file.exists()) {
          await getIt.get<AudioPlayer>().setFilePath(file.path);
          await getIt.get<AudioPlayer>().play();
          await getIt.get<AudioPlayer>().stop();
        }
      },
    );
  }
}
