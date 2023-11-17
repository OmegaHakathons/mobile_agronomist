import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nfc_manager/nfc_manager.dart';

import '../../../common/theme/app_colors.dart';
import '../../../cubits/app_cubit.dart';
import '../../../models/work.dart';
import 'date_time_work.dart';
import '../../common/out_button.dart';

class ShiftBlock extends StatelessWidget {
  const ShiftBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Смена #999',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const Divider(color: AppColors.blueLight),
        const SizedBox(height: 10),
        OutButton(
          contentColor: AppColors.blue,
          fillColor: AppColors.white,
          text: 'Завершить смену',
          onTap: () {
            NfcManager.instance.stopSession();
            BlocProvider.of<AppCubit>(context).stopShift();
          },
        ),
        const SizedBox(height: 10),
        DateTimeWork(
          dateTime: DateTime(2023, 9, 15, 8, 42),
        ),
      ],
    );
  }
}
