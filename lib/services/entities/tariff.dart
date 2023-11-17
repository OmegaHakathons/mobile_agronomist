import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

part 'tariff.freezed.dart';
part 'tariff.g.dart';

// https://stackoverflow.com/questions/60383178/combine-freezed-hive
@Freezed()
class Tariff with _$Tariff {

    @HiveType(typeId: 40, adapterName: 'TariffAdapter')
    const factory Tariff({
        @JsonKey(name: 'name')
        @HiveField(0)
        required String name,
        @JsonKey(name: 'amount')
        @HiveField(1)
        required int amount,
        @JsonKey(name: 'id')
        @HiveField(2)
        required int id,
      }) = _Tariff;

    factory Tariff.fromJson(Map<String, dynamic> json) => _$TariffFromJson(json);


}

