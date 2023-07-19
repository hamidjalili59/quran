// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SurahAdapter extends TypeAdapter<Surah> {
  @override
  final int typeId = 8;

  @override
  Surah read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Surah(
      number: fields[0] == null ? 0 : fields[0] as int?,
      name: fields[1] == null ? '' : fields[1] as String?,
      numberOfAyahs: fields[2] == null ? 0 : fields[2] as int?,
      ayahs: fields[3] == null ? [] : (fields[3] as List?)?.cast<Ayah>(),
    );
  }

  @override
  void write(BinaryWriter writer, Surah obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.number)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.numberOfAyahs)
      ..writeByte(3)
      ..write(obj.ayahs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurahAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Surah _$$_SurahFromJson(Map<String, dynamic> json) => _$_Surah(
      number: json['number'] as int?,
      name: json['name'] as String?,
      numberOfAyahs: json['numberOfAyahs'] as int?,
      ayahs: (json['ayahs'] as List<dynamic>?)
          ?.map((e) => Ayah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SurahToJson(_$_Surah instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'numberOfAyahs': instance.numberOfAyahs,
      'ayahs': instance.ayahs,
    };
