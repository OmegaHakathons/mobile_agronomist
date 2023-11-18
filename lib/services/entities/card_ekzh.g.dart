// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_ekzh.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CardAdapter extends TypeAdapter<_$CardEkzhImpl> {
  @override
  final int typeId = 100;

  @override
  _$CardEkzhImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CardEkzhImpl(
      hash: fields[0] as int,
      birthdate: fields[1] as int,
      cardNumber: fields[2] as int,
      expirationDate: fields[3] as int,
      tariff: fields[4] as Tariff,
      name: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$CardEkzhImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.hash)
      ..writeByte(1)
      ..write(obj.birthdate)
      ..writeByte(2)
      ..write(obj.cardNumber)
      ..writeByte(3)
      ..write(obj.expirationDate)
      ..writeByte(4)
      ..write(obj.tariff)
      ..writeByte(5)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CardAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
