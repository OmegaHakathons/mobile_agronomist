import 'package:flutter/material.dart';

import '../../common/theme/app_colors.dart';

class Wrapper extends StatelessWidget {
  final Color color;
  final double margin;
  final double horizontalPadding;
  final double verticalPadding;
  final Widget child;
  const Wrapper({
    super.key,
    required this.child,
    this.color = AppColors.white,
    this.margin = 32,
    this.horizontalPadding = 24,
    this.verticalPadding = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      margin: EdgeInsets.all(margin),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}
