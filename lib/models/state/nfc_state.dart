import 'package:freezed_annotation/freezed_annotation.dart';

part 'nfc_state.freezed.dart';

@freezed
class NfcState with _$NfcState {
  const factory NfcState({
    required Future<bool> isOn,
    required Map<String, dynamic> data,
  }) = _NfcState;
}
