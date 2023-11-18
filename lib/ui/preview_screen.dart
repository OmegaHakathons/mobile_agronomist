import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/task/task.dart';
import 'work_screen/widgets/custom_stepper.dart';

class PreviewTask extends StatelessWidget {
  const PreviewTask({
    super.key,
    required this.task,
  });
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
        ],
      ),
      body: Stack(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 60, top: 16),
            // color: Colors.pink.withOpacity(0.2),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task.type.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Комментарий агронома в случае необходимости отображается в этом месте.',
                  ),
                  const SizedBox(height: 16),
                  MainInfoTask(task: task),
                  const SizedBox(height: 20),
                  CustomStepper(
                    steps: task.steps,
                    seperatorColor: const Color(0xffD2D5DF),
                    isExpandable: true,
                    showStepStatusWidget: true,
                    backgroundColor: Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 10,
              right: 12,
              left: 12,
              child: ElevatedButton(
                  onPressed: () {}, child: Text('Редактировать задание')))
        ],
      ),
    );
  }
}

class MainInfoTask extends StatelessWidget {
  const MainInfoTask({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Поле: ${task.field}'),
        Text('Техника: ${task.car.name}'),
        Text('Агрегат: ${task.aggregate.name}'),
        Text(
            'Дата выполнения: ${DateFormat('dd MMMM, EEEE', 'ru').format(task.deadline)}'),
      ],
    );
  }
}
