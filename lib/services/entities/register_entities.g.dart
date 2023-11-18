// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterEntities _$RegisterEntitiesFromJson(Map<String, dynamic> json) =>
    RegisterEntities(
      lastUpdated: DateTime.parse(json['time'] as String),
      tariffs: (json['tariffs'] as List<dynamic>)
          .map((e) => Tariff.fromJson(e as Map<String, dynamic>))
          .toList(),
      names: json['names'] as Map<String, dynamic>,
      registers: (json['cards'] as List<dynamic>)
          .map((e) => Register.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RegisterEntitiesToJson(RegisterEntities instance) =>
    <String, dynamic>{
      'time': instance.lastUpdated.toIso8601String(),
      'tariffs': instance.tariffs,
      'names': instance.names,
      'cards': instance.registers,
    };
