part of 'ayah_voice_controller_bloc.dart';

@freezed
class AyahVoiceControllerState with _$AyahVoiceControllerState {
  const factory AyahVoiceControllerState.idle(
      {@Default(false) bool isLoading}) = _Idle;
  const factory AyahVoiceControllerState.dataIsAvailableInStorage() =
      _DataIsAvailableInStorage;
  const factory AyahVoiceControllerState.getAudioSuccess() = _GetAudioSuccess;
  const factory AyahVoiceControllerState.playingAudio() = _PlayingAudio;
  const factory AyahVoiceControllerState.failure({
    AyahFailure? failure,
    @Default('') String message,
  }) = _Failure;
}
