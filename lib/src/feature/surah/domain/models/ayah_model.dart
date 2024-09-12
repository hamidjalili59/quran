import 'package:freezed_annotation/freezed_annotation.dart';

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
class Ayah with _$Ayah {
  ///adsasd
  factory Ayah({
    int? number,
    String? text,
    int? numberInAyah,
    int? juz,
    int? manzil,
    int? page,
    bool? sajda,
    String? audio,
  }) = _Ayah;

  ///das
  factory Ayah.fromJson(Map<String, Object?> json) => _$AyahFromJson(json);
}
