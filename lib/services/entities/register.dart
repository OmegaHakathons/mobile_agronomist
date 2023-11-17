import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

part 'register.freezed.dart';
part 'register.g.dart';

// https://stackoverflow.com/questions/60383178/combine-freezed-hive
@Freezed()
class Register with _$Register {

    @HiveType(typeId: 30, adapterName: 'RegisterAdapter')
    const factory Register({
        // @JsonKey(name: 'hash')
        @HiveField(0)
        required int hash,
        // @JsonKey(name: 'birthdate')
        @HiveField(1)
        required int birthdate,
        // @JsonKey(name: 'card_number')
        @HiveField(2)
        required int cardNumber,
        // @JsonKey(name: 'expiration_date')
        @HiveField(3)
        required int expirationDate,
        // @JsonKey(name: 'tariff_id')
        @HiveField(4)
        required int tariffId,
      }) = _Register;


    factory Register.fromJson(Map<String, dynamic> json) => _$RegisterFromJson(json);
    
    factory Register.fromList(List<dynamic> json) {
      return Register(
        hash: json[0] as int, 
        birthdate: json[1] as int, 
        cardNumber: json[2] as int, 
        expirationDate: json[3] as int, 
        tariffId: json[4] as int,
        );
    }
}


