import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';

@freezed
class Car with _$Car {
  const factory Car({
    required int id,
    required String name,
    required String number,
  }) = _Car;
}
