import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../common/navigation/router.dart';
import '../common/theme/light_theme.dart';
import '../cubits/card_cubit.dart';
import '../cubits/geo_cubit.dart';
import '../cubits/pin_auth_cubit.dart';
import '../cubits/app_cubit.dart';
import '../services/geo_service.dart';
import '../services/local_storage.dart';
import '../services/reachability_service.dart';
import '../services/repository.dart';

class App extends StatelessWidget {
  const App({super.key});

  // const App({super.key, required CardRepository cardRepository})
  //     : _cardRepository = cardRepository;
  // final CardRepository _cardRepository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppCubit>(
          create: (_) => AppCubit(
            ReachabilityService(),
            // Repository(),
          )..listenToConnectivity(),
        ),
        // BlocProvider<GeoCubit>(
        //   create: (_) => GeoCubit(GeoService()),
        // ),
        BlocProvider<PinAuthCubit>(
          create: (_) => PinAuthCubit(),
        ),
        // BlocProvider<CardCubit>(
        //     create: (_) => CardCubit(cardRepository: _cardRepository)),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Механизатор',
        theme: themeLight,
        routerConfig: router,
      ),
    );
  }
}
