// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_surah.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentSurahImpl _$$CurrentSurahImplFromJson(Map<String, dynamic> json) =>
    _$CurrentSurahImpl(
      currentAyah: (json['currentAyah'] as num?)?.toInt() ?? 0,
      audioLink: json['audioLink'] as String? ?? '',
      surah: json['surah'],
      translate: json['translate'],
    );

Map<String, dynamic> _$$CurrentSurahImplToJson(_$CurrentSurahImpl instance) =>
    <String, dynamic>{
      'currentAyah': instance.currentAyah,
      'audioLink': instance.audioLink,
      'surah': instance.surah,
      'translate': instance.translate,
    };
