import '../models/task/aggregate.dart';
import '../models/task/car.dart';
import '../models/task/status_step.dart';
import '../models/task/status_task.dart';
import '../models/task/step_custom.dart';
import '../models/task/task.dart';
import '../models/task/type_task.dart';

List<Task> allTasks = [
  Task(
    id: 5,
    type: TypeTask.sowing,
    shortDescription:
        'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах.',
    steps: const [
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
        status: StatusStep.fail,
      ),
      StepCustom(
        index: 3,
        name: 'Посев',
        description:
            'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих.',
        status: StatusStep.upcoming,
      ),
    ],
    currentStep: 2,
    car: const Car(id: 4, name: 'Машина', number: 'У123АМ777'),
    aggregate: const Aggregate(id: 9, name: 'Агрегат', number: '6'),
    field: 'П-51 ff',
    minSpeed: 8,
    maxSpeed: 12,
    deadline: DateTime(2023, 11, 16),
    status: StatusTask.problem,
    executor: 'Иван Иванович',
    money: 1234,
  ),
  Task(
    id: 66,
    type: TypeTask.sowing,
    shortDescription:
        'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах.',
    steps: const [
      StepCustom(
        index: 0,
        name: 'Осмотр Техники',
        description:
            'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих.',
        status: StatusStep.upcoming,
      ),
      StepCustom(
        index: 1,
        name: 'Пополнил запас топливо',
        description:
            'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих.',
        status: StatusStep.upcoming,
      ),
      StepCustom(
        index: 2,
        name: 'Дорога до поля',
        description: 'Описание задачи в общих чертах.',
        status: StatusStep.upcoming,
      ),
      StepCustom(
        index: 3,
        name: 'Посев',
        description:
            'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих.',
        status: StatusStep.upcoming,
      ),
    ],
    car: const Car(id: 4, name: 'Машина', number: 'У123АМ777'),
    aggregate: const Aggregate(id: 9, name: 'Агрегат', number: '6'),
    field: 'А-121-АБ',
    minSpeed: 8,
    maxSpeed: 12,
    deadline: DateTime.now(),
    status: StatusTask.neww,
    executor: 'Иван Иванович',
  ),
  Task(
    id: 3,
    type: TypeTask.sowing,
    shortDescription:
        'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах.',
    steps: const [
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
        status: StatusStep.complete,
      ),
      StepCustom(
        index: 3,
        name: 'Посев',
        description:
            'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих.',
        status: StatusStep.complete,
      ),
    ],
    currentStep: null,
    car: const Car(id: 4, name: 'Машина', number: 'У123АМ777'),
    aggregate: const Aggregate(id: 9, name: 'Агрегат', number: '6'),
    field: 'A-51 53',
    minSpeed: 8,
    maxSpeed: 12,
    deadline: DateTime(2023, 11, 10),
    status: StatusTask.finish,
    executor: 'Иван Иванович',
    money: 935,
  ),
  Task(
    id: 33,
    type: TypeTask.sowing,
    shortDescription:
        'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах.',
    steps: const [
      StepCustom(
        index: 0,
        name: 'Осмотр Техники',
        description:
            'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих.',
        status: StatusStep.upcoming,
      ),
      StepCustom(
        index: 1,
        name: 'Дорога до поля',
        description: '',
        status: StatusStep.upcoming,
      ),
      StepCustom(
        index: 2,
        name: 'Работа в поле',
        description: 'Контроль качества работы',
        status: StatusStep.upcoming,
      ),
      StepCustom(
        index: 3,
        name: 'Возвращение на базу',
        description:
            'Осмотр и очистка\nСмазка и обслуживание\nПроверка электрических систем',
        status: StatusStep.upcoming,
      ),
      StepCustom(
        index: 4,
        name: 'Завершение задачи',
        description: '',
        status: StatusStep.upcoming,
      ),
    ],
    car: const Car(id: 4, name: 'Машина', number: 'У123АМ777'),
    aggregate: const Aggregate(id: 9, name: 'Агрегат', number: '6'),
    field: 'П-51',
    minSpeed: 8,
    maxSpeed: 12,
    deadline: DateTime.now(),
    status: StatusTask.neww,
    executor: 'Иван Иванович',
  ),
  Task(
    id: 12,
    type: TypeTask.tillage,
    shortDescription:
        'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах.',
    steps: const [
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
        status: StatusStep.inprogress,
      ),
      StepCustom(
        index: 2,
        name: 'Дорога до поля',
        description: 'Описание задачи в общих чертах.',
        status: StatusStep.upcoming,
      ),
      StepCustom(
        index: 3,
        name: 'Посев',
        description:
            'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих.',
        status: StatusStep.upcoming,
      ),
    ],
    car: const Car(id: 4, name: 'Машина', number: 'У123АМ777'),
    aggregate: const Aggregate(id: 9, name: 'Агрегат', number: '6'),
    field: 'П-51 ',
    minSpeed: 8,
    maxSpeed: 12,
    deadline: DateTime.now().add(const Duration(days: 1)),
    status: StatusTask.process,
    executor: 'Иван Иванович',
    currentStep: 1,
  ),
  Task(
    id: 98,
    type: TypeTask.sowing,
    shortDescription:
        'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах.',
    steps: const [
      StepCustom(
        index: 0,
        name: 'Осмотр Техники',
        description:
            'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих.',
        status: StatusStep.upcoming,
      ),
      StepCustom(
        index: 1,
        name: 'Пополнил запас топливо',
        description:
            'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих.',
        status: StatusStep.upcoming,
      ),
      StepCustom(
        index: 2,
        name: 'Дорога до поля',
        description: 'Описание задачи в общих чертах.',
        status: StatusStep.upcoming,
      ),
      StepCustom(
        index: 3,
        name: 'Посев',
        description:
            'Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих чертах. Описание задачи в общих.',
        status: StatusStep.upcoming,
      ),
    ],
    car: const Car(id: 4, name: 'Машина', number: 'У123АМ777'),
    aggregate: const Aggregate(id: 9, name: 'Агрегат', number: '6'),
    field: 'П-51 ',
    minSpeed: 8,
    maxSpeed: 12,
    deadline: DateTime.now().add(const Duration(days: 2)),
    status: StatusTask.neww,
    executor: 'Иван Иванович',
  ),
];
