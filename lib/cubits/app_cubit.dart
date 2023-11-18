import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../models/app_tabs.dart';
import '../models/state/app_state.dart';
import '../services/https_service.dart';
import '../services/reachability_service.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit(
    this.interbetRepo,
    // this.repository,
  ) : super(const AppState());

  final ReachabilityService interbetRepo;
  // final Repository repository;

  void updateTab(AppTabs newTab) {
    emit(state.copyWith(currentTab: newTab));
  }

  void logout() {
    emit(state.copyWith(isAuthorized: false));
  }

  Future<void> listenToConnectivity() async {
    interbetRepo.onStatusChange.listen((result) {
      if (result == InternetStatus.connected) {
        // repository.sendPendingRequests();
        emit(state.copyWith(isConnection: true));
      } else {
        emit(state.copyWith(isConnection: false));
      }
    });
  }

  Future tryAuth(String login, String password) async {
    try {
      log('Начали авторизовываться');
      final result = await HttpsService()
          .auth(email: login, pass: password, type: AuthType.password);
      log('Авторизовались');
      emit(state.copyWith(isAuthorized: true));
      return result;
    } catch (e) {
      emit(state.copyWith(isAuthorized: false));
    }
  }
}
