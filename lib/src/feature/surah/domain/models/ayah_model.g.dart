// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AyahImpl _$$AyahImplFromJson(Map<String, dynamic> json) => _$AyahImpl(
      number: (json['number'] as num?)?.toInt(),
      text: json['text'] as String?,
      numberInAyah: (json['numberInAyah'] as num?)?.toInt(),
      juz: (json['juz'] as num?)?.toInt(),
      manzil: (json['manzil'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      sajda: json['sajda'] as bool?,
      audio: json['audio'] as String?,
    );

Map<String, dynamic> _$$AyahImplToJson(_$AyahImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'text': instance.text,
      'numberInAyah': instance.numberInAyah,
      'juz': instance.juz,
      'manzil': instance.manzil,
      'page': instance.page,
      'sajda': instance.sajda,
      'audio': instance.audio,
    };
