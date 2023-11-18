import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common/navigation/route_name.dart';
import '../../common/theme/app_colors.dart';
import '../../services/entities/card_ekzh.dart';
import '../common/out_button.dart';
import '../common/passenger_card.dart';

class PassengerPage extends StatelessWidget {
  final CardEkzh? passenger;
  const PassengerPage({
    super.key,
    this.passenger,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {
                    context.goNamed(RouteName.base);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: AppColors.blue,
                  )),
            ),
            passenger == null
                ? const Center(child: Text('Карты нет в системе'))
                : Builder(builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          right: 16, left: 16, top: 32, bottom: 12),
                      child: Column(
                        children: [
                          Text(
                            'Держатель ЕКЖ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const Divider(color: AppColors.blueLight),
                          const SizedBox(height: 12),
                          PassengerCard(
                            passenger: passenger!,
                          ),
                          const SizedBox(height: 12),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                context.goNamed(RouteName.base);
                              },
                              child: const Text('Информация верна'),
                            ),
                          ),
                          const SizedBox(height: 12),
                          OutButton(
                              borderColor: AppColors.error,
                              contentColor: AppColors.error,
                              fillColor: AppColors.white,
                              text: 'Сообщить о нарушении',
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Функция в разработке')));
                              }),
                        ],
                      ),
                    );
                  }),
          ],
        ),
      ),
    );
  }
}
