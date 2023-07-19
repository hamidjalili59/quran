// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_surahs.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ListOfHomeSurahAdapter extends TypeAdapter<ListOfHomeSurah> {
  @override
  final int typeId = 6;

  @override
  ListOfHomeSurah read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ListOfHomeSurah(
      listSurahs:
          fields[0] == null ? [] : (fields[0] as List?)?.cast<HomeSurah>(),
    );
  }

  @override
  void write(BinaryWriter writer, ListOfHomeSurah obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.listSurahs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListOfHomeSurahAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListOfHomeSurah _$$_ListOfHomeSurahFromJson(Map<String, dynamic> json) =>
    _$_ListOfHomeSurah(
      listSurahs: (json['listSurahs'] as List<dynamic>?)
          ?.map((e) => HomeSurah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListOfHomeSurahToJson(_$_ListOfHomeSurah instance) =>
    <String, dynamic>{
      'listSurahs': instance.listSurahs,
    };
