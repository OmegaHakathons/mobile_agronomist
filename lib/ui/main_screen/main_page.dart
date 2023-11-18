import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

import '../../common/navigation/route_name.dart';
import '../../models/task/aggregate.dart';
import '../../models/task/car.dart';
import '../../models/task/status_step.dart';
import '../../models/task/status_task.dart';
import '../../models/task/step_custom.dart';
import '../../models/task/task.dart';
import '../../models/task/type_task.dart';
import '../work_screen/stat_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Task> historyTasks = [
    Task(
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
      deadline: DateTime(2023, 11, 16),
      status: StatusTask.process,
      executor: 'Иван Иванович',
      money: 1234,
    ),
    Task(
      id: 3,
      type: TypeTask.protection,
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
      deadline: DateTime(2023, 11, 10),
      status: StatusTask.process,
      executor: 'Иван Иванович',
      money: 935,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.notifications_none)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pushNamed(RouteName.addTask);
          },
          child: Icon(Icons.add),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  DateFormat('dd MMMM', 'ru').format(DateTime.now()),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 20),
              ImportantEvents(),
              const SizedBox(height: 24),
              Tasks(),
            ],
          ),
        ),
      ),
    );
  }
}

class Tasks extends StatelessWidget {
  const Tasks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Задачи механизаторов',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(hintText: 'Фильтр/Поиск'),
          ),
        ),
        TaksList(),
      ],
    );
  }
}

class ImportantEvents extends StatelessWidget {
  ImportantEvents({
    super.key,
  });

  final List<String> events = [
    'Техника RSM 3575 сломалась',
    'Механизатор Сидоров заболел'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Важные события'),
          const SizedBox(height: 16),
          ...List.generate(
            events.length,
            (index) => Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.red.shade100),
              child: Text(events[index]),
            ),
          ),
        ],
      ),
    );
  }
}

class TaksList extends StatelessWidget {
  const TaksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Все задачи'),
        const SizedBox(height: 12),
        ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => TaskCard(task: task),
            separatorBuilder: (context, index) => SizedBox(height: 16),
            itemCount: 3)
      ]),
    );
  }
}

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(RouteName.previewTask, extra: task);
      },
      child: Ink(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(task.type.name),
              const SizedBox(height: 12),
              Text('Поле: ${task.field}'),
              Text('Техника: ${task.car.name}'),
              Text('Приоритет: ДОБАВИТЬ'),
            ],
          ),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey),
                child: Text(task.status.name),
              )),
        ]),
      ),
    );
  }
}
