import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../services/entities/card_ekzh.dart';
import '../../ui/base_screen/base_page.dart';
import '../../ui/login_screen/login_page.dart';
import '../../ui/login_screen/pin_page.dart';
import '../../ui/passenger_screen/passenger_page.dart';
import '../../ui/qr_screen/qr_page.dart';
import 'route_name.dart';

final GoRouter router = GoRouter(
  initialLocation: RouteName.login,
  routes: <RouteBase>[
    GoRoute(
      name: RouteName.login,
      path: RouteName.login,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      name: RouteName.pin,
      path: '${RouteName.login}${RouteName.pin}',
      builder: (BuildContext context, GoRouterState state) {
        return const PinPage();
      },
    ),
    GoRoute(
      name: RouteName.base,
      path: RouteName.base,
      builder: (BuildContext context, GoRouterState state) {
        return const BasePage();
      },
    ),
    GoRoute(
      name: RouteName.qr,
      path: '${RouteName.base}/${RouteName.qr}',
      builder: (BuildContext context, GoRouterState state) {
        return const QrPage();
      },
    ),
    GoRoute(
      name: RouteName.passenger,
      path: RouteName.passenger,
      builder: (context, state) {
        CardEkzh card = state.extra as CardEkzh;
        return PassengerPage(passenger: card);
      },
    ),
  ],
);
