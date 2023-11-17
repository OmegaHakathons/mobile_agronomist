import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/location.dart';
import '../models/state/geo_state.dart';
import '../services/geo_service.dart';

class GeoCubit extends Cubit<GeoState> {
  final GeoService _locationService;
  // final PermissionCubit _permissionCubit;
  // final ApplicationLifeCycleCubit _applicationLifeCycleCubit;
  // StreamSubscription<LocationModel>? _userPositionSubscription;
  // StreamSubscription<List<PermissionState>>? _permissionStatePairSubscription;
  // StreamSubscription<List<ApplicationLifeCycleState>>?
  //     _appLifeCycleStatePairSubscription;
  GeoCubit(
    this._locationService,
    // this._permissionCubit,
    // this._applicationLifeCycleCubit,
  ) : super(GeoState.initial()) {
    // if (_permissionCubit.state.isLocationPermissionGrantedAndServicesEnabled) {
    //   _userPositionSubscription =
    //       _locationService.positionStream.listen(_userPositionListener);
    // }

    // _permissionStatePairSubscription = _permissionCubit.stream
    //     .startWith(_permissionCubit.state)
    //     .pairwise()
    //     .listen((pair) async {
    //   final previous = pair.first;
    //   final current = pair.last;
    //   if (previous.isLocationPermissionGrantedAndServicesEnabled !=
    //           current.isLocationPermissionGrantedAndServicesEnabled &&
    //       current.isLocationPermissionGrantedAndServicesEnabled) {
    //     await _userPositionSubscription?.cancel();
    //     _userPositionSubscription =
    //         _locationService.positionStream.listen(_userPositionListener);
    //   } else if (previous.isLocationPermissionGrantedAndServicesEnabled !=
    //           current.isLocationPermissionGrantedAndServicesEnabled &&
    //       !current.isLocationPermissionGrantedAndServicesEnabled) {
    //     _userPositionSubscription?.cancel();
    //   }
    // });

    // _appLifeCycleStatePairSubscription = _applicationLifeCycleCubit.stream
    //     .startWith(_applicationLifeCycleCubit.state)
    //     .pairwise()
    //     .listen((pair) async {
    //   final previous = pair.first;
    //   final current = pair.last;
    //   final isLocationPermissionGrantedAndServicesEnabled =
    //       _permissionCubit.state.isLocationPermissionGrantedAndServicesEnabled;
    //   if (previous.isResumed != current.isResumed &&
    //       current.isResumed &&
    //       isLocationPermissionGrantedAndServicesEnabled) {
    //     await _userPositionSubscription?.cancel();
    //     _userPositionSubscription =
    //         _locationService.positionStream.listen(_userPositionListener);
    //   } else if (previous.isResumed != current.isResumed &&
    //       !current.isResumed) {
    //     await _userPositionSubscription?.cancel();
    //   }
    // });
  }

  // @override
  // Future<void> close() {
  //   _userPositionSubscription?.cancel();
  //   _permissionStatePairSubscription?.cancel();
  //   _appLifeCycleStatePairSubscription?.cancel();

  //   return super.close();
  // }

  Future<void> getCurrentLocation() async {
    log('Начали получать ГЕО');
    final loc = await _locationService.getGeo();
    log('Получили ГЕО');
    Location location =
        Location(latitude: loc.latitude, longitude: loc.longitude);
    log('Позиция: ${location.latitude}, ${location.longitude}');
    emit(state.copyWith(userLocation: location));
  }
}
