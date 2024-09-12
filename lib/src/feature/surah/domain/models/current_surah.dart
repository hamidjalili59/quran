import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_surah.freezed.dart';
part 'current_surah.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  fromJson: true,
  toJson: true,
  equal: true,
)

/// asd
class CurrentSurah with _$CurrentSurah {
  ///adsasd
  factory CurrentSurah({
    @Default(0) int currentAyah,
    @Default('') String audioLink,
    surah,
    translate,
  }) = _CurrentSurah;

  ///das
  factory CurrentSurah.fromJson(Map<String, Object?> json) =>
      _$CurrentSurahFromJson(json);
}
