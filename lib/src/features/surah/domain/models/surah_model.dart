import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:quran/src/features/surah/domain/models/ayah_model.dart';

part 'surah_model.freezed.dart';
part 'surah_model.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  fromJson: true,
  toJson: true,
  equal: true,
)

/// asd
@HiveType(typeId: 8)
class Surah with _$Surah {
  ///adsasd
  factory Surah({
    @HiveField(0, defaultValue: 0) int? number,
    @HiveField(1, defaultValue: '') String? name,
    @HiveField(2, defaultValue: 0) int? numberOfAyahs,
    @HiveField(3, defaultValue: List) List<Ayah>? ayahs,
  }) = _Surah;

  ///das
  factory Surah.fromJson(Map<String, Object?> json) => _$SurahFromJson(json);
}
