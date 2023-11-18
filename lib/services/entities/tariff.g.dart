// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tariff.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TariffAdapter extends TypeAdapter<_$TariffImpl> {
  @override
  final int typeId = 40;

  @override
  _$TariffImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$TariffImpl(
      name: fields[0] as String,
      amount: fields[1] as int,
      id: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$TariffImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.amount)
      ..writeByte(2)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TariffAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TariffImpl _$$TariffImplFromJson(Map<String, dynamic> json) => _$TariffImpl(
      name: json['name'] as String,
      amount: json['amount'] as int,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$TariffImplToJson(_$TariffImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'id': instance.id,
    };
