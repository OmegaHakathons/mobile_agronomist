import 'package:flutter/material.dart';

import '../../../common/theme/app_colors.dart';

class ButtonOfNumPad extends StatelessWidget {
  const ButtonOfNumPad({
    Key? key,
    required this.num,
    this.onPressed,
  }) : super(key: key);

  final int num;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: FloatingActionButton.extended(
        heroTag: num,
        elevation: 0,
        backgroundColor: AppColors.greyLight,
        onPressed: onPressed,
        label: Text(
          num.toString(),
          style: const TextStyle(color: AppColors.blue),
        ),
      ),
    );
  }
}
