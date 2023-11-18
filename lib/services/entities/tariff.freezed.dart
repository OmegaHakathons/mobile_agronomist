// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tariff.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tariff _$TariffFromJson(Map<String, dynamic> json) {
  return _Tariff.fromJson(json);
}

/// @nodoc
mixin _$Tariff {
  @JsonKey(name: 'name')
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  @HiveField(1)
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  @HiveField(2)
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TariffCopyWith<Tariff> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TariffCopyWith<$Res> {
  factory $TariffCopyWith(Tariff value, $Res Function(Tariff) then) =
      _$TariffCopyWithImpl<$Res, Tariff>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') @HiveField(0) String name,
      @JsonKey(name: 'amount') @HiveField(1) int amount,
      @JsonKey(name: 'id') @HiveField(2) int id});
}

/// @nodoc
class _$TariffCopyWithImpl<$Res, $Val extends Tariff>
    implements $TariffCopyWith<$Res> {
  _$TariffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TariffImplCopyWith<$Res> implements $TariffCopyWith<$Res> {
  factory _$$TariffImplCopyWith(
          _$TariffImpl value, $Res Function(_$TariffImpl) then) =
      __$$TariffImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') @HiveField(0) String name,
      @JsonKey(name: 'amount') @HiveField(1) int amount,
      @JsonKey(name: 'id') @HiveField(2) int id});
}

/// @nodoc
class __$$TariffImplCopyWithImpl<$Res>
    extends _$TariffCopyWithImpl<$Res, _$TariffImpl>
    implements _$$TariffImplCopyWith<$Res> {
  __$$TariffImplCopyWithImpl(
      _$TariffImpl _value, $Res Function(_$TariffImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? id = null,
  }) {
    return _then(_$TariffImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 40, adapterName: 'TariffAdapter')
class _$TariffImpl with DiagnosticableTreeMixin implements _Tariff {
  const _$TariffImpl(
      {@JsonKey(name: 'name') @HiveField(0) required this.name,
      @JsonKey(name: 'amount') @HiveField(1) required this.amount,
      @JsonKey(name: 'id') @HiveField(2) required this.id});

  factory _$TariffImpl.fromJson(Map<String, dynamic> json) =>
      _$$TariffImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  @HiveField(0)
  final String name;
  @override
  @JsonKey(name: 'amount')
  @HiveField(1)
  final int amount;
  @override
  @JsonKey(name: 'id')
  @HiveField(2)
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Tariff(name: $name, amount: $amount, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Tariff'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TariffImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, amount, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TariffImplCopyWith<_$TariffImpl> get copyWith =>
      __$$TariffImplCopyWithImpl<_$TariffImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TariffImplToJson(
      this,
    );
  }
}

abstract class _Tariff implements Tariff {
  const factory _Tariff(
      {@JsonKey(name: 'name') @HiveField(0) required final String name,
      @JsonKey(name: 'amount') @HiveField(1) required final int amount,
      @JsonKey(name: 'id') @HiveField(2) required final int id}) = _$TariffImpl;

  factory _Tariff.fromJson(Map<String, dynamic> json) = _$TariffImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  @HiveField(0)
  String get name;
  @override
  @JsonKey(name: 'amount')
  @HiveField(1)
  int get amount;
  @override
  @JsonKey(name: 'id')
  @HiveField(2)
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$TariffImplCopyWith<_$TariffImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
