import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:quran/src/features/home/domain/models/home_surah_model.dart';

part 'list_of_surahs.freezed.dart';
part 'list_of_surahs.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  fromJson: true,
  toJson: true,
  equal: true,
)

/// asd
@HiveType(typeId: 6)
class ListOfHomeSurah with _$ListOfHomeSurah {
  ///adsasd
  factory ListOfHomeSurah({
    @HiveField(0, defaultValue: List) List<HomeSurah>? listSurahs,
  }) = _ListOfHomeSurah;

  ///das
  factory ListOfHomeSurah.fromJson(Map<String, Object?> json) =>
      _$ListOfHomeSurahFromJson(json);
}
