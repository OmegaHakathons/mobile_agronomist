import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

import '/../services/entities/tariff.dart';
import 'register.dart';

part 'register_entities.g.dart';

@JsonSerializable()
class RegisterEntities {
  @JsonKey(name: "time")
  DateTime lastUpdated;
  @JsonKey(name: 'tariffs')
  final List<Tariff> tariffs;
  @JsonKey(name: 'names')
  final Map<String, dynamic> names;
  @JsonKey(name: 'cards')
  final List<Register> registers;

  RegisterEntities({
    required this.lastUpdated,
    required this.tariffs,
    required this.names,
    required this.registers,
  });

  factory RegisterEntities.fromServer(Map<String, dynamic> json) {
    final tariffs = json['tariffs'] as List<dynamic>;
    final finalTariffs = tariffs.map((e) => Tariff.fromJson(e)).toList();

    final registers = json['cards'] as List<dynamic>;
    final finalRegisters = registers.map((e) => Register.fromList(e)).toList();

    Map<String, dynamic> names;

    if (json['names'].runtimeType == List) {
      names = {};
    } else {
      names = json['names'] as Map<String, dynamic>;
    }

    return RegisterEntities(
      lastUpdated: DateTime.now(),
      tariffs: finalTariffs,
      names: names,
      registers: finalRegisters,
    );
  }

  factory RegisterEntities.fromJson(Map<String, dynamic> json) =>
      _$RegisterEntitiesFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterEntitiesToJson(this);
}
