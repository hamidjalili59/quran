part of 'ayah_voice_controller_bloc.dart';

@freezed
class AyahVoiceControllerEvent with _$AyahVoiceControllerEvent {
  const factory AyahVoiceControllerEvent.getAyahAudio(String ayahAudioLink) =
      _GetAyahAudio;
  const factory AyahVoiceControllerEvent.checkDataIsAvailable() =
      _CheckDataIsAvailable;
  const factory AyahVoiceControllerEvent.playAyah(
      int ayahNumber, Surah surah, String link) = _PlayAyah;
}
