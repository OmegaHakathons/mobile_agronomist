import 'dart:developer';

import 'package:ekzh/models/app_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nfc_manager/nfc_manager.dart';
import '../../common/navigation/route_name.dart';
import '../../common/theme/app_colors.dart';
import '../../cubits/app_cubit.dart';
import '../../models/state/app_state.dart';
import '../../models/work.dart';
import '../main_screen/main_page.dart';
import '../work_screen/work_page.dart';
import 'widgets/qr_button.dart';

class BottomItem {
  final IconData icon;
  final String label;
  const BottomItem({
    required this.icon,
    required this.label,
  });
}

class BasePage extends StatelessWidget {
  const BasePage({super.key});

  final _bottomItems = const [
    BottomItem(icon: Icons.home, label: 'Главная'),
    BottomItem(icon: Icons.work_history_rounded, label: 'Смена'),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        int currentIndex = AppTabs.values.indexOf(state.currentTab);
        bool isStop = state.currentWork == Work.stop;
        return Scaffold(
          body: state.currentTab == AppTabs.main ? MainPage() : WorkPage(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton:
              state.currentWork == Work.process ? const QRButton() : null,
          bottomNavigationBar: BottomAppBar(
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        BlocProvider.of<AppCubit>(context)
                            .updateTab(AppTabs.main);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            _bottomItems[0].icon,
                            color: currentIndex == 0
                                ? AppColors.blue
                                : AppColors.greyDark,
                          ),
                          Text(
                            _bottomItems[0].label,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: currentIndex == 0
                                        ? AppColors.blue
                                        : AppColors.greyDark),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (!isStop) const Spacer(),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        BlocProvider.of<AppCubit>(context)
                            .updateTab(AppTabs.work);
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            _bottomItems[1].icon,
                            color: currentIndex == 1
                                ? AppColors.blue
                                : AppColors.greyDark,
                          ),
                          Text(
                            _bottomItems[1].label,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: currentIndex == 1
                                        ? AppColors.blue
                                        : AppColors.greyDark),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
