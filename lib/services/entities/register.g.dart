// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RegisterAdapter extends TypeAdapter<_$RegisterImpl> {
  @override
  final int typeId = 30;

  @override
  _$RegisterImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$RegisterImpl(
      hash: fields[0] as int,
      birthdate: fields[1] as int,
      cardNumber: fields[2] as int,
      expirationDate: fields[3] as int,
      tariffId: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$RegisterImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.hash)
      ..writeByte(1)
      ..write(obj.birthdate)
      ..writeByte(2)
      ..write(obj.cardNumber)
      ..writeByte(3)
      ..write(obj.expirationDate)
      ..writeByte(4)
      ..write(obj.tariffId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RegisterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterImpl _$$RegisterImplFromJson(Map<String, dynamic> json) =>
    _$RegisterImpl(
      hash: json['hash'] as int,
      birthdate: json['birthdate'] as int,
      cardNumber: json['cardNumber'] as int,
      expirationDate: json['expirationDate'] as int,
      tariffId: json['tariffId'] as int,
    );

Map<String, dynamic> _$$RegisterImplToJson(_$RegisterImpl instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'birthdate': instance.birthdate,
      'cardNumber': instance.cardNumber,
      'expirationDate': instance.expirationDate,
      'tariffId': instance.tariffId,
    };
