// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_ekzh.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CardEkzh {
  @HiveField(0)
  int get hash => throw _privateConstructorUsedError;
  @HiveField(1)
  int get birthdate => throw _privateConstructorUsedError;
  @HiveField(2)
  int get cardNumber => throw _privateConstructorUsedError;
  @HiveField(3)
  int get expirationDate => throw _privateConstructorUsedError;
  @HiveField(4)
  Tariff get tariff => throw _privateConstructorUsedError;
  @HiveField(5)
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardEkzhCopyWith<CardEkzh> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardEkzhCopyWith<$Res> {
  factory $CardEkzhCopyWith(CardEkzh value, $Res Function(CardEkzh) then) =
      _$CardEkzhCopyWithImpl<$Res, CardEkzh>;
  @useResult
  $Res call(
      {@HiveField(0) int hash,
      @HiveField(1) int birthdate,
      @HiveField(2) int cardNumber,
      @HiveField(3) int expirationDate,
      @HiveField(4) Tariff tariff,
      @HiveField(5) String name});

  $TariffCopyWith<$Res> get tariff;
}

/// @nodoc
class _$CardEkzhCopyWithImpl<$Res, $Val extends CardEkzh>
    implements $CardEkzhCopyWith<$Res> {
  _$CardEkzhCopyWithImpl(this._value, this._then);

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
    Object? tariff = null,
    Object? name = null,
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
      tariff: null == tariff
          ? _value.tariff
          : tariff // ignore: cast_nullable_to_non_nullable
              as Tariff,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TariffCopyWith<$Res> get tariff {
    return $TariffCopyWith<$Res>(_value.tariff, (value) {
      return _then(_value.copyWith(tariff: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardEkzhImplCopyWith<$Res>
    implements $CardEkzhCopyWith<$Res> {
  factory _$$CardEkzhImplCopyWith(
          _$CardEkzhImpl value, $Res Function(_$CardEkzhImpl) then) =
      __$$CardEkzhImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int hash,
      @HiveField(1) int birthdate,
      @HiveField(2) int cardNumber,
      @HiveField(3) int expirationDate,
      @HiveField(4) Tariff tariff,
      @HiveField(5) String name});

  @override
  $TariffCopyWith<$Res> get tariff;
}

/// @nodoc
class __$$CardEkzhImplCopyWithImpl<$Res>
    extends _$CardEkzhCopyWithImpl<$Res, _$CardEkzhImpl>
    implements _$$CardEkzhImplCopyWith<$Res> {
  __$$CardEkzhImplCopyWithImpl(
      _$CardEkzhImpl _value, $Res Function(_$CardEkzhImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? birthdate = null,
    Object? cardNumber = null,
    Object? expirationDate = null,
    Object? tariff = null,
    Object? name = null,
  }) {
    return _then(_$CardEkzhImpl(
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
      tariff: null == tariff
          ? _value.tariff
          : tariff // ignore: cast_nullable_to_non_nullable
              as Tariff,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 100, adapterName: 'CardAdapter')
class _$CardEkzhImpl with DiagnosticableTreeMixin implements _CardEkzh {
  const _$CardEkzhImpl(
      {@HiveField(0) required this.hash,
      @HiveField(1) required this.birthdate,
      @HiveField(2) required this.cardNumber,
      @HiveField(3) required this.expirationDate,
      @HiveField(4) required this.tariff,
      @HiveField(5) required this.name});

  @override
  @HiveField(0)
  final int hash;
  @override
  @HiveField(1)
  final int birthdate;
  @override
  @HiveField(2)
  final int cardNumber;
  @override
  @HiveField(3)
  final int expirationDate;
  @override
  @HiveField(4)
  final Tariff tariff;
  @override
  @HiveField(5)
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardEkzh(hash: $hash, birthdate: $birthdate, cardNumber: $cardNumber, expirationDate: $expirationDate, tariff: $tariff, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CardEkzh'))
      ..add(DiagnosticsProperty('hash', hash))
      ..add(DiagnosticsProperty('birthdate', birthdate))
      ..add(DiagnosticsProperty('cardNumber', cardNumber))
      ..add(DiagnosticsProperty('expirationDate', expirationDate))
      ..add(DiagnosticsProperty('tariff', tariff))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardEkzhImpl &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.tariff, tariff) || other.tariff == tariff) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, hash, birthdate, cardNumber, expirationDate, tariff, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardEkzhImplCopyWith<_$CardEkzhImpl> get copyWith =>
      __$$CardEkzhImplCopyWithImpl<_$CardEkzhImpl>(this, _$identity);
}

abstract class _CardEkzh implements CardEkzh {
  const factory _CardEkzh(
      {@HiveField(0) required final int hash,
      @HiveField(1) required final int birthdate,
      @HiveField(2) required final int cardNumber,
      @HiveField(3) required final int expirationDate,
      @HiveField(4) required final Tariff tariff,
      @HiveField(5) required final String name}) = _$CardEkzhImpl;

  @override
  @HiveField(0)
  int get hash;
  @override
  @HiveField(1)
  int get birthdate;
  @override
  @HiveField(2)
  int get cardNumber;
  @override
  @HiveField(3)
  int get expirationDate;
  @override
  @HiveField(4)
  Tariff get tariff;
  @override
  @HiveField(5)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CardEkzhImplCopyWith<_$CardEkzhImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
