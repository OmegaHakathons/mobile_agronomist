// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aggregate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Aggregate {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AggregateCopyWith<Aggregate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AggregateCopyWith<$Res> {
  factory $AggregateCopyWith(Aggregate value, $Res Function(Aggregate) then) =
      _$AggregateCopyWithImpl<$Res, Aggregate>;
  @useResult
  $Res call({int id, String name, String number});
}

/// @nodoc
class _$AggregateCopyWithImpl<$Res, $Val extends Aggregate>
    implements $AggregateCopyWith<$Res> {
  _$AggregateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AggregateImplCopyWith<$Res>
    implements $AggregateCopyWith<$Res> {
  factory _$$AggregateImplCopyWith(
          _$AggregateImpl value, $Res Function(_$AggregateImpl) then) =
      __$$AggregateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String number});
}

/// @nodoc
class __$$AggregateImplCopyWithImpl<$Res>
    extends _$AggregateCopyWithImpl<$Res, _$AggregateImpl>
    implements _$$AggregateImplCopyWith<$Res> {
  __$$AggregateImplCopyWithImpl(
      _$AggregateImpl _value, $Res Function(_$AggregateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? number = null,
  }) {
    return _then(_$AggregateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AggregateImpl implements _Aggregate {
  const _$AggregateImpl(
      {required this.id, required this.name, required this.number});

  @override
  final int id;
  @override
  final String name;
  @override
  final String number;

  @override
  String toString() {
    return 'Aggregate(id: $id, name: $name, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AggregateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AggregateImplCopyWith<_$AggregateImpl> get copyWith =>
      __$$AggregateImplCopyWithImpl<_$AggregateImpl>(this, _$identity);
}

abstract class _Aggregate implements Aggregate {
  const factory _Aggregate(
      {required final int id,
      required final String name,
      required final String number}) = _$AggregateImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get number;
  @override
  @JsonKey(ignore: true)
  _$$AggregateImplCopyWith<_$AggregateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
