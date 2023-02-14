part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.idle({@Default(false) bool isLoading}) = _Idle;
  const factory HomeState.dataIsAvailableInStorage({ListOfHomeSurah? listSurahs}) = _DataIsAvailableInStorage;
  const factory HomeState.getSurahsSuccess({ListOfHomeSurah? listSurahs}) =
      _GetSurahsSuccess;
  const factory HomeState.failure({
    HomeFailure? failure,
    @Default('') String message,
  }) = _Failure;
}
