import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../cubits/app_cubit.dart';
import '../../../models/state/app_state.dart';
import '../../../models/task/task.dart';
import '../../../models/work.dart';

// ТЕКУЩАЯ ЗАДАЧА https://www.figma.com/file/dlOFTpqa0UdhqnVFrr4lXo/AgroCode-Hack-2023?type=design&node-id=3-118&mode=design&t=Lix5SUju198xPIEH-0
class WorkInfo extends StatelessWidget {
  const WorkInfo({
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 28),
              width: double.infinity,
              color: Colors.grey.shade400,
              child: Text(
                task.type.name,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${task.currentStep! + 1} из ${task.steps.length}'),
                  const SizedBox(height: 4),
                  Text(
                    task.steps[task.currentStep!].name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  Text(task.steps[task.currentStep!].description),
                  Expanded(
                      child: Center(
                    child: Text('ДОП ИНФА'),
                  )),
                  SizedBox(
                    width: double.infinity,
                    child:
                        ElevatedButton(onPressed: () {}, child: Text('Готово')),
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: Text('Не могу завершить')),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
