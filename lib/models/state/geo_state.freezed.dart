// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GeoState {
  Location get userLocation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeoStateCopyWith<GeoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoStateCopyWith<$Res> {
  factory $GeoStateCopyWith(GeoState value, $Res Function(GeoState) then) =
      _$GeoStateCopyWithImpl<$Res, GeoState>;
  @useResult
  $Res call({Location userLocation});

  $LocationCopyWith<$Res> get userLocation;
}

/// @nodoc
class _$GeoStateCopyWithImpl<$Res, $Val extends GeoState>
    implements $GeoStateCopyWith<$Res> {
  _$GeoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLocation = null,
  }) {
    return _then(_value.copyWith(
      userLocation: null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Location,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get userLocation {
    return $LocationCopyWith<$Res>(_value.userLocation, (value) {
      return _then(_value.copyWith(userLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GeoStateImplCopyWith<$Res>
    implements $GeoStateCopyWith<$Res> {
  factory _$$GeoStateImplCopyWith(
          _$GeoStateImpl value, $Res Function(_$GeoStateImpl) then) =
      __$$GeoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Location userLocation});

  @override
  $LocationCopyWith<$Res> get userLocation;
}

/// @nodoc
class __$$GeoStateImplCopyWithImpl<$Res>
    extends _$GeoStateCopyWithImpl<$Res, _$GeoStateImpl>
    implements _$$GeoStateImplCopyWith<$Res> {
  __$$GeoStateImplCopyWithImpl(
      _$GeoStateImpl _value, $Res Function(_$GeoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLocation = null,
  }) {
    return _then(_$GeoStateImpl(
      userLocation: null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Location,
    ));
  }
}

/// @nodoc

class _$GeoStateImpl extends _GeoState {
  const _$GeoStateImpl({required this.userLocation}) : super._();

  @override
  final Location userLocation;

  @override
  String toString() {
    return 'GeoState(userLocation: $userLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoStateImpl &&
            (identical(other.userLocation, userLocation) ||
                other.userLocation == userLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoStateImplCopyWith<_$GeoStateImpl> get copyWith =>
      __$$GeoStateImplCopyWithImpl<_$GeoStateImpl>(this, _$identity);
}

abstract class _GeoState extends GeoState {
  const factory _GeoState({required final Location userLocation}) =
      _$GeoStateImpl;
  const _GeoState._() : super._();

  @override
  Location get userLocation;
  @override
  @JsonKey(ignore: true)
  _$$GeoStateImplCopyWith<_$GeoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
