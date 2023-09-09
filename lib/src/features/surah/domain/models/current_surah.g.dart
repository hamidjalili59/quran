// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_surah.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CurrentSurahAdapter extends TypeAdapter<CurrentSurah> {
  @override
  final int typeId = 9;

  @override
  CurrentSurah read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CurrentSurah(
      currentAyah: fields[0] == null ? 0 : fields[0] as int,
      audioLink: fields[1] == null ? '' : fields[1] as String,
      surah: fields[2] as Surah?,
      translate: fields[3] as Surah?,
    );
  }

  @override
  void write(BinaryWriter writer, CurrentSurah obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.currentAyah)
      ..writeByte(1)
      ..write(obj.audioLink)
      ..writeByte(2)
      ..write(obj.surah)
      ..writeByte(3)
      ..write(obj.translate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrentSurahAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentSurah _$$_CurrentSurahFromJson(Map<String, dynamic> json) =>
    _$_CurrentSurah(
      currentAyah: json['currentAyah'] as int? ?? 0,
      audioLink: json['audioLink'] as String? ?? '',
      surah: json['surah'] == null
          ? null
          : Surah.fromJson(json['surah'] as Map<String, dynamic>),
      translate: json['translate'] == null
          ? null
          : Surah.fromJson(json['translate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CurrentSurahToJson(_$_CurrentSurah instance) =>
    <String, dynamic>{
      'currentAyah': instance.currentAyah,
      'audioLink': instance.audioLink,
      'surah': instance.surah,
      'translate': instance.translate,
    };
