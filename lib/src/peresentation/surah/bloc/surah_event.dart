part of 'surah_bloc.dart';

@freezed
class SurahEvent with _$SurahEvent {
  const factory SurahEvent.getSurah(int surahNumber) = _GetSurah;
  const factory SurahEvent.cacheSurahData(int surahNumber,Surah surah) = _CacheSurahData;
  const factory SurahEvent.changeAyah(int ayahNumber) = _ChangeAyah;
}
