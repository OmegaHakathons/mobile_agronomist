import 'package:flutter/material.dart';

import '../../common/theme/app_colors.dart';

class CostInfo extends StatelessWidget {
  final int fullCost;
  final double sale;
  const CostInfo({
    super.key,
    required this.fullCost,
    required this.sale,
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
              'Стоимость проезда',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              '$fullCost ₽',
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
              'Скидка',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              '$sale ₽',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.blue),
            ),
          ],
        ),
      ],
    );
    // return Column(
    //   children: [
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    // Text('Стоимость проезда'),
    // Text(
    //   '$fullCost ₽',
    //   // style: Theme.of(context).textTheme.titleLarge,
    // ),
    //       ],
    //     ),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    // Text('Скидка'),
    // Text(
    //   '$sale ₽',
    //   // style: Theme.of(context).textTheme.titleLarge,
    // ),
    //       ],
    //     ),
    //   ],
    // );
  }
}
