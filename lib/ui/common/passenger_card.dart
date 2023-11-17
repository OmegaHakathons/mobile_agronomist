import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../common/theme/app_colors.dart';
import '../../common/utils.dart';
import '../../services/entities/card_ekzh.dart';
import 'wrapper.dart';

class PassengerCard extends StatelessWidget {
  final CardEkzh passenger;
  const PassengerCard({super.key, required this.passenger});

  @override
  Widget build(BuildContext context) {
    final int age = DateTime.now()
            .difference(
                DateTime.fromMicrosecondsSinceEpoch(passenger.birthdate))
            .inDays ~/
        365;
    final String nubmerOfCard =
        '****-****-****-${passenger.cardNumber.toString().substring(12, 16)}';
    return Wrapper(
        margin: 0,
        color: AppColors.blueLighter,
        child: Column(
          children: [
            Text(
              passenger.name,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            Text(
              '$age ${getWordOrg(age, "год", "года", "лет")}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              DateFormat('dd.MM.yyyy').format(
                  DateTime.fromMicrosecondsSinceEpoch(passenger.birthdate)),
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 18),
            const Text('Тариф:'),
            Text(
              passenger.tariff.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 18),
            Text(nubmerOfCard),
            Text(
              'до ${DateFormat('dd.MM.yyyy').format(DateTime.fromMicrosecondsSinceEpoch(passenger.expirationDate))}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ));
  }
}
