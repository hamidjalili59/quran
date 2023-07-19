part of 'home_bloc.dart';

@Freezed(when: FreezedWhenOptions(maybeWhen: true))
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getHomeSurahs() = _GetHomeSurahs;
  const factory HomeEvent.checkDataIsAvailable() = _CheckDataIsAvailable;
  const factory HomeEvent.openOneSurah(int surahNumber) = _OpenOneSurah;
}
