import 'package:ekzh/cubits/app_cubit.dart';
import 'package:ekzh/models/app_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/theme/app_colors.dart';
import '../../common/out_button.dart';

class NeedStartWork extends StatelessWidget {
  final String text;
  const NeedStartWork({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 20),
        OutButton(
            contentColor: AppColors.blue,
            fillColor: AppColors.white,
            text: 'Ввести данные',
            onTap: () {
              BlocProvider.of<AppCubit>(context).updateTab(AppTabs.work);
            }),
      ],
    );
  }
}
