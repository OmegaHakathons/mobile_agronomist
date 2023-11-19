import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../common/navigation/route_name.dart';
import '../../common/utils.dart';
import '../../cubits/app_cubit.dart';
import '../../data/mok.dart';
import '../../models/state/app_state.dart';
import '../../models/task/task.dart';
import 'widgets/function_off.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
          child: BlocBuilder<AppCubit, AppState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!state.isConnection)
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      child: FunctionOff(
                        text:
                            'Отсутствует подключение к интернету! Данные будут сохраняться локально до появления соединения',
                      ),
                    ),
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
              );
            },
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
            itemBuilder: (context, index) => TaskCard(task: allTasks[index]),
            separatorBuilder: (context, index) => SizedBox(height: 16),
            itemCount: allTasks.length)
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
                    color: getStatusColor(task.status)),
                child: Text(getTaskStatus(task.status)),
              )),
        ]),
      ),
    );
  }
}
