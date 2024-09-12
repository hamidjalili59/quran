import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran/src/feature/surah/domain/models/ayah_model.dart';

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
class Surah with _$Surah {
  ///adsasd
  factory Surah({
    int? number,
    String? name,
    int? numberOfAyahs,
    List<Ayah>? ayahs,
  }) = _Surah;

  ///das
  factory Surah.fromJson(Map<String, Object?> json) => _$SurahFromJson(json);
}
