import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../common/navigation/route_name.dart';
import '../../../common/theme/app_colors.dart';
import '../../../cubits/app_cubit.dart';
import 'start_form.dart';

class BeginWork extends StatelessWidget {
  const BeginWork({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Начало смены',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Divider(
            color: AppColors.blueLight,
          ),
          Text(
            'Васильев Иван',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          const StartForm(),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              BlocProvider.of<AppCubit>(context).logout();
              context.goNamed(RouteName.login);
            },
            child: const Text('Выйти'),
          ),
        ],
      ),
    );
  }
}
