import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nfc_manager/nfc_manager.dart';

import '../../cubits/app_cubit.dart';
import '../../models/state/app_state.dart';
import '../../models/work.dart';
import 'widgets/function_off.dart';
import 'widgets/need_start_work.dart';
import 'widgets/nfc_instruction.dart';
import 'widgets/registry_update.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Timer? timer;
  bool isNfc = true;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 500), (Timer t) async {
      isNfc = await NfcManager.instance.isAvailable();
      setState(() {});
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: BlocBuilder<AppCubit, AppState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    if (!state.isConnection)
                      const FunctionOff(
                        text: 'Отсутствует подключение к интернету',
                      ),
                    const SizedBox(height: 8),
                    if (!isNfc)
                      const FunctionOff(
                        text: 'Выключена функция NFC',
                      ),
                    const SizedBox(height: 8),
                    RegistryUpdate(isConnect: state.isConnection),
                  ],
                ),
                if (state.currentWork != Work.process)
                  if (state.currentWork == Work.stop)
                    NeedStartWork(text: 'Начните смену и рейс!')
                  else
                    NeedStartWork(text: 'Начните рейс!')
                else
                  NFCInstruction(isOn: isNfc),
              ],
            );
            // },
            // );
          },
        ),
      ),
    );
  }
}
