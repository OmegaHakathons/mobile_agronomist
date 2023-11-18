import 'package:freezed_annotation/freezed_annotation.dart';

part 'aggregate.freezed.dart';

@freezed
class Aggregate with _$Aggregate {
  const factory Aggregate({
    required int id,
    required String name,
    required String number,
  }) = _Aggregate;
}
