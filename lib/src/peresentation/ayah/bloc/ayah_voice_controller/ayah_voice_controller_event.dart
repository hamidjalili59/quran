part of 'ayah_voice_controller_bloc.dart';

@freezed
class AyahVoiceControllerEvent with _$AyahVoiceControllerEvent {
  const factory AyahVoiceControllerEvent.getAyahAudio(String ayahAudioLink) =
      _GetAyahAudio;
  const factory AyahVoiceControllerEvent.checkDataIsAvailable() =
      _CheckDataIsAvailable;
  const factory AyahVoiceControllerEvent.playAyah(CurrentSurah currentSurah) =
      _PlayAyah;
  const factory AyahVoiceControllerEvent.stopAyah() = _StopAyah;
  const factory AyahVoiceControllerEvent.nextAyah(
    int ayahNumber,
    Surah surah,
    Surah translate,
  ) = _NextAyah;
}
