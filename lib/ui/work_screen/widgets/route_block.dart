import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nfc_manager/nfc_manager.dart';

import '../../../common/theme/app_colors.dart';
import '../../../cubits/app_cubit.dart';
import '../../../models/work.dart';
import 'date_time_work.dart';
import '../../common/out_button.dart';
import 'route_info.dart';

class RouteBlock extends StatelessWidget {
  const RouteBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(color: AppColors.blueLight),
        Text(
          'Текущий рейс',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const Divider(color: AppColors.blueLight),
        const SizedBox(height: 10),
        OutButton(
          contentColor: AppColors.blue,
          fillColor: AppColors.white,
          text: 'Завершить рейс',
          onTap: () {
            NfcManager.instance.stopSession();
            BlocProvider.of<AppCubit>(context).stopRoute();
          },
        ),
        const SizedBox(height: 10),
        DateTimeWork(
          dateTime: DateTime(2023, 9, 15, 9, 1),
        ),
        const SizedBox(height: 8),
        RouteInfo(),
      ],
    );
  }
}
