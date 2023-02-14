// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AyahAdapter extends TypeAdapter<Ayah> {
  @override
  final int typeId = 7;

  @override
  Ayah read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Ayah();
  }

  @override
  void write(BinaryWriter writer, Ayah obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AyahAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ayah _$$_AyahFromJson(Map<String, dynamic> json) => _$_Ayah(
      number: json['number'] as int?,
      text: json['text'] as String?,
      numberInAyah: json['numberInAyah'] as int?,
      juz: json['juz'] as int?,
      manzil: json['manzil'] as int?,
      page: json['page'] as int?,
    );

Map<String, dynamic> _$$_AyahToJson(_$_Ayah instance) => <String, dynamic>{
      'number': instance.number,
      'text': instance.text,
      'numberInAyah': instance.numberInAyah,
      'juz': instance.juz,
      'manzil': instance.manzil,
      'page': instance.page,
    };
