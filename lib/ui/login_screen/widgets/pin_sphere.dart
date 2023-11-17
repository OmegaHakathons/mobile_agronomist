import 'package:flutter/material.dart';

import '../../../common/theme/app_colors.dart';

class PinSphere extends StatelessWidget {
  final bool input;
  final Color color;
  const PinSphere({
    Key? key,
    required this.input,
    this.color = AppColors.greenDark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: input ? color : null,
          border: Border.all(color: color, width: 2),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
