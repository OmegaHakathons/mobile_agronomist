import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/theme/app_colors.dart';

class FunctionOff extends StatelessWidget {
  final String text;
  const FunctionOff({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/warning.svg',
          color: AppColors.error,
        ),
        SizedBox(width: 8),
        Expanded(
            child: Text(
          text,
          style: TextStyle(color: AppColors.error),
        )),
      ],
    );
  }
}
