// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_surah_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HomeSurahAdapter extends TypeAdapter<HomeSurah> {
  @override
  final int typeId = 5;

  @override
  HomeSurah read(BinaryReader reader) {
    return HomeSurah();
  }

  @override
  void write(BinaryWriter writer, HomeSurah obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeSurahAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeSurah _$$_HomeSurahFromJson(Map<String, dynamic> json) => _$_HomeSurah(
      number: json['number'] as int?,
      name: json['name'] as String?,
      numberOfAyahs: json['numberOfAyahs'] as int?,
    );

Map<String, dynamic> _$$_HomeSurahToJson(_$_HomeSurah instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'numberOfAyahs': instance.numberOfAyahs,
    };
