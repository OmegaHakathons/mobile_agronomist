import 'package:flutter/material.dart';

import '../../../common/theme/app_colors.dart';
import 'start_form.dart';

class BeginRoute extends StatelessWidget {
  const BeginRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Начало рейса',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          color: AppColors.blueLight,
        ),
        StartForm(),
      ],
    );
  }
}
