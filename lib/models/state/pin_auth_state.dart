import 'package:freezed_annotation/freezed_annotation.dart';

import '../pin_auth_status.dart';

part 'pin_auth_state.freezed.dart';

@freezed
class PinAuthState with _$PinAuthState {
  const factory PinAuthState({
    @Default(PinAuthStatus.process) PinAuthStatus pinStatus,
    @Default('') String pin,
  }) = _PinAuthState;

  const PinAuthState._();
  int get getCountOfPin => pin.length;
}
