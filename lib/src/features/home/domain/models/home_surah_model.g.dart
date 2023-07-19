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
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HomeSurah(
      number: fields[0] == null ? 0 : fields[0] as int?,
      name: fields[1] == null ? '' : fields[1] as String?,
      numberOfAyahs: fields[2] == null ? 0 : fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, HomeSurah obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.number)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.numberOfAyahs);
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
