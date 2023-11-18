// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Task {
  int get id => throw _privateConstructorUsedError;
  TypeTask get type => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  List<StepCustom> get steps => throw _privateConstructorUsedError;
  int? get currentStep => throw _privateConstructorUsedError;
  Car get car => throw _privateConstructorUsedError;
  Aggregate get aggregate => throw _privateConstructorUsedError;
  String get field =>
      throw _privateConstructorUsedError; // пока просто, в будущем класс с местоположением
  int get minSpeed => throw _privateConstructorUsedError;
  int get maxSpeed => throw _privateConstructorUsedError;
  int? get depth => throw _privateConstructorUsedError;
  String? get material => throw _privateConstructorUsedError;
  int? get consumption => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;
  StatusTask get status => throw _privateConstructorUsedError;
  String get executor =>
      throw _privateConstructorUsedError; // ПЕРЕДЕЛАТЬ НА КЛАСС !!!!!!!!!!!!!!!!!!!!
  int? get money => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {int id,
      TypeTask type,
      String shortDescription,
      List<StepCustom> steps,
      int? currentStep,
      Car car,
      Aggregate aggregate,
      String field,
      int minSpeed,
      int maxSpeed,
      int? depth,
      String? material,
      int? consumption,
      DateTime deadline,
      StatusTask status,
      String executor,
      int? money});

  $CarCopyWith<$Res> get car;
  $AggregateCopyWith<$Res> get aggregate;
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? shortDescription = null,
    Object? steps = null,
    Object? currentStep = freezed,
    Object? car = null,
    Object? aggregate = null,
    Object? field = null,
    Object? minSpeed = null,
    Object? maxSpeed = null,
    Object? depth = freezed,
    Object? material = freezed,
    Object? consumption = freezed,
    Object? deadline = null,
    Object? status = null,
    Object? executor = null,
    Object? money = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeTask,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<StepCustom>,
      currentStep: freezed == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int?,
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
      aggregate: null == aggregate
          ? _value.aggregate
          : aggregate // ignore: cast_nullable_to_non_nullable
              as Aggregate,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      minSpeed: null == minSpeed
          ? _value.minSpeed
          : minSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      maxSpeed: null == maxSpeed
          ? _value.maxSpeed
          : maxSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      material: freezed == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as String?,
      consumption: freezed == consumption
          ? _value.consumption
          : consumption // ignore: cast_nullable_to_non_nullable
              as int?,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusTask,
      executor: null == executor
          ? _value.executor
          : executor // ignore: cast_nullable_to_non_nullable
              as String,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CarCopyWith<$Res> get car {
    return $CarCopyWith<$Res>(_value.car, (value) {
      return _then(_value.copyWith(car: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AggregateCopyWith<$Res> get aggregate {
    return $AggregateCopyWith<$Res>(_value.aggregate, (value) {
      return _then(_value.copyWith(aggregate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      TypeTask type,
      String shortDescription,
      List<StepCustom> steps,
      int? currentStep,
      Car car,
      Aggregate aggregate,
      String field,
      int minSpeed,
      int maxSpeed,
      int? depth,
      String? material,
      int? consumption,
      DateTime deadline,
      StatusTask status,
      String executor,
      int? money});

  @override
  $CarCopyWith<$Res> get car;
  @override
  $AggregateCopyWith<$Res> get aggregate;
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? shortDescription = null,
    Object? steps = null,
    Object? currentStep = freezed,
    Object? car = null,
    Object? aggregate = null,
    Object? field = null,
    Object? minSpeed = null,
    Object? maxSpeed = null,
    Object? depth = freezed,
    Object? material = freezed,
    Object? consumption = freezed,
    Object? deadline = null,
    Object? status = null,
    Object? executor = null,
    Object? money = freezed,
  }) {
    return _then(_$TaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeTask,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<StepCustom>,
      currentStep: freezed == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int?,
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
      aggregate: null == aggregate
          ? _value.aggregate
          : aggregate // ignore: cast_nullable_to_non_nullable
              as Aggregate,
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      minSpeed: null == minSpeed
          ? _value.minSpeed
          : minSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      maxSpeed: null == maxSpeed
          ? _value.maxSpeed
          : maxSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      material: freezed == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as String?,
      consumption: freezed == consumption
          ? _value.consumption
          : consumption // ignore: cast_nullable_to_non_nullable
              as int?,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusTask,
      executor: null == executor
          ? _value.executor
          : executor // ignore: cast_nullable_to_non_nullable
              as String,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TaskImpl implements _Task {
  const _$TaskImpl(
      {required this.id,
      required this.type,
      required this.shortDescription,
      required final List<StepCustom> steps,
      this.currentStep,
      required this.car,
      required this.aggregate,
      required this.field,
      required this.minSpeed,
      required this.maxSpeed,
      this.depth,
      this.material,
      this.consumption,
      required this.deadline,
      required this.status,
      required this.executor,
      this.money})
      : _steps = steps;

  @override
  final int id;
  @override
  final TypeTask type;
  @override
  final String shortDescription;
  final List<StepCustom> _steps;
  @override
  List<StepCustom> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  final int? currentStep;
  @override
  final Car car;
  @override
  final Aggregate aggregate;
  @override
  final String field;
// пока просто, в будущем класс с местоположением
  @override
  final int minSpeed;
  @override
  final int maxSpeed;
  @override
  final int? depth;
  @override
  final String? material;
  @override
  final int? consumption;
  @override
  final DateTime deadline;
  @override
  final StatusTask status;
  @override
  final String executor;
// ПЕРЕДЕЛАТЬ НА КЛАСС !!!!!!!!!!!!!!!!!!!!
  @override
  final int? money;

  @override
  String toString() {
    return 'Task(id: $id, type: $type, shortDescription: $shortDescription, steps: $steps, currentStep: $currentStep, car: $car, aggregate: $aggregate, field: $field, minSpeed: $minSpeed, maxSpeed: $maxSpeed, depth: $depth, material: $material, consumption: $consumption, deadline: $deadline, status: $status, executor: $executor, money: $money)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.aggregate, aggregate) ||
                other.aggregate == aggregate) &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.minSpeed, minSpeed) ||
                other.minSpeed == minSpeed) &&
            (identical(other.maxSpeed, maxSpeed) ||
                other.maxSpeed == maxSpeed) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.material, material) ||
                other.material == material) &&
            (identical(other.consumption, consumption) ||
                other.consumption == consumption) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.executor, executor) ||
                other.executor == executor) &&
            (identical(other.money, money) || other.money == money));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      shortDescription,
      const DeepCollectionEquality().hash(_steps),
      currentStep,
      car,
      aggregate,
      field,
      minSpeed,
      maxSpeed,
      depth,
      material,
      consumption,
      deadline,
      status,
      executor,
      money);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);
}

abstract class _Task implements Task {
  const factory _Task(
      {required final int id,
      required final TypeTask type,
      required final String shortDescription,
      required final List<StepCustom> steps,
      final int? currentStep,
      required final Car car,
      required final Aggregate aggregate,
      required final String field,
      required final int minSpeed,
      required final int maxSpeed,
      final int? depth,
      final String? material,
      final int? consumption,
      required final DateTime deadline,
      required final StatusTask status,
      required final String executor,
      final int? money}) = _$TaskImpl;

  @override
  int get id;
  @override
  TypeTask get type;
  @override
  String get shortDescription;
  @override
  List<StepCustom> get steps;
  @override
  int? get currentStep;
  @override
  Car get car;
  @override
  Aggregate get aggregate;
  @override
  String get field;
  @override // пока просто, в будущем класс с местоположением
  int get minSpeed;
  @override
  int get maxSpeed;
  @override
  int? get depth;
  @override
  String? get material;
  @override
  int? get consumption;
  @override
  DateTime get deadline;
  @override
  StatusTask get status;
  @override
  String get executor;
  @override // ПЕРЕДЕЛАТЬ НА КЛАСС !!!!!!!!!!!!!!!!!!!!
  int? get money;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
