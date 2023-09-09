import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:quran/src/features/surah/domain/models/surah_model.dart';

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
@HiveType(typeId: 9)
class CurrentSurah with _$CurrentSurah {
  ///adsasd
  factory CurrentSurah({
    @HiveField(0, defaultValue: 0) @Default(0) int currentAyah,
    @HiveField(1, defaultValue: '') @Default('') String audioLink,
    @HiveField(2) Surah? surah,
    @HiveField(3) Surah? translate,
  }) = _CurrentSurah;

  ///das
  factory CurrentSurah.fromJson(Map<String, Object?> json) =>
      _$CurrentSurahFromJson(json);
}
