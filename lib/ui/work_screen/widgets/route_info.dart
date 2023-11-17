import 'package:flutter/material.dart';

import '../../../common/theme/app_colors.dart';

class RouteInfo extends StatelessWidget {
  const RouteInfo({
    super.key,
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
              'Номер Т/С',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              'АБ234В 51',
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
              'Маршрут',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              '250А',
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
