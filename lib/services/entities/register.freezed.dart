// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Register _$RegisterFromJson(Map<String, dynamic> json) {
  return _Register.fromJson(json);
}

/// @nodoc
mixin _$Register {
// @JsonKey(name: 'hash')
  @HiveField(0)
  int get hash =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'birthdate')
  @HiveField(1)
  int get birthdate =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'card_number')
  @HiveField(2)
  int get cardNumber =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'expiration_date')
  @HiveField(3)
  int get expirationDate =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'tariff_id')
  @HiveField(4)
  int get tariffId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterCopyWith<Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCopyWith<$Res> {
  factory $RegisterCopyWith(Register value, $Res Function(Register) then) =
      _$RegisterCopyWithImpl<$Res, Register>;
  @useResult
  $Res call(
      {@HiveField(0) int hash,
      @HiveField(1) int birthdate,
      @HiveField(2) int cardNumber,
      @HiveField(3) int expirationDate,
      @HiveField(4) int tariffId});
}

/// @nodoc
class _$RegisterCopyWithImpl<$Res, $Val extends Register>
    implements $RegisterCopyWith<$Res> {
  _$RegisterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? birthdate = null,
    Object? cardNumber = null,
    Object? expirationDate = null,
    Object? tariffId = null,
  }) {
    return _then(_value.copyWith(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as int,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as int,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as int,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as int,
      tariffId: null == tariffId
          ? _value.tariffId
          : tariffId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res>
    implements $RegisterCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int hash,
      @HiveField(1) int birthdate,
      @HiveField(2) int cardNumber,
      @HiveField(3) int expirationDate,
      @HiveField(4) int tariffId});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$RegisterCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? birthdate = null,
    Object? cardNumber = null,
    Object? expirationDate = null,
    Object? tariffId = null,
  }) {
    return _then(_$RegisterImpl(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as int,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as int,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as int,
      expirationDate: null == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as int,
      tariffId: null == tariffId
          ? _value.tariffId
          : tariffId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 30, adapterName: 'RegisterAdapter')
class _$RegisterImpl with DiagnosticableTreeMixin implements _Register {
  const _$RegisterImpl(
      {@HiveField(0) required this.hash,
      @HiveField(1) required this.birthdate,
      @HiveField(2) required this.cardNumber,
      @HiveField(3) required this.expirationDate,
      @HiveField(4) required this.tariffId});

  factory _$RegisterImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterImplFromJson(json);

// @JsonKey(name: 'hash')
  @override
  @HiveField(0)
  final int hash;
// @JsonKey(name: 'birthdate')
  @override
  @HiveField(1)
  final int birthdate;
// @JsonKey(name: 'card_number')
  @override
  @HiveField(2)
  final int cardNumber;
// @JsonKey(name: 'expiration_date')
  @override
  @HiveField(3)
  final int expirationDate;
// @JsonKey(name: 'tariff_id')
  @override
  @HiveField(4)
  final int tariffId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Register(hash: $hash, birthdate: $birthdate, cardNumber: $cardNumber, expirationDate: $expirationDate, tariffId: $tariffId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Register'))
      ..add(DiagnosticsProperty('hash', hash))
      ..add(DiagnosticsProperty('birthdate', birthdate))
      ..add(DiagnosticsProperty('cardNumber', cardNumber))
      ..add(DiagnosticsProperty('expirationDate', expirationDate))
      ..add(DiagnosticsProperty('tariffId', tariffId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.tariffId, tariffId) ||
                other.tariffId == tariffId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, hash, birthdate, cardNumber, expirationDate, tariffId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterImplToJson(
      this,
    );
  }
}

abstract class _Register implements Register {
  const factory _Register(
      {@HiveField(0) required final int hash,
      @HiveField(1) required final int birthdate,
      @HiveField(2) required final int cardNumber,
      @HiveField(3) required final int expirationDate,
      @HiveField(4) required final int tariffId}) = _$RegisterImpl;

  factory _Register.fromJson(Map<String, dynamic> json) =
      _$RegisterImpl.fromJson;

  @override // @JsonKey(name: 'hash')
  @HiveField(0)
  int get hash;
  @override // @JsonKey(name: 'birthdate')
  @HiveField(1)
  int get birthdate;
  @override // @JsonKey(name: 'card_number')
  @HiveField(2)
  int get cardNumber;
  @override // @JsonKey(name: 'expiration_date')
  @HiveField(3)
  int get expirationDate;
  @override // @JsonKey(name: 'tariff_id')
  @HiveField(4)
  int get tariffId;
  @override
  @JsonKey(ignore: true)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
