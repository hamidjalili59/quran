import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_surah_model.freezed.dart';
part 'home_surah_model.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  fromJson: true,
  toJson: true,
  equal: true,
)
class HomeSurah with _$HomeSurah {
  ///adsasd
  factory HomeSurah({
    int? number,
    String? name,
    int? numberOfAyahs,
  }) = _HomeSurah;

  ///das
  factory HomeSurah.fromJson(Map<String, Object?> json) =>
      _$HomeSurahFromJson(json);
}
