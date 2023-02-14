// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function(ListOfHomeSurah? listSurahs)
        dataIsAvailableInStorage,
    required TResult Function(ListOfHomeSurah? listSurahs) getSurahsSuccess,
    required TResult Function(HomeFailure? failure, String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(ListOfHomeSurah? listSurahs)? dataIsAvailableInStorage,
    TResult? Function(ListOfHomeSurah? listSurahs)? getSurahsSuccess,
    TResult? Function(HomeFailure? failure, String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(ListOfHomeSurah? listSurahs)? dataIsAvailableInStorage,
    TResult Function(ListOfHomeSurah? listSurahs)? getSurahsSuccess,
    TResult Function(HomeFailure? failure, String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_DataIsAvailableInStorage value)
        dataIsAvailableInStorage,
    required TResult Function(_GetSurahsSuccess value) getSurahsSuccess,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_DataIsAvailableInStorage value)?
        dataIsAvailableInStorage,
    TResult? Function(_GetSurahsSuccess value)? getSurahsSuccess,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_DataIsAvailableInStorage value)? dataIsAvailableInStorage,
    TResult Function(_GetSurahsSuccess value)? getSurahsSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_Idle(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'HomeState.idle(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function(ListOfHomeSurah? listSurahs)
        dataIsAvailableInStorage,
    required TResult Function(ListOfHomeSurah? listSurahs) getSurahsSuccess,
    required TResult Function(HomeFailure? failure, String message) failure,
  }) {
    return idle(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(ListOfHomeSurah? listSurahs)? dataIsAvailableInStorage,
    TResult? Function(ListOfHomeSurah? listSurahs)? getSurahsSuccess,
    TResult? Function(HomeFailure? failure, String message)? failure,
  }) {
    return idle?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(ListOfHomeSurah? listSurahs)? dataIsAvailableInStorage,
    TResult Function(ListOfHomeSurah? listSurahs)? getSurahsSuccess,
    TResult Function(HomeFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_DataIsAvailableInStorage value)
        dataIsAvailableInStorage,
    required TResult Function(_GetSurahsSuccess value) getSurahsSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_DataIsAvailableInStorage value)?
        dataIsAvailableInStorage,
    TResult? Function(_GetSurahsSuccess value)? getSurahsSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_DataIsAvailableInStorage value)? dataIsAvailableInStorage,
    TResult Function(_GetSurahsSuccess value)? getSurahsSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements HomeState {
  const factory _Idle({final bool isLoading}) = _$_Idle;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataIsAvailableInStorageCopyWith<$Res> {
  factory _$$_DataIsAvailableInStorageCopyWith(
          _$_DataIsAvailableInStorage value,
          $Res Function(_$_DataIsAvailableInStorage) then) =
      __$$_DataIsAvailableInStorageCopyWithImpl<$Res>;
  @useResult
  $Res call({ListOfHomeSurah? listSurahs});

  $ListOfHomeSurahCopyWith<$Res>? get listSurahs;
}

/// @nodoc
class __$$_DataIsAvailableInStorageCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_DataIsAvailableInStorage>
    implements _$$_DataIsAvailableInStorageCopyWith<$Res> {
  __$$_DataIsAvailableInStorageCopyWithImpl(_$_DataIsAvailableInStorage _value,
      $Res Function(_$_DataIsAvailableInStorage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listSurahs = freezed,
  }) {
    return _then(_$_DataIsAvailableInStorage(
      listSurahs: freezed == listSurahs
          ? _value.listSurahs
          : listSurahs // ignore: cast_nullable_to_non_nullable
              as ListOfHomeSurah?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ListOfHomeSurahCopyWith<$Res>? get listSurahs {
    if (_value.listSurahs == null) {
      return null;
    }

    return $ListOfHomeSurahCopyWith<$Res>(_value.listSurahs!, (value) {
      return _then(_value.copyWith(listSurahs: value));
    });
  }
}

/// @nodoc

class _$_DataIsAvailableInStorage implements _DataIsAvailableInStorage {
  const _$_DataIsAvailableInStorage({this.listSurahs});

  @override
  final ListOfHomeSurah? listSurahs;

  @override
  String toString() {
    return 'HomeState.dataIsAvailableInStorage(listSurahs: $listSurahs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataIsAvailableInStorage &&
            (identical(other.listSurahs, listSurahs) ||
                other.listSurahs == listSurahs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listSurahs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataIsAvailableInStorageCopyWith<_$_DataIsAvailableInStorage>
      get copyWith => __$$_DataIsAvailableInStorageCopyWithImpl<
          _$_DataIsAvailableInStorage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function(ListOfHomeSurah? listSurahs)
        dataIsAvailableInStorage,
    required TResult Function(ListOfHomeSurah? listSurahs) getSurahsSuccess,
    required TResult Function(HomeFailure? failure, String message) failure,
  }) {
    return dataIsAvailableInStorage(listSurahs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(ListOfHomeSurah? listSurahs)? dataIsAvailableInStorage,
    TResult? Function(ListOfHomeSurah? listSurahs)? getSurahsSuccess,
    TResult? Function(HomeFailure? failure, String message)? failure,
  }) {
    return dataIsAvailableInStorage?.call(listSurahs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(ListOfHomeSurah? listSurahs)? dataIsAvailableInStorage,
    TResult Function(ListOfHomeSurah? listSurahs)? getSurahsSuccess,
    TResult Function(HomeFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (dataIsAvailableInStorage != null) {
      return dataIsAvailableInStorage(listSurahs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_DataIsAvailableInStorage value)
        dataIsAvailableInStorage,
    required TResult Function(_GetSurahsSuccess value) getSurahsSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return dataIsAvailableInStorage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_DataIsAvailableInStorage value)?
        dataIsAvailableInStorage,
    TResult? Function(_GetSurahsSuccess value)? getSurahsSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return dataIsAvailableInStorage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_DataIsAvailableInStorage value)? dataIsAvailableInStorage,
    TResult Function(_GetSurahsSuccess value)? getSurahsSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (dataIsAvailableInStorage != null) {
      return dataIsAvailableInStorage(this);
    }
    return orElse();
  }
}

abstract class _DataIsAvailableInStorage implements HomeState {
  const factory _DataIsAvailableInStorage({final ListOfHomeSurah? listSurahs}) =
      _$_DataIsAvailableInStorage;

  ListOfHomeSurah? get listSurahs;
  @JsonKey(ignore: true)
  _$$_DataIsAvailableInStorageCopyWith<_$_DataIsAvailableInStorage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetSurahsSuccessCopyWith<$Res> {
  factory _$$_GetSurahsSuccessCopyWith(
          _$_GetSurahsSuccess value, $Res Function(_$_GetSurahsSuccess) then) =
      __$$_GetSurahsSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ListOfHomeSurah? listSurahs});

  $ListOfHomeSurahCopyWith<$Res>? get listSurahs;
}

/// @nodoc
class __$$_GetSurahsSuccessCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_GetSurahsSuccess>
    implements _$$_GetSurahsSuccessCopyWith<$Res> {
  __$$_GetSurahsSuccessCopyWithImpl(
      _$_GetSurahsSuccess _value, $Res Function(_$_GetSurahsSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listSurahs = freezed,
  }) {
    return _then(_$_GetSurahsSuccess(
      listSurahs: freezed == listSurahs
          ? _value.listSurahs
          : listSurahs // ignore: cast_nullable_to_non_nullable
              as ListOfHomeSurah?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ListOfHomeSurahCopyWith<$Res>? get listSurahs {
    if (_value.listSurahs == null) {
      return null;
    }

    return $ListOfHomeSurahCopyWith<$Res>(_value.listSurahs!, (value) {
      return _then(_value.copyWith(listSurahs: value));
    });
  }
}

/// @nodoc

class _$_GetSurahsSuccess implements _GetSurahsSuccess {
  const _$_GetSurahsSuccess({this.listSurahs});

  @override
  final ListOfHomeSurah? listSurahs;

  @override
  String toString() {
    return 'HomeState.getSurahsSuccess(listSurahs: $listSurahs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSurahsSuccess &&
            (identical(other.listSurahs, listSurahs) ||
                other.listSurahs == listSurahs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listSurahs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSurahsSuccessCopyWith<_$_GetSurahsSuccess> get copyWith =>
      __$$_GetSurahsSuccessCopyWithImpl<_$_GetSurahsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function(ListOfHomeSurah? listSurahs)
        dataIsAvailableInStorage,
    required TResult Function(ListOfHomeSurah? listSurahs) getSurahsSuccess,
    required TResult Function(HomeFailure? failure, String message) failure,
  }) {
    return getSurahsSuccess(listSurahs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(ListOfHomeSurah? listSurahs)? dataIsAvailableInStorage,
    TResult? Function(ListOfHomeSurah? listSurahs)? getSurahsSuccess,
    TResult? Function(HomeFailure? failure, String message)? failure,
  }) {
    return getSurahsSuccess?.call(listSurahs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(ListOfHomeSurah? listSurahs)? dataIsAvailableInStorage,
    TResult Function(ListOfHomeSurah? listSurahs)? getSurahsSuccess,
    TResult Function(HomeFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (getSurahsSuccess != null) {
      return getSurahsSuccess(listSurahs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_DataIsAvailableInStorage value)
        dataIsAvailableInStorage,
    required TResult Function(_GetSurahsSuccess value) getSurahsSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return getSurahsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_DataIsAvailableInStorage value)?
        dataIsAvailableInStorage,
    TResult? Function(_GetSurahsSuccess value)? getSurahsSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return getSurahsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_DataIsAvailableInStorage value)? dataIsAvailableInStorage,
    TResult Function(_GetSurahsSuccess value)? getSurahsSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (getSurahsSuccess != null) {
      return getSurahsSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetSurahsSuccess implements HomeState {
  const factory _GetSurahsSuccess({final ListOfHomeSurah? listSurahs}) =
      _$_GetSurahsSuccess;

  ListOfHomeSurah? get listSurahs;
  @JsonKey(ignore: true)
  _$$_GetSurahsSuccessCopyWith<_$_GetSurahsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeFailure? failure, String message});

  $HomeFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? message = null,
  }) {
    return _then(_$_Failure(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as HomeFailure?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $HomeFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({this.failure, this.message = ''});

  @override
  final HomeFailure? failure;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'HomeState.failure(failure: $failure, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function(ListOfHomeSurah? listSurahs)
        dataIsAvailableInStorage,
    required TResult Function(ListOfHomeSurah? listSurahs) getSurahsSuccess,
    required TResult Function(HomeFailure? failure, String message) failure,
  }) {
    return failure(this.failure, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(ListOfHomeSurah? listSurahs)? dataIsAvailableInStorage,
    TResult? Function(ListOfHomeSurah? listSurahs)? getSurahsSuccess,
    TResult? Function(HomeFailure? failure, String message)? failure,
  }) {
    return failure?.call(this.failure, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(ListOfHomeSurah? listSurahs)? dataIsAvailableInStorage,
    TResult Function(ListOfHomeSurah? listSurahs)? getSurahsSuccess,
    TResult Function(HomeFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_DataIsAvailableInStorage value)
        dataIsAvailableInStorage,
    required TResult Function(_GetSurahsSuccess value) getSurahsSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_DataIsAvailableInStorage value)?
        dataIsAvailableInStorage,
    TResult? Function(_GetSurahsSuccess value)? getSurahsSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_DataIsAvailableInStorage value)? dataIsAvailableInStorage,
    TResult Function(_GetSurahsSuccess value)? getSurahsSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements HomeState {
  const factory _Failure({final HomeFailure? failure, final String message}) =
      _$_Failure;

  HomeFailure? get failure;
  String get message;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeSurahs,
    required TResult Function() checkDataIsAvailable,
    required TResult Function(int surahNumber) openOneSurah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeSurahs,
    TResult? Function()? checkDataIsAvailable,
    TResult? Function(int surahNumber)? openOneSurah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeSurahs,
    TResult Function()? checkDataIsAvailable,
    TResult Function(int surahNumber)? openOneSurah,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeSurahs value) getHomeSurahs,
    required TResult Function(_CheckDataIsAvailable value) checkDataIsAvailable,
    required TResult Function(_OpenOneSurah value) openOneSurah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeSurahs value)? getHomeSurahs,
    TResult? Function(_CheckDataIsAvailable value)? checkDataIsAvailable,
    TResult? Function(_OpenOneSurah value)? openOneSurah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeSurahs value)? getHomeSurahs,
    TResult Function(_CheckDataIsAvailable value)? checkDataIsAvailable,
    TResult Function(_OpenOneSurah value)? openOneSurah,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetHomeSurahsCopyWith<$Res> {
  factory _$$_GetHomeSurahsCopyWith(
          _$_GetHomeSurahs value, $Res Function(_$_GetHomeSurahs) then) =
      __$$_GetHomeSurahsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetHomeSurahsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetHomeSurahs>
    implements _$$_GetHomeSurahsCopyWith<$Res> {
  __$$_GetHomeSurahsCopyWithImpl(
      _$_GetHomeSurahs _value, $Res Function(_$_GetHomeSurahs) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetHomeSurahs implements _GetHomeSurahs {
  const _$_GetHomeSurahs();

  @override
  String toString() {
    return 'HomeEvent.getHomeSurahs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetHomeSurahs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeSurahs,
    required TResult Function() checkDataIsAvailable,
    required TResult Function(int surahNumber) openOneSurah,
  }) {
    return getHomeSurahs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeSurahs,
    TResult? Function()? checkDataIsAvailable,
    TResult? Function(int surahNumber)? openOneSurah,
  }) {
    return getHomeSurahs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeSurahs,
    TResult Function()? checkDataIsAvailable,
    TResult Function(int surahNumber)? openOneSurah,
    required TResult orElse(),
  }) {
    if (getHomeSurahs != null) {
      return getHomeSurahs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeSurahs value) getHomeSurahs,
    required TResult Function(_CheckDataIsAvailable value) checkDataIsAvailable,
    required TResult Function(_OpenOneSurah value) openOneSurah,
  }) {
    return getHomeSurahs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeSurahs value)? getHomeSurahs,
    TResult? Function(_CheckDataIsAvailable value)? checkDataIsAvailable,
    TResult? Function(_OpenOneSurah value)? openOneSurah,
  }) {
    return getHomeSurahs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeSurahs value)? getHomeSurahs,
    TResult Function(_CheckDataIsAvailable value)? checkDataIsAvailable,
    TResult Function(_OpenOneSurah value)? openOneSurah,
    required TResult orElse(),
  }) {
    if (getHomeSurahs != null) {
      return getHomeSurahs(this);
    }
    return orElse();
  }
}

abstract class _GetHomeSurahs implements HomeEvent {
  const factory _GetHomeSurahs() = _$_GetHomeSurahs;
}

/// @nodoc
abstract class _$$_CheckDataIsAvailableCopyWith<$Res> {
  factory _$$_CheckDataIsAvailableCopyWith(_$_CheckDataIsAvailable value,
          $Res Function(_$_CheckDataIsAvailable) then) =
      __$$_CheckDataIsAvailableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckDataIsAvailableCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_CheckDataIsAvailable>
    implements _$$_CheckDataIsAvailableCopyWith<$Res> {
  __$$_CheckDataIsAvailableCopyWithImpl(_$_CheckDataIsAvailable _value,
      $Res Function(_$_CheckDataIsAvailable) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckDataIsAvailable implements _CheckDataIsAvailable {
  const _$_CheckDataIsAvailable();

  @override
  String toString() {
    return 'HomeEvent.checkDataIsAvailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckDataIsAvailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeSurahs,
    required TResult Function() checkDataIsAvailable,
    required TResult Function(int surahNumber) openOneSurah,
  }) {
    return checkDataIsAvailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeSurahs,
    TResult? Function()? checkDataIsAvailable,
    TResult? Function(int surahNumber)? openOneSurah,
  }) {
    return checkDataIsAvailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeSurahs,
    TResult Function()? checkDataIsAvailable,
    TResult Function(int surahNumber)? openOneSurah,
    required TResult orElse(),
  }) {
    if (checkDataIsAvailable != null) {
      return checkDataIsAvailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeSurahs value) getHomeSurahs,
    required TResult Function(_CheckDataIsAvailable value) checkDataIsAvailable,
    required TResult Function(_OpenOneSurah value) openOneSurah,
  }) {
    return checkDataIsAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeSurahs value)? getHomeSurahs,
    TResult? Function(_CheckDataIsAvailable value)? checkDataIsAvailable,
    TResult? Function(_OpenOneSurah value)? openOneSurah,
  }) {
    return checkDataIsAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeSurahs value)? getHomeSurahs,
    TResult Function(_CheckDataIsAvailable value)? checkDataIsAvailable,
    TResult Function(_OpenOneSurah value)? openOneSurah,
    required TResult orElse(),
  }) {
    if (checkDataIsAvailable != null) {
      return checkDataIsAvailable(this);
    }
    return orElse();
  }
}

abstract class _CheckDataIsAvailable implements HomeEvent {
  const factory _CheckDataIsAvailable() = _$_CheckDataIsAvailable;
}

/// @nodoc
abstract class _$$_OpenOneSurahCopyWith<$Res> {
  factory _$$_OpenOneSurahCopyWith(
          _$_OpenOneSurah value, $Res Function(_$_OpenOneSurah) then) =
      __$$_OpenOneSurahCopyWithImpl<$Res>;
  @useResult
  $Res call({int surahNumber});
}

/// @nodoc
class __$$_OpenOneSurahCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_OpenOneSurah>
    implements _$$_OpenOneSurahCopyWith<$Res> {
  __$$_OpenOneSurahCopyWithImpl(
      _$_OpenOneSurah _value, $Res Function(_$_OpenOneSurah) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahNumber = null,
  }) {
    return _then(_$_OpenOneSurah(
      null == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OpenOneSurah implements _OpenOneSurah {
  const _$_OpenOneSurah(this.surahNumber);

  @override
  final int surahNumber;

  @override
  String toString() {
    return 'HomeEvent.openOneSurah(surahNumber: $surahNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenOneSurah &&
            (identical(other.surahNumber, surahNumber) ||
                other.surahNumber == surahNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surahNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenOneSurahCopyWith<_$_OpenOneSurah> get copyWith =>
      __$$_OpenOneSurahCopyWithImpl<_$_OpenOneSurah>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeSurahs,
    required TResult Function() checkDataIsAvailable,
    required TResult Function(int surahNumber) openOneSurah,
  }) {
    return openOneSurah(surahNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeSurahs,
    TResult? Function()? checkDataIsAvailable,
    TResult? Function(int surahNumber)? openOneSurah,
  }) {
    return openOneSurah?.call(surahNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeSurahs,
    TResult Function()? checkDataIsAvailable,
    TResult Function(int surahNumber)? openOneSurah,
    required TResult orElse(),
  }) {
    if (openOneSurah != null) {
      return openOneSurah(surahNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeSurahs value) getHomeSurahs,
    required TResult Function(_CheckDataIsAvailable value) checkDataIsAvailable,
    required TResult Function(_OpenOneSurah value) openOneSurah,
  }) {
    return openOneSurah(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHomeSurahs value)? getHomeSurahs,
    TResult? Function(_CheckDataIsAvailable value)? checkDataIsAvailable,
    TResult? Function(_OpenOneSurah value)? openOneSurah,
  }) {
    return openOneSurah?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeSurahs value)? getHomeSurahs,
    TResult Function(_CheckDataIsAvailable value)? checkDataIsAvailable,
    TResult Function(_OpenOneSurah value)? openOneSurah,
    required TResult orElse(),
  }) {
    if (openOneSurah != null) {
      return openOneSurah(this);
    }
    return orElse();
  }
}

abstract class _OpenOneSurah implements HomeEvent {
  const factory _OpenOneSurah(final int surahNumber) = _$_OpenOneSurah;

  int get surahNumber;
  @JsonKey(ignore: true)
  _$$_OpenOneSurahCopyWith<_$_OpenOneSurah> get copyWith =>
      throw _privateConstructorUsedError;
}
