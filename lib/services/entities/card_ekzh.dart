import '/../services/entities/tariff.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

import 'register.dart';

part 'card_ekzh.freezed.dart';
part 'card_ekzh.g.dart';

@Freezed()
class CardEkzh with _$CardEkzh {
  @HiveType(typeId: 100, adapterName: 'CardAdapter')
  const factory CardEkzh({
    @HiveField(0) required int hash,
    @HiveField(1) required int birthdate,
    @HiveField(2) required int cardNumber,
    @HiveField(3) required int expirationDate,
    @HiveField(4) required Tariff tariff,
    @HiveField(5) required String name,
  }) = _CardEkzh;

  factory CardEkzh.fromRegister(
      Register register, Map<String, dynamic> names, List<Tariff> tariffs) {
    try {
      final tariff = tariffs.firstWhere((e) => register.tariffId == e.id,
          orElse: () => Tariff(name: "Полный", amount: 100, id: 0));
      return CardEkzh(
          hash: register.hash,
          birthdate: register.birthdate,
          cardNumber: register.cardNumber,
          expirationDate: register.expirationDate,
          tariff: tariff,
          name: names[register.hash.toString()] as String);
    } catch (e) {
      return CardEkzh(
          hash: 1,
          birthdate: 1,
          cardNumber: 1,
          expirationDate: 1,
          tariff: Tariff(name: "Полный", amount: 100, id: 0),
          name: "1234");
    }
  }
}
