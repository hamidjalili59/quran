part of 'surah_bloc.dart';

@freezed
class SurahState with _$SurahState {
  const factory SurahState.idle({@Default(false) bool isLoading}) = _Idle;
  const factory SurahState.getSurahSuccess({Surah? surah, Surah? translate}) =
      _GetSurahSuccess;
  const factory SurahState.ayahIndex(
      {@Default(0) int currentAyah,
      Surah? surah,
      Surah? translate}) = _AyahIndex;
  const factory SurahState.failure({
    SurahFailure? failure,
    @Default('') String message,
  }) = _Failure;
}
