// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_local_variable, non_constant_identifier_names

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
    return ListOfHomeSurah();
  }

  @override
  void write(BinaryWriter writer, ListOfHomeSurah obj) {
    writer.writeByte(0);
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
