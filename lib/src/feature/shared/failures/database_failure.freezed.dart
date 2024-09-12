// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'database_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DatabaseFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unableToConnect,
    required TResult Function(String query) invalidQuery,
    required TResult Function() noDataFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unableToConnect,
    TResult? Function(String query)? invalidQuery,
    TResult? Function()? noDataFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unableToConnect,
    TResult Function(String query)? invalidQuery,
    TResult Function()? noDataFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnableToConnect value) unableToConnect,
    required TResult Function(_InvalidQuery value) invalidQuery,
    required TResult Function(_NoDataFound value) noDataFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnableToConnect value)? unableToConnect,
    TResult? Function(_InvalidQuery value)? invalidQuery,
    TResult? Function(_NoDataFound value)? noDataFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnableToConnect value)? unableToConnect,
    TResult Function(_InvalidQuery value)? invalidQuery,
    TResult Function(_NoDataFound value)? noDataFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatabaseFailureCopyWith<$Res> {
  factory $DatabaseFailureCopyWith(
          DatabaseFailure value, $Res Function(DatabaseFailure) then) =
      _$DatabaseFailureCopyWithImpl<$Res, DatabaseFailure>;
}

/// @nodoc
class _$DatabaseFailureCopyWithImpl<$Res, $Val extends DatabaseFailure>
    implements $DatabaseFailureCopyWith<$Res> {
  _$DatabaseFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DatabaseFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnableToConnectImplCopyWith<$Res> {
  factory _$$UnableToConnectImplCopyWith(_$UnableToConnectImpl value,
          $Res Function(_$UnableToConnectImpl) then) =
      __$$UnableToConnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnableToConnectImplCopyWithImpl<$Res>
    extends _$DatabaseFailureCopyWithImpl<$Res, _$UnableToConnectImpl>
    implements _$$UnableToConnectImplCopyWith<$Res> {
  __$$UnableToConnectImplCopyWithImpl(
      _$UnableToConnectImpl _value, $Res Function(_$UnableToConnectImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnableToConnectImpl implements _UnableToConnect {
  const _$UnableToConnectImpl();

  @override
  String toString() {
    return 'DatabaseFailure.unableToConnect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnableToConnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unableToConnect,
    required TResult Function(String query) invalidQuery,
    required TResult Function() noDataFound,
  }) {
    return unableToConnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unableToConnect,
    TResult? Function(String query)? invalidQuery,
    TResult? Function()? noDataFound,
  }) {
    return unableToConnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unableToConnect,
    TResult Function(String query)? invalidQuery,
    TResult Function()? noDataFound,
    required TResult orElse(),
  }) {
    if (unableToConnect != null) {
      return unableToConnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnableToConnect value) unableToConnect,
    required TResult Function(_InvalidQuery value) invalidQuery,
    required TResult Function(_NoDataFound value) noDataFound,
  }) {
    return unableToConnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnableToConnect value)? unableToConnect,
    TResult? Function(_InvalidQuery value)? invalidQuery,
    TResult? Function(_NoDataFound value)? noDataFound,
  }) {
    return unableToConnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnableToConnect value)? unableToConnect,
    TResult Function(_InvalidQuery value)? invalidQuery,
    TResult Function(_NoDataFound value)? noDataFound,
    required TResult orElse(),
  }) {
    if (unableToConnect != null) {
      return unableToConnect(this);
    }
    return orElse();
  }
}

abstract class _UnableToConnect implements DatabaseFailure {
  const factory _UnableToConnect() = _$UnableToConnectImpl;
}

/// @nodoc
abstract class _$$InvalidQueryImplCopyWith<$Res> {
  factory _$$InvalidQueryImplCopyWith(
          _$InvalidQueryImpl value, $Res Function(_$InvalidQueryImpl) then) =
      __$$InvalidQueryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$InvalidQueryImplCopyWithImpl<$Res>
    extends _$DatabaseFailureCopyWithImpl<$Res, _$InvalidQueryImpl>
    implements _$$InvalidQueryImplCopyWith<$Res> {
  __$$InvalidQueryImplCopyWithImpl(
      _$InvalidQueryImpl _value, $Res Function(_$InvalidQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$InvalidQueryImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidQueryImpl implements _InvalidQuery {
  const _$InvalidQueryImpl({this.query = ''});

  @override
  @JsonKey()
  final String query;

  @override
  String toString() {
    return 'DatabaseFailure.invalidQuery(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidQueryImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of DatabaseFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidQueryImplCopyWith<_$InvalidQueryImpl> get copyWith =>
      __$$InvalidQueryImplCopyWithImpl<_$InvalidQueryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unableToConnect,
    required TResult Function(String query) invalidQuery,
    required TResult Function() noDataFound,
  }) {
    return invalidQuery(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unableToConnect,
    TResult? Function(String query)? invalidQuery,
    TResult? Function()? noDataFound,
  }) {
    return invalidQuery?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unableToConnect,
    TResult Function(String query)? invalidQuery,
    TResult Function()? noDataFound,
    required TResult orElse(),
  }) {
    if (invalidQuery != null) {
      return invalidQuery(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnableToConnect value) unableToConnect,
    required TResult Function(_InvalidQuery value) invalidQuery,
    required TResult Function(_NoDataFound value) noDataFound,
  }) {
    return invalidQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnableToConnect value)? unableToConnect,
    TResult? Function(_InvalidQuery value)? invalidQuery,
    TResult? Function(_NoDataFound value)? noDataFound,
  }) {
    return invalidQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnableToConnect value)? unableToConnect,
    TResult Function(_InvalidQuery value)? invalidQuery,
    TResult Function(_NoDataFound value)? noDataFound,
    required TResult orElse(),
  }) {
    if (invalidQuery != null) {
      return invalidQuery(this);
    }
    return orElse();
  }
}

abstract class _InvalidQuery implements DatabaseFailure {
  const factory _InvalidQuery({final String query}) = _$InvalidQueryImpl;

  String get query;

  /// Create a copy of DatabaseFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidQueryImplCopyWith<_$InvalidQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoDataFoundImplCopyWith<$Res> {
  factory _$$NoDataFoundImplCopyWith(
          _$NoDataFoundImpl value, $Res Function(_$NoDataFoundImpl) then) =
      __$$NoDataFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoDataFoundImplCopyWithImpl<$Res>
    extends _$DatabaseFailureCopyWithImpl<$Res, _$NoDataFoundImpl>
    implements _$$NoDataFoundImplCopyWith<$Res> {
  __$$NoDataFoundImplCopyWithImpl(
      _$NoDataFoundImpl _value, $Res Function(_$NoDataFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of DatabaseFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoDataFoundImpl implements _NoDataFound {
  const _$NoDataFoundImpl();

  @override
  String toString() {
    return 'DatabaseFailure.noDataFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoDataFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unableToConnect,
    required TResult Function(String query) invalidQuery,
    required TResult Function() noDataFound,
  }) {
    return noDataFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unableToConnect,
    TResult? Function(String query)? invalidQuery,
    TResult? Function()? noDataFound,
  }) {
    return noDataFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unableToConnect,
    TResult Function(String query)? invalidQuery,
    TResult Function()? noDataFound,
    required TResult orElse(),
  }) {
    if (noDataFound != null) {
      return noDataFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnableToConnect value) unableToConnect,
    required TResult Function(_InvalidQuery value) invalidQuery,
    required TResult Function(_NoDataFound value) noDataFound,
  }) {
    return noDataFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnableToConnect value)? unableToConnect,
    TResult? Function(_InvalidQuery value)? invalidQuery,
    TResult? Function(_NoDataFound value)? noDataFound,
  }) {
    return noDataFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnableToConnect value)? unableToConnect,
    TResult Function(_InvalidQuery value)? invalidQuery,
    TResult Function(_NoDataFound value)? noDataFound,
    required TResult orElse(),
  }) {
    if (noDataFound != null) {
      return noDataFound(this);
    }
    return orElse();
  }
}

abstract class _NoDataFound implements DatabaseFailure {
  const factory _NoDataFound() = _$NoDataFoundImpl;
}
