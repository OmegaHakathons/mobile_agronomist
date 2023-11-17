import 'package:flutter/material.dart';

import '../../common/theme/app_colors.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/logo.png',
          height: 54,
        ),
        const SizedBox(width: 8),
        Expanded(
            child: Text(
          'Единая Карта Жителя Мурманской Области',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: AppColors.blue),
        )),
      ],
    );
  }
}
