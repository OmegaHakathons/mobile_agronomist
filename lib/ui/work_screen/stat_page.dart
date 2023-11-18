import 'package:agro_agro/models/task/aggregate.dart';
import 'package:agro_agro/models/task/car.dart';
import 'package:agro_agro/models/task/status_task.dart';
import 'package:agro_agro/models/task/task.dart';
import 'package:agro_agro/models/task/type_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/theme/app_colors.dart';
import '../../cubits/app_cubit.dart';
import '../../models/state/app_state.dart';
import '../../models/task/status_step.dart';
import '../../models/task/step_custom.dart';
import '../../models/work.dart';
import 'widgets/work_info.dart';

class StatPage extends StatelessWidget {
  const StatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Статистика')),
      backgroundColor: AppColors.white,
      body: Container(),
    );
  }
}

Task task = Task(
    id: 5,
    type: TypeTask.sowing,
    shortDescription:
        'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах.',
    steps: [
      StepCustom(
        index: 0,
        name: 'Осмотр Техники',
        description:
            'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих.',
        status: StatusStep.complete,
      ),
      StepCustom(
        index: 1,
        name: 'Пополнил запас топливо',
        description:
            'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих.',
        status: StatusStep.complete,
      ),
      StepCustom(
        index: 2,
        name: 'Дорога до поля',
        description: 'Описание задачи в общих чертах.',
        status: StatusStep.inprogress,
      ),
      StepCustom(
        index: 3,
        name: 'Посев',
        description:
            'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих.',
        status: StatusStep.upcoming,
      ),
    ],
    currentStep: 1,
    car: Car(id: 4, name: 'Машина', number: 'У123АМ777'),
    aggregate: Aggregate(id: 9, name: 'Агрегат', number: '6'),
    field: 'П-51 ',
    minSpeed: 8,
    maxSpeed: 12,
    deadline: DateTime.now(),
    status: StatusTask.process,
    executor: 'Иван Иванович');
