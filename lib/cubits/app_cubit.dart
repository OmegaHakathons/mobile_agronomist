import 'dart:async';
import 'dart:developer';

import 'package:ekzh/services/https_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../models/app_tabs.dart';
import '../models/state/app_state.dart';
import '../models/work.dart';
import '../services/reachability_service.dart';
import '../services/repository.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit(this.interbetRepo, this.repository) : super(const AppState());

  final ReachabilityService interbetRepo;
  final Repository repository;

  void updateTab(AppTabs newTab) {
    emit(state.copyWith(currentTab: newTab));
  }

  void updateWork(Work newWork) {
    emit(state.copyWith(currentWork: newWork));
  }

  void logout() {
    emit(state.copyWith(isAuthorized: false));
  }

  Future<void> listenToConnectivity() async {
    interbetRepo.onStatusChange.listen((result) {
      if (result == InternetStatus.connected) {
        repository.sendPendingRequests();
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

  Future<void> startShift() async {
    log('Начали стартовать СМЕНУ');
    await HttpsService().startShift();
    log('Стартовали СМЕНУ');
    emit(state.copyWith(currentWork: Work.paused));
  }

  Future<void> startRoute({
    required String vehicleNumber,
    required int busRouteId,
    required double lat,
    required double lng,
  }) async {
    log('Начали стартовать МАРШРУТ');
    await HttpsService().startRoute(
      busRouteId: busRouteId,
      lat: lat,
      lng: lng,
      vehicleNumber: vehicleNumber,
    );
    log('Стартовали МАРШРУТ');
    emit(state.copyWith(currentWork: Work.process));
  }

  Future<void> stopShift() async {
    log('Начали завершать СМЕНУ');
    await stopRoute();
    await HttpsService().stopShift();
    log('Завершили СМЕНУ');
    emit(state.copyWith(currentWork: Work.stop));
  }

  Future<void> stopRoute() async {
    log('Начали завершать МАРШРУТ');
    await HttpsService().stopRoute();
    log('Завершили МАРШРУТ');
    emit(state.copyWith(currentWork: Work.paused));
  }
}
