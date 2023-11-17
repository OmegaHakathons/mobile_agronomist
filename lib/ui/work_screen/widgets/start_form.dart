import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../cubits/app_cubit.dart';
import '../../../cubits/geo_cubit.dart';
import '../../../models/app_tabs.dart';
import '../../../models/work.dart';

class StartForm extends StatefulWidget {
  const StartForm({super.key});

  @override
  State<StartForm> createState() => _StartFormFormState();
}

class _StartFormFormState extends State<StartForm> {
  late TextEditingController wayController;
  late TextEditingController transportController;
  late GlobalKey<FormState> formKey;
  @override
  void initState() {
    super.initState();
    wayController = TextEditingController()..text = '150A';
    transportController = TextEditingController()..text = 'x123xx777';
    formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    wayController.dispose();
    transportController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Номер маршрута'),
          const SizedBox(height: 8),
          TextFormField(
            controller: wayController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Введите номер маршрута';
              }
              return null;
            },
          ),
          const SizedBox(height: 12),
          const Text('Номер Т/С'),
          const SizedBox(height: 8),
          TextFormField(
            controller: transportController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Введите номер Т/С';
              }
              return null;
            },
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () async {
                  final geoCubit = BlocProvider.of<GeoCubit>(context);
                  final appCubit = BlocProvider.of<AppCubit>(context);
                  if (formKey.currentState!.validate()) {
                    await geoCubit.getCurrentLocation();
                    if (appCubit.state.currentWork == Work.stop) {
                      await appCubit.startShift();
                    }
                    await appCubit.startRoute(
                      vehicleNumber: transportController.text,
                      busRouteId: 21,
                      lat: geoCubit.state.userLocation.latitude,
                      lng: geoCubit.state.userLocation.longitude,
                    );
                    appCubit.updateTab(AppTabs.main);
                  }
                },
                child: const Text('Начать')),
          ),
        ],
      ),
    );
  }
}
