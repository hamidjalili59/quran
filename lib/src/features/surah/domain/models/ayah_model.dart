import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'ayah_model.freezed.dart';
part 'ayah_model.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  fromJson: true,
  toJson: true,
  equal: true,
)

/// asd
@HiveType(typeId: 7)
class Ayah with _$Ayah {
  ///adsasd
  factory Ayah({
    @HiveField(0) int? number,
    @HiveField(1) String? text,
    @HiveField(2) int? numberInAyah,
    @HiveField(3) int? juz,
    @HiveField(4) int? manzil,
    @HiveField(5) int? page,
    @HiveField(6) bool? sajda,
    @HiveField(7) String? audio,
  }) = _Ayah;

  ///das
  factory Ayah.fromJson(Map<String, Object?> json) => _$AyahFromJson(json);
}
