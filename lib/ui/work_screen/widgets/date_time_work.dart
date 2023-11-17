import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../common/theme/app_colors.dart';

class DateTimeWork extends StatelessWidget {
  final DateTime dateTime;
  const DateTimeWork({
    super.key,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Дата начала',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              DateFormat('dd.MM.yyyy').format(dateTime),
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.blue),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Время',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              DateFormat('HH:mm').format(dateTime),
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.blue),
            ),
          ],
        ),
      ],
    );
  }
}
