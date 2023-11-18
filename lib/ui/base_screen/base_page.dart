import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nfc_manager/nfc_manager.dart';
import '../../common/navigation/route_name.dart';
import '../../common/theme/app_colors.dart';
import '../../cubits/app_cubit.dart';
import '../../models/app_tabs.dart';
import '../../models/state/app_state.dart';
import '../../models/work.dart';
import '../calendar_screen/book_page.dart';
import '../main_screen/main_page.dart';
import '../work_screen/stat_page.dart';

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
    BottomItem(icon: Icons.book, label: 'Справочник'),
    BottomItem(icon: Icons.stacked_bar_chart_sharp, label: 'Статистика'),
  ];

  @override
  Widget build(BuildContext context) {
    log('перестраиваем base');
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        int currentIndex = AppTabs.values.indexOf(state.currentTab);
        return Scaffold(
          body: state.currentTab == AppTabs.statistics
              ? StatPage()
              : state.currentTab == AppTabs.book
                  ? BookPage()
                  : MainPage(),
          bottomNavigationBar: BottomAppBar(
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    _bottomItems.length,
                    (index) => Expanded(
                          child: InkWell(
                            onTap: () {
                              BlocProvider.of<AppCubit>(context)
                                  .updateTab(AppTabs.values[index]);
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  _bottomItems[index].icon,
                                  color: currentIndex == index
                                      ? AppColors.black
                                      : AppColors.greyDark,
                                ),
                                Text(
                                  _bottomItems[index].label,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          color: currentIndex == index
                                              ? AppColors.black
                                              : AppColors.greyDark),
                                ),
                              ],
                            ),
                          ),
                        )),
              ),
            ),
          ),
        );
      },
    );
  }
}
