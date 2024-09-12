// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahImpl _$$SurahImplFromJson(Map<String, dynamic> json) => _$SurahImpl(
      number: (json['number'] as num?)?.toInt(),
      name: json['name'] as String?,
      numberOfAyahs: (json['numberOfAyahs'] as num?)?.toInt(),
      ayahs: (json['ayahs'] as List<dynamic>?)
          ?.map((e) => Ayah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SurahImplToJson(_$SurahImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'numberOfAyahs': instance.numberOfAyahs,
      'ayahs': instance.ayahs?.map((e) => e.toJson()).toList(),
    };
