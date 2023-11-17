import 'package:flutter/material.dart';

import '../../common/theme/app_colors.dart';

class OutButton extends StatelessWidget {
  final Color borderColor;
  final Color fillColor;
  final Color contentColor;
  final String text;
  final Function() onTap;
  const OutButton({
    super.key,
    this.borderColor = AppColors.blue,
    required this.contentColor,
    required this.fillColor,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: fillColor,
          border: Border.all(color: borderColor),
        ),
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(color: contentColor),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
