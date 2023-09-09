part of 'surah_bloc.dart';

@freezed
class SurahEvent with _$SurahEvent {
  const factory SurahEvent.getSurah(int surahNumber) = _GetSurah;
  const factory SurahEvent.getSurahTranslate(int surahNumber) =
      _GetSurahTranslate;
  const factory SurahEvent.cacheSurahData(int surahNumber, Surah surah) =
      _CacheSurahData;
  const factory SurahEvent.checkSurahDataIsAvailable() =
      _CheckSurahDataIsAvailable;
  const factory SurahEvent.changeAyah(int ayahNumber, Surah surah,
      {Surah? translate,}) = _ChangeAyah;
}
