// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayat_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AyatModelAdapter extends TypeAdapter<AyatModel> {
  @override
  final int typeId = 0;

  @override
  AyatModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AyatModel(
      start: fields[1] as int,
      end: fields[2] as int,
      image: fields[3] as String,
      mp3File: fields[4] as String,
      surahName: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AyatModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.surahName)
      ..writeByte(1)
      ..write(obj.start)
      ..writeByte(2)
      ..write(obj.end)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.mp3File);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AyatModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
