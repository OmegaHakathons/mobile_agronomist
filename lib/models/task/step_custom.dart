import 'package:freezed_annotation/freezed_annotation.dart';

import 'status_step.dart';

part 'step_custom.freezed.dart';

@freezed
class StepCustom with _$StepCustom {
  const factory StepCustom({
    required int index,
    required String name,
    required String description,
    required StatusStep status,
    String? comment,
  }) = _StepCustom;
}
