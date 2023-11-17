import 'package:freezed_annotation/freezed_annotation.dart';

import '../location.dart';
part 'geo_state.freezed.dart';

@freezed
class GeoState with _$GeoState {
  const factory GeoState({
    required Location userLocation,
  }) = _GeoState;
  factory GeoState.initial() => GeoState(
        userLocation: Location.empty(),
      );
  const GeoState._();
  bool get isUserLocationReady => userLocation != Location.empty();
}
