// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nfc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NfcState {
  Future<bool> get isOn => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NfcStateCopyWith<NfcState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NfcStateCopyWith<$Res> {
  factory $NfcStateCopyWith(NfcState value, $Res Function(NfcState) then) =
      _$NfcStateCopyWithImpl<$Res, NfcState>;
  @useResult
  $Res call({Future<bool> isOn, Map<String, dynamic> data});
}

/// @nodoc
class _$NfcStateCopyWithImpl<$Res, $Val extends NfcState>
    implements $NfcStateCopyWith<$Res> {
  _$NfcStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOn = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      isOn: null == isOn
          ? _value.isOn
          : isOn // ignore: cast_nullable_to_non_nullable
              as Future<bool>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NfcStateImplCopyWith<$Res>
    implements $NfcStateCopyWith<$Res> {
  factory _$$NfcStateImplCopyWith(
          _$NfcStateImpl value, $Res Function(_$NfcStateImpl) then) =
      __$$NfcStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Future<bool> isOn, Map<String, dynamic> data});
}

/// @nodoc
class __$$NfcStateImplCopyWithImpl<$Res>
    extends _$NfcStateCopyWithImpl<$Res, _$NfcStateImpl>
    implements _$$NfcStateImplCopyWith<$Res> {
  __$$NfcStateImplCopyWithImpl(
      _$NfcStateImpl _value, $Res Function(_$NfcStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOn = null,
    Object? data = null,
  }) {
    return _then(_$NfcStateImpl(
      isOn: null == isOn
          ? _value.isOn
          : isOn // ignore: cast_nullable_to_non_nullable
              as Future<bool>,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$NfcStateImpl implements _NfcState {
  const _$NfcStateImpl(
      {required this.isOn, required final Map<String, dynamic> data})
      : _data = data;

  @override
  final Future<bool> isOn;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'NfcState(isOn: $isOn, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NfcStateImpl &&
            (identical(other.isOn, isOn) || other.isOn == isOn) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isOn, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NfcStateImplCopyWith<_$NfcStateImpl> get copyWith =>
      __$$NfcStateImplCopyWithImpl<_$NfcStateImpl>(this, _$identity);
}

abstract class _NfcState implements NfcState {
  const factory _NfcState(
      {required final Future<bool> isOn,
      required final Map<String, dynamic> data}) = _$NfcStateImpl;

  @override
  Future<bool> get isOn;
  @override
  Map<String, dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$NfcStateImplCopyWith<_$NfcStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
