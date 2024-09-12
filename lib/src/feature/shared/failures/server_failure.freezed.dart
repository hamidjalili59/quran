// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServerFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode) unexpectedStatusCode,
    required TResult Function(String message) unexpectedStatusCodeWithMessage,
    required TResult Function(String json) invalidJson,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode)? unexpectedStatusCode,
    TResult? Function(String message)? unexpectedStatusCodeWithMessage,
    TResult? Function(String json)? invalidJson,
    TResult? Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode)? unexpectedStatusCode,
    TResult Function(String message)? unexpectedStatusCodeWithMessage,
    TResult Function(String json)? invalidJson,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedStatusCode value) unexpectedStatusCode,
    required TResult Function(_UnexpectedStatusCodeWithMessage value)
        unexpectedStatusCodeWithMessage,
    required TResult Function(_InvalidJson value) invalidJson,
    required TResult Function(_ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnexpectedStatusCode value)? unexpectedStatusCode,
    TResult? Function(_UnexpectedStatusCodeWithMessage value)?
        unexpectedStatusCodeWithMessage,
    TResult? Function(_InvalidJson value)? invalidJson,
    TResult? Function(_ServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedStatusCode value)? unexpectedStatusCode,
    TResult Function(_UnexpectedStatusCodeWithMessage value)?
        unexpectedStatusCodeWithMessage,
    TResult Function(_InvalidJson value)? invalidJson,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res, ServerFailure>;
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res, $Val extends ServerFailure>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnexpectedStatusCodeImplCopyWith<$Res> {
  factory _$$UnexpectedStatusCodeImplCopyWith(_$UnexpectedStatusCodeImpl value,
          $Res Function(_$UnexpectedStatusCodeImpl) then) =
      __$$UnexpectedStatusCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int statusCode});
}

/// @nodoc
class __$$UnexpectedStatusCodeImplCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res, _$UnexpectedStatusCodeImpl>
    implements _$$UnexpectedStatusCodeImplCopyWith<$Res> {
  __$$UnexpectedStatusCodeImplCopyWithImpl(_$UnexpectedStatusCodeImpl _value,
      $Res Function(_$UnexpectedStatusCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
  }) {
    return _then(_$UnexpectedStatusCodeImpl(
      null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnexpectedStatusCodeImpl implements _UnexpectedStatusCode {
  const _$UnexpectedStatusCodeImpl(this.statusCode);

  @override
  final int statusCode;

  @override
  String toString() {
    return 'ServerFailure.unexpectedStatusCode(statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedStatusCodeImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode);

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedStatusCodeImplCopyWith<_$UnexpectedStatusCodeImpl>
      get copyWith =>
          __$$UnexpectedStatusCodeImplCopyWithImpl<_$UnexpectedStatusCodeImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode) unexpectedStatusCode,
    required TResult Function(String message) unexpectedStatusCodeWithMessage,
    required TResult Function(String json) invalidJson,
    required TResult Function() serverError,
  }) {
    return unexpectedStatusCode(statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode)? unexpectedStatusCode,
    TResult? Function(String message)? unexpectedStatusCodeWithMessage,
    TResult? Function(String json)? invalidJson,
    TResult? Function()? serverError,
  }) {
    return unexpectedStatusCode?.call(statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode)? unexpectedStatusCode,
    TResult Function(String message)? unexpectedStatusCodeWithMessage,
    TResult Function(String json)? invalidJson,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (unexpectedStatusCode != null) {
      return unexpectedStatusCode(statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedStatusCode value) unexpectedStatusCode,
    required TResult Function(_UnexpectedStatusCodeWithMessage value)
        unexpectedStatusCodeWithMessage,
    required TResult Function(_InvalidJson value) invalidJson,
    required TResult Function(_ServerError value) serverError,
  }) {
    return unexpectedStatusCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnexpectedStatusCode value)? unexpectedStatusCode,
    TResult? Function(_UnexpectedStatusCodeWithMessage value)?
        unexpectedStatusCodeWithMessage,
    TResult? Function(_InvalidJson value)? invalidJson,
    TResult? Function(_ServerError value)? serverError,
  }) {
    return unexpectedStatusCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedStatusCode value)? unexpectedStatusCode,
    TResult Function(_UnexpectedStatusCodeWithMessage value)?
        unexpectedStatusCodeWithMessage,
    TResult Function(_InvalidJson value)? invalidJson,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (unexpectedStatusCode != null) {
      return unexpectedStatusCode(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedStatusCode implements ServerFailure {
  const factory _UnexpectedStatusCode(final int statusCode) =
      _$UnexpectedStatusCodeImpl;

  int get statusCode;

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnexpectedStatusCodeImplCopyWith<_$UnexpectedStatusCodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedStatusCodeWithMessageImplCopyWith<$Res> {
  factory _$$UnexpectedStatusCodeWithMessageImplCopyWith(
          _$UnexpectedStatusCodeWithMessageImpl value,
          $Res Function(_$UnexpectedStatusCodeWithMessageImpl) then) =
      __$$UnexpectedStatusCodeWithMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnexpectedStatusCodeWithMessageImplCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res,
        _$UnexpectedStatusCodeWithMessageImpl>
    implements _$$UnexpectedStatusCodeWithMessageImplCopyWith<$Res> {
  __$$UnexpectedStatusCodeWithMessageImplCopyWithImpl(
      _$UnexpectedStatusCodeWithMessageImpl _value,
      $Res Function(_$UnexpectedStatusCodeWithMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnexpectedStatusCodeWithMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnexpectedStatusCodeWithMessageImpl
    implements _UnexpectedStatusCodeWithMessage {
  const _$UnexpectedStatusCodeWithMessageImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ServerFailure.unexpectedStatusCodeWithMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedStatusCodeWithMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedStatusCodeWithMessageImplCopyWith<
          _$UnexpectedStatusCodeWithMessageImpl>
      get copyWith => __$$UnexpectedStatusCodeWithMessageImplCopyWithImpl<
          _$UnexpectedStatusCodeWithMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode) unexpectedStatusCode,
    required TResult Function(String message) unexpectedStatusCodeWithMessage,
    required TResult Function(String json) invalidJson,
    required TResult Function() serverError,
  }) {
    return unexpectedStatusCodeWithMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode)? unexpectedStatusCode,
    TResult? Function(String message)? unexpectedStatusCodeWithMessage,
    TResult? Function(String json)? invalidJson,
    TResult? Function()? serverError,
  }) {
    return unexpectedStatusCodeWithMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode)? unexpectedStatusCode,
    TResult Function(String message)? unexpectedStatusCodeWithMessage,
    TResult Function(String json)? invalidJson,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (unexpectedStatusCodeWithMessage != null) {
      return unexpectedStatusCodeWithMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedStatusCode value) unexpectedStatusCode,
    required TResult Function(_UnexpectedStatusCodeWithMessage value)
        unexpectedStatusCodeWithMessage,
    required TResult Function(_InvalidJson value) invalidJson,
    required TResult Function(_ServerError value) serverError,
  }) {
    return unexpectedStatusCodeWithMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnexpectedStatusCode value)? unexpectedStatusCode,
    TResult? Function(_UnexpectedStatusCodeWithMessage value)?
        unexpectedStatusCodeWithMessage,
    TResult? Function(_InvalidJson value)? invalidJson,
    TResult? Function(_ServerError value)? serverError,
  }) {
    return unexpectedStatusCodeWithMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedStatusCode value)? unexpectedStatusCode,
    TResult Function(_UnexpectedStatusCodeWithMessage value)?
        unexpectedStatusCodeWithMessage,
    TResult Function(_InvalidJson value)? invalidJson,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (unexpectedStatusCodeWithMessage != null) {
      return unexpectedStatusCodeWithMessage(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedStatusCodeWithMessage implements ServerFailure {
  const factory _UnexpectedStatusCodeWithMessage(final String message) =
      _$UnexpectedStatusCodeWithMessageImpl;

  String get message;

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnexpectedStatusCodeWithMessageImplCopyWith<
          _$UnexpectedStatusCodeWithMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidJsonImplCopyWith<$Res> {
  factory _$$InvalidJsonImplCopyWith(
          _$InvalidJsonImpl value, $Res Function(_$InvalidJsonImpl) then) =
      __$$InvalidJsonImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String json});
}

/// @nodoc
class __$$InvalidJsonImplCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res, _$InvalidJsonImpl>
    implements _$$InvalidJsonImplCopyWith<$Res> {
  __$$InvalidJsonImplCopyWithImpl(
      _$InvalidJsonImpl _value, $Res Function(_$InvalidJsonImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? json = null,
  }) {
    return _then(_$InvalidJsonImpl(
      null == json
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidJsonImpl implements _InvalidJson {
  const _$InvalidJsonImpl(this.json);

  @override
  final String json;

  @override
  String toString() {
    return 'ServerFailure.invalidJson(json: $json)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidJsonImpl &&
            (identical(other.json, json) || other.json == json));
  }

  @override
  int get hashCode => Object.hash(runtimeType, json);

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidJsonImplCopyWith<_$InvalidJsonImpl> get copyWith =>
      __$$InvalidJsonImplCopyWithImpl<_$InvalidJsonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode) unexpectedStatusCode,
    required TResult Function(String message) unexpectedStatusCodeWithMessage,
    required TResult Function(String json) invalidJson,
    required TResult Function() serverError,
  }) {
    return invalidJson(json);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode)? unexpectedStatusCode,
    TResult? Function(String message)? unexpectedStatusCodeWithMessage,
    TResult? Function(String json)? invalidJson,
    TResult? Function()? serverError,
  }) {
    return invalidJson?.call(json);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode)? unexpectedStatusCode,
    TResult Function(String message)? unexpectedStatusCodeWithMessage,
    TResult Function(String json)? invalidJson,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (invalidJson != null) {
      return invalidJson(json);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedStatusCode value) unexpectedStatusCode,
    required TResult Function(_UnexpectedStatusCodeWithMessage value)
        unexpectedStatusCodeWithMessage,
    required TResult Function(_InvalidJson value) invalidJson,
    required TResult Function(_ServerError value) serverError,
  }) {
    return invalidJson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnexpectedStatusCode value)? unexpectedStatusCode,
    TResult? Function(_UnexpectedStatusCodeWithMessage value)?
        unexpectedStatusCodeWithMessage,
    TResult? Function(_InvalidJson value)? invalidJson,
    TResult? Function(_ServerError value)? serverError,
  }) {
    return invalidJson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedStatusCode value)? unexpectedStatusCode,
    TResult Function(_UnexpectedStatusCodeWithMessage value)?
        unexpectedStatusCodeWithMessage,
    TResult Function(_InvalidJson value)? invalidJson,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (invalidJson != null) {
      return invalidJson(this);
    }
    return orElse();
  }
}

abstract class _InvalidJson implements ServerFailure {
  const factory _InvalidJson(final String json) = _$InvalidJsonImpl;

  String get json;

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidJsonImplCopyWith<_$InvalidJsonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl();

  @override
  String toString() {
    return 'ServerFailure.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode) unexpectedStatusCode,
    required TResult Function(String message) unexpectedStatusCodeWithMessage,
    required TResult Function(String json) invalidJson,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int statusCode)? unexpectedStatusCode,
    TResult? Function(String message)? unexpectedStatusCodeWithMessage,
    TResult? Function(String json)? invalidJson,
    TResult? Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode)? unexpectedStatusCode,
    TResult Function(String message)? unexpectedStatusCodeWithMessage,
    TResult Function(String json)? invalidJson,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedStatusCode value) unexpectedStatusCode,
    required TResult Function(_UnexpectedStatusCodeWithMessage value)
        unexpectedStatusCodeWithMessage,
    required TResult Function(_InvalidJson value) invalidJson,
    required TResult Function(_ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnexpectedStatusCode value)? unexpectedStatusCode,
    TResult? Function(_UnexpectedStatusCodeWithMessage value)?
        unexpectedStatusCodeWithMessage,
    TResult? Function(_InvalidJson value)? invalidJson,
    TResult? Function(_ServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedStatusCode value)? unexpectedStatusCode,
    TResult Function(_UnexpectedStatusCodeWithMessage value)?
        unexpectedStatusCodeWithMessage,
    TResult Function(_InvalidJson value)? invalidJson,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ServerFailure {
  const factory _ServerError() = _$ServerErrorImpl;
}
