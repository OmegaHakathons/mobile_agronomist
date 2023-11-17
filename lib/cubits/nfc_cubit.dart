import 'dart:developer';

import 'package:ekzh/common/navigation/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nfc_manager/nfc_manager.dart';

import '../models/state/nfc_state.dart';
import 'app_cubit.dart';

class NfcCubit extends Cubit<NfcState> {
  final AppCubit _uiCubit;
  NfcCubit(this._uiCubit)
      : super(NfcState(
          isOn: NfcManager.instance.isAvailable().then((value) => value),
          data: {},
        ));

  Future<void> listen(BuildContext context) async {
    log('ЗАПУСТИЛИ ПРОСЛУШКУ nfc');

    // bool isAuth = false;
    // _uiCubit.stream.listen((event) {
    //   isAuth = event.isAuthorized;
    // });
    NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {
      log(tag.data.toString());
      emit(state.copyWith(data: tag.data));
      if (_uiCubit.state.isAuthorized) {
        context.goNamed(RouteName.passenger);
      } else {
        context.goNamed(RouteName.pin);
      }
    });
  }
}
