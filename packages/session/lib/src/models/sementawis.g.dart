// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sementawis.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SementawisAdapter extends TypeAdapter<Sementawis> {
  @override
  final int typeId = 1;

  @override
  Sementawis read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Sementawis(
      type: fields[0] as String,
      code: fields[1] as String,
      registeredAt: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Sementawis obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.code)
      ..writeByte(2)
      ..write(obj.registeredAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SementawisAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
