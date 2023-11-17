import 'dart:developer';

import 'package:ekzh/cubits/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nfc_manager/nfc_manager.dart';

import '../common/navigation/route_name.dart';
import '../models/app_tabs.dart';
import '../models/pin_auth_status.dart';
import '../models/state/pin_auth_state.dart';

const String curPin = '1236';

class PinAuthCubit extends Cubit<PinAuthState> {
  PinAuthCubit() : super(const PinAuthState());

  void addNum(int num, BuildContext context) async {
    String pin = state.pin + num.toString();
    if (pin.length < 4) {
      emit(PinAuthState(pin: pin, pinStatus: PinAuthStatus.process));
    } else if (pin == curPin) {
      emit(const PinAuthState(pin: '', pinStatus: PinAuthStatus.success));
      BlocProvider.of<AppCubit>(context).updateTab(AppTabs.work);

      context.goNamed(RouteName.base);
    } else {
      log('НЕВЕРНЫЙ ПИН');
      emit(PinAuthState(pin: pin, pinStatus: PinAuthStatus.failed));

      await Future.delayed(
        const Duration(seconds: 2),
        () => emit(const PinAuthState(pinStatus: PinAuthStatus.process)),
      );
    }
  }

  void removeNum() {
    String pin = state.pin;
    if (pin.isNotEmpty) {
      pin = state.pin.substring(0, state.pin.length - 1);
    }
    emit(PinAuthState(pin: pin, pinStatus: PinAuthStatus.process));
  }
}
