import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'home_surah_model.freezed.dart';
part 'home_surah_model.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  fromJson: true,
  toJson: true,
  equal: true,
)

/// asd
@HiveType(typeId: 5)
class HomeSurah with _$HomeSurah {
  ///adsasd
  factory HomeSurah({
    @HiveField(0, defaultValue: 0) int? number,
    @HiveField(1, defaultValue: '') String? name,
    @HiveField(2, defaultValue: 0) int? numberOfAyahs,
  }) = _HomeSurah;

  ///das
  factory HomeSurah.fromJson(Map<String, Object?> json) =>
      _$HomeSurahFromJson(json);
}
