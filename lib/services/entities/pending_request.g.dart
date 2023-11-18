// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_request.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PendingRequestAdapter extends TypeAdapter<_$PendingRequestImpl> {
  @override
  final int typeId = 200;

  @override
  _$PendingRequestImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$PendingRequestImpl(
      url: fields[0] as String,
      body: fields[1] as String,
      headers: fields[2] as String,
      id: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$PendingRequestImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.url)
      ..writeByte(1)
      ..write(obj.body)
      ..writeByte(2)
      ..write(obj.headers)
      ..writeByte(3)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PendingRequestAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
