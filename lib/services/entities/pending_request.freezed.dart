// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pending_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PendingRequest {
  @HiveField(0)
  String get url => throw _privateConstructorUsedError;
  @HiveField(1)
  String get body => throw _privateConstructorUsedError;
  @HiveField(2)
  String get headers => throw _privateConstructorUsedError;
  @HiveField(3)
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PendingRequestCopyWith<PendingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingRequestCopyWith<$Res> {
  factory $PendingRequestCopyWith(
          PendingRequest value, $Res Function(PendingRequest) then) =
      _$PendingRequestCopyWithImpl<$Res, PendingRequest>;
  @useResult
  $Res call(
      {@HiveField(0) String url,
      @HiveField(1) String body,
      @HiveField(2) String headers,
      @HiveField(3) String id});
}

/// @nodoc
class _$PendingRequestCopyWithImpl<$Res, $Val extends PendingRequest>
    implements $PendingRequestCopyWith<$Res> {
  _$PendingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? body = null,
    Object? headers = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PendingRequestImplCopyWith<$Res>
    implements $PendingRequestCopyWith<$Res> {
  factory _$$PendingRequestImplCopyWith(_$PendingRequestImpl value,
          $Res Function(_$PendingRequestImpl) then) =
      __$$PendingRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String url,
      @HiveField(1) String body,
      @HiveField(2) String headers,
      @HiveField(3) String id});
}

/// @nodoc
class __$$PendingRequestImplCopyWithImpl<$Res>
    extends _$PendingRequestCopyWithImpl<$Res, _$PendingRequestImpl>
    implements _$$PendingRequestImplCopyWith<$Res> {
  __$$PendingRequestImplCopyWithImpl(
      _$PendingRequestImpl _value, $Res Function(_$PendingRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? body = null,
    Object? headers = null,
    Object? id = null,
  }) {
    return _then(_$PendingRequestImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 200, adapterName: 'PendingRequestAdapter')
class _$PendingRequestImpl
    with DiagnosticableTreeMixin
    implements _PendingRequest {
  const _$PendingRequestImpl(
      {@HiveField(0) required this.url,
      @HiveField(1) required this.body,
      @HiveField(2) required this.headers,
      @HiveField(3) required this.id});

  @override
  @HiveField(0)
  final String url;
  @override
  @HiveField(1)
  final String body;
  @override
  @HiveField(2)
  final String headers;
  @override
  @HiveField(3)
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PendingRequest(url: $url, body: $body, headers: $headers, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PendingRequest'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('body', body))
      ..add(DiagnosticsProperty('headers', headers))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendingRequestImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.headers, headers) || other.headers == headers) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, body, headers, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PendingRequestImplCopyWith<_$PendingRequestImpl> get copyWith =>
      __$$PendingRequestImplCopyWithImpl<_$PendingRequestImpl>(
          this, _$identity);
}

abstract class _PendingRequest implements PendingRequest {
  const factory _PendingRequest(
      {@HiveField(0) required final String url,
      @HiveField(1) required final String body,
      @HiveField(2) required final String headers,
      @HiveField(3) required final String id}) = _$PendingRequestImpl;

  @override
  @HiveField(0)
  String get url;
  @override
  @HiveField(1)
  String get body;
  @override
  @HiveField(2)
  String get headers;
  @override
  @HiveField(3)
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$PendingRequestImplCopyWith<_$PendingRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
