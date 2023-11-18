import 'package:freezed_annotation/freezed_annotation.dart';

import 'aggregate.dart';
import 'car.dart';
import 'status_task.dart';

import 'step_custom.dart';
import 'type_task.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required int id,
    required TypeTask type,
    required String shortDescription,
    required List<StepCustom> steps,
    int? currentStep,
    required Car car,
    required Aggregate aggregate,
    required String field, // пока просто, в будущем класс с местоположением
    required int minSpeed,
    required int maxSpeed,
    int? depth,
    String? material,
    int? consumption,
    required DateTime deadline,
    required StatusTask status,
    required String executor, // ПЕРЕДЕЛАТЬ НА КЛАСС !!!!!!!!!!!!!!!!!!!!
    int? money,
  }) = _Task;
}
