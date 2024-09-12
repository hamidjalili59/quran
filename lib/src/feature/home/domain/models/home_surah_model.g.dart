// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_surah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeSurahImpl _$$HomeSurahImplFromJson(Map<String, dynamic> json) =>
    _$HomeSurahImpl(
      number: (json['number'] as num?)?.toInt(),
      name: json['name'] as String?,
      numberOfAyahs: (json['numberOfAyahs'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$HomeSurahImplToJson(_$HomeSurahImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'numberOfAyahs': instance.numberOfAyahs,
    };
