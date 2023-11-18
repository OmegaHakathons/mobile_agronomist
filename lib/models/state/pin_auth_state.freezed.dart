// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pin_auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PinAuthState {
  PinAuthStatus get pinStatus => throw _privateConstructorUsedError;
  String get pin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PinAuthStateCopyWith<PinAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinAuthStateCopyWith<$Res> {
  factory $PinAuthStateCopyWith(
          PinAuthState value, $Res Function(PinAuthState) then) =
      _$PinAuthStateCopyWithImpl<$Res, PinAuthState>;
  @useResult
  $Res call({PinAuthStatus pinStatus, String pin});
}

/// @nodoc
class _$PinAuthStateCopyWithImpl<$Res, $Val extends PinAuthState>
    implements $PinAuthStateCopyWith<$Res> {
  _$PinAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinStatus = null,
    Object? pin = null,
  }) {
    return _then(_value.copyWith(
      pinStatus: null == pinStatus
          ? _value.pinStatus
          : pinStatus // ignore: cast_nullable_to_non_nullable
              as PinAuthStatus,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PinAuthStateImplCopyWith<$Res>
    implements $PinAuthStateCopyWith<$Res> {
  factory _$$PinAuthStateImplCopyWith(
          _$PinAuthStateImpl value, $Res Function(_$PinAuthStateImpl) then) =
      __$$PinAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PinAuthStatus pinStatus, String pin});
}

/// @nodoc
class __$$PinAuthStateImplCopyWithImpl<$Res>
    extends _$PinAuthStateCopyWithImpl<$Res, _$PinAuthStateImpl>
    implements _$$PinAuthStateImplCopyWith<$Res> {
  __$$PinAuthStateImplCopyWithImpl(
      _$PinAuthStateImpl _value, $Res Function(_$PinAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pinStatus = null,
    Object? pin = null,
  }) {
    return _then(_$PinAuthStateImpl(
      pinStatus: null == pinStatus
          ? _value.pinStatus
          : pinStatus // ignore: cast_nullable_to_non_nullable
              as PinAuthStatus,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PinAuthStateImpl extends _PinAuthState {
  const _$PinAuthStateImpl(
      {this.pinStatus = PinAuthStatus.process, this.pin = ''})
      : super._();

  @override
  @JsonKey()
  final PinAuthStatus pinStatus;
  @override
  @JsonKey()
  final String pin;

  @override
  String toString() {
    return 'PinAuthState(pinStatus: $pinStatus, pin: $pin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PinAuthStateImpl &&
            (identical(other.pinStatus, pinStatus) ||
                other.pinStatus == pinStatus) &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pinStatus, pin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PinAuthStateImplCopyWith<_$PinAuthStateImpl> get copyWith =>
      __$$PinAuthStateImplCopyWithImpl<_$PinAuthStateImpl>(this, _$identity);
}

abstract class _PinAuthState extends PinAuthState {
  const factory _PinAuthState(
      {final PinAuthStatus pinStatus, final String pin}) = _$PinAuthStateImpl;
  const _PinAuthState._() : super._();

  @override
  PinAuthStatus get pinStatus;
  @override
  String get pin;
  @override
  @JsonKey(ignore: true)
  _$$PinAuthStateImplCopyWith<_$PinAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
