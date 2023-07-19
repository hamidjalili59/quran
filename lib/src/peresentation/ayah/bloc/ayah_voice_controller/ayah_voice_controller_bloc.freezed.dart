// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayah_voice_controller_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AyahVoiceControllerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function() dataIsAvailableInStorage,
    required TResult Function() getAudioSuccess,
    required TResult Function(AyahFailure? failure, String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function()? dataIsAvailableInStorage,
    TResult? Function()? getAudioSuccess,
    TResult? Function(AyahFailure? failure, String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function()? dataIsAvailableInStorage,
    TResult Function()? getAudioSuccess,
    TResult Function(AyahFailure? failure, String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_DataIsAvailableInStorage value)
        dataIsAvailableInStorage,
    required TResult Function(_GetAudioSuccess value) getAudioSuccess,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_DataIsAvailableInStorage value)?
        dataIsAvailableInStorage,
    TResult? Function(_GetAudioSuccess value)? getAudioSuccess,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_DataIsAvailableInStorage value)? dataIsAvailableInStorage,
    TResult Function(_GetAudioSuccess value)? getAudioSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahVoiceControllerStateCopyWith<$Res> {
  factory $AyahVoiceControllerStateCopyWith(AyahVoiceControllerState value,
          $Res Function(AyahVoiceControllerState) then) =
      _$AyahVoiceControllerStateCopyWithImpl<$Res, AyahVoiceControllerState>;
}

/// @nodoc
class _$AyahVoiceControllerStateCopyWithImpl<$Res,
        $Val extends AyahVoiceControllerState>
    implements $AyahVoiceControllerStateCopyWith<$Res> {
  _$AyahVoiceControllerStateCopyWithImpl(this._value, this._then);

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
class __$$_IdleCopyWithImpl<$Res>
    extends _$AyahVoiceControllerStateCopyWithImpl<$Res, _$_Idle>
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
    return 'AyahVoiceControllerState.idle(isLoading: $isLoading)';
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
    required TResult Function() dataIsAvailableInStorage,
    required TResult Function() getAudioSuccess,
    required TResult Function(AyahFailure? failure, String message) failure,
  }) {
    return idle(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function()? dataIsAvailableInStorage,
    TResult? Function()? getAudioSuccess,
    TResult? Function(AyahFailure? failure, String message)? failure,
  }) {
    return idle?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function()? dataIsAvailableInStorage,
    TResult Function()? getAudioSuccess,
    TResult Function(AyahFailure? failure, String message)? failure,
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
    required TResult Function(_GetAudioSuccess value) getAudioSuccess,
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
    TResult? Function(_GetAudioSuccess value)? getAudioSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_DataIsAvailableInStorage value)? dataIsAvailableInStorage,
    TResult Function(_GetAudioSuccess value)? getAudioSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements AyahVoiceControllerState {
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
}

/// @nodoc
class __$$_DataIsAvailableInStorageCopyWithImpl<$Res>
    extends _$AyahVoiceControllerStateCopyWithImpl<$Res,
        _$_DataIsAvailableInStorage>
    implements _$$_DataIsAvailableInStorageCopyWith<$Res> {
  __$$_DataIsAvailableInStorageCopyWithImpl(_$_DataIsAvailableInStorage _value,
      $Res Function(_$_DataIsAvailableInStorage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DataIsAvailableInStorage implements _DataIsAvailableInStorage {
  const _$_DataIsAvailableInStorage();

  @override
  String toString() {
    return 'AyahVoiceControllerState.dataIsAvailableInStorage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataIsAvailableInStorage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function() dataIsAvailableInStorage,
    required TResult Function() getAudioSuccess,
    required TResult Function(AyahFailure? failure, String message) failure,
  }) {
    return dataIsAvailableInStorage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function()? dataIsAvailableInStorage,
    TResult? Function()? getAudioSuccess,
    TResult? Function(AyahFailure? failure, String message)? failure,
  }) {
    return dataIsAvailableInStorage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function()? dataIsAvailableInStorage,
    TResult Function()? getAudioSuccess,
    TResult Function(AyahFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (dataIsAvailableInStorage != null) {
      return dataIsAvailableInStorage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_DataIsAvailableInStorage value)
        dataIsAvailableInStorage,
    required TResult Function(_GetAudioSuccess value) getAudioSuccess,
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
    TResult? Function(_GetAudioSuccess value)? getAudioSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return dataIsAvailableInStorage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_DataIsAvailableInStorage value)? dataIsAvailableInStorage,
    TResult Function(_GetAudioSuccess value)? getAudioSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (dataIsAvailableInStorage != null) {
      return dataIsAvailableInStorage(this);
    }
    return orElse();
  }
}

abstract class _DataIsAvailableInStorage implements AyahVoiceControllerState {
  const factory _DataIsAvailableInStorage() = _$_DataIsAvailableInStorage;
}

/// @nodoc
abstract class _$$_GetAudioSuccessCopyWith<$Res> {
  factory _$$_GetAudioSuccessCopyWith(
          _$_GetAudioSuccess value, $Res Function(_$_GetAudioSuccess) then) =
      __$$_GetAudioSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAudioSuccessCopyWithImpl<$Res>
    extends _$AyahVoiceControllerStateCopyWithImpl<$Res, _$_GetAudioSuccess>
    implements _$$_GetAudioSuccessCopyWith<$Res> {
  __$$_GetAudioSuccessCopyWithImpl(
      _$_GetAudioSuccess _value, $Res Function(_$_GetAudioSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAudioSuccess implements _GetAudioSuccess {
  const _$_GetAudioSuccess();

  @override
  String toString() {
    return 'AyahVoiceControllerState.getAudioSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAudioSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function() dataIsAvailableInStorage,
    required TResult Function() getAudioSuccess,
    required TResult Function(AyahFailure? failure, String message) failure,
  }) {
    return getAudioSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function()? dataIsAvailableInStorage,
    TResult? Function()? getAudioSuccess,
    TResult? Function(AyahFailure? failure, String message)? failure,
  }) {
    return getAudioSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function()? dataIsAvailableInStorage,
    TResult Function()? getAudioSuccess,
    TResult Function(AyahFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (getAudioSuccess != null) {
      return getAudioSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_DataIsAvailableInStorage value)
        dataIsAvailableInStorage,
    required TResult Function(_GetAudioSuccess value) getAudioSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return getAudioSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_DataIsAvailableInStorage value)?
        dataIsAvailableInStorage,
    TResult? Function(_GetAudioSuccess value)? getAudioSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return getAudioSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_DataIsAvailableInStorage value)? dataIsAvailableInStorage,
    TResult Function(_GetAudioSuccess value)? getAudioSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (getAudioSuccess != null) {
      return getAudioSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetAudioSuccess implements AyahVoiceControllerState {
  const factory _GetAudioSuccess() = _$_GetAudioSuccess;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({AyahFailure? failure, String message});

  $AyahFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$AyahVoiceControllerStateCopyWithImpl<$Res, _$_Failure>
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
              as AyahFailure?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AyahFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $AyahFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({this.failure, this.message = ''});

  @override
  final AyahFailure? failure;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AyahVoiceControllerState.failure(failure: $failure, message: $message)';
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
    required TResult Function() dataIsAvailableInStorage,
    required TResult Function() getAudioSuccess,
    required TResult Function(AyahFailure? failure, String message) failure,
  }) {
    return failure(this.failure, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function()? dataIsAvailableInStorage,
    TResult? Function()? getAudioSuccess,
    TResult? Function(AyahFailure? failure, String message)? failure,
  }) {
    return failure?.call(this.failure, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function()? dataIsAvailableInStorage,
    TResult Function()? getAudioSuccess,
    TResult Function(AyahFailure? failure, String message)? failure,
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
    required TResult Function(_GetAudioSuccess value) getAudioSuccess,
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
    TResult? Function(_GetAudioSuccess value)? getAudioSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_DataIsAvailableInStorage value)? dataIsAvailableInStorage,
    TResult Function(_GetAudioSuccess value)? getAudioSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AyahVoiceControllerState {
  const factory _Failure({final AyahFailure? failure, final String message}) =
      _$_Failure;

  AyahFailure? get failure;
  String get message;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AyahVoiceControllerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ayahAudioLink) getAyahAudio,
    required TResult Function() checkDataIsAvailable,
    required TResult Function(int ayahNumber, Surah surah, String link)
        playAyah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ayahAudioLink)? getAyahAudio,
    TResult? Function()? checkDataIsAvailable,
    TResult? Function(int ayahNumber, Surah surah, String link)? playAyah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ayahAudioLink)? getAyahAudio,
    TResult Function()? checkDataIsAvailable,
    TResult Function(int ayahNumber, Surah surah, String link)? playAyah,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAyahAudio value) getAyahAudio,
    required TResult Function(_CheckDataIsAvailable value) checkDataIsAvailable,
    required TResult Function(_PlayAyah value) playAyah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAyahAudio value)? getAyahAudio,
    TResult? Function(_CheckDataIsAvailable value)? checkDataIsAvailable,
    TResult? Function(_PlayAyah value)? playAyah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAyahAudio value)? getAyahAudio,
    TResult Function(_CheckDataIsAvailable value)? checkDataIsAvailable,
    TResult Function(_PlayAyah value)? playAyah,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahVoiceControllerEventCopyWith<$Res> {
  factory $AyahVoiceControllerEventCopyWith(AyahVoiceControllerEvent value,
          $Res Function(AyahVoiceControllerEvent) then) =
      _$AyahVoiceControllerEventCopyWithImpl<$Res, AyahVoiceControllerEvent>;
}

/// @nodoc
class _$AyahVoiceControllerEventCopyWithImpl<$Res,
        $Val extends AyahVoiceControllerEvent>
    implements $AyahVoiceControllerEventCopyWith<$Res> {
  _$AyahVoiceControllerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetAyahAudioCopyWith<$Res> {
  factory _$$_GetAyahAudioCopyWith(
          _$_GetAyahAudio value, $Res Function(_$_GetAyahAudio) then) =
      __$$_GetAyahAudioCopyWithImpl<$Res>;
  @useResult
  $Res call({String ayahAudioLink});
}

/// @nodoc
class __$$_GetAyahAudioCopyWithImpl<$Res>
    extends _$AyahVoiceControllerEventCopyWithImpl<$Res, _$_GetAyahAudio>
    implements _$$_GetAyahAudioCopyWith<$Res> {
  __$$_GetAyahAudioCopyWithImpl(
      _$_GetAyahAudio _value, $Res Function(_$_GetAyahAudio) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ayahAudioLink = null,
  }) {
    return _then(_$_GetAyahAudio(
      null == ayahAudioLink
          ? _value.ayahAudioLink
          : ayahAudioLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAyahAudio implements _GetAyahAudio {
  const _$_GetAyahAudio(this.ayahAudioLink);

  @override
  final String ayahAudioLink;

  @override
  String toString() {
    return 'AyahVoiceControllerEvent.getAyahAudio(ayahAudioLink: $ayahAudioLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAyahAudio &&
            (identical(other.ayahAudioLink, ayahAudioLink) ||
                other.ayahAudioLink == ayahAudioLink));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ayahAudioLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAyahAudioCopyWith<_$_GetAyahAudio> get copyWith =>
      __$$_GetAyahAudioCopyWithImpl<_$_GetAyahAudio>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ayahAudioLink) getAyahAudio,
    required TResult Function() checkDataIsAvailable,
    required TResult Function(int ayahNumber, Surah surah, String link)
        playAyah,
  }) {
    return getAyahAudio(ayahAudioLink);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ayahAudioLink)? getAyahAudio,
    TResult? Function()? checkDataIsAvailable,
    TResult? Function(int ayahNumber, Surah surah, String link)? playAyah,
  }) {
    return getAyahAudio?.call(ayahAudioLink);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ayahAudioLink)? getAyahAudio,
    TResult Function()? checkDataIsAvailable,
    TResult Function(int ayahNumber, Surah surah, String link)? playAyah,
    required TResult orElse(),
  }) {
    if (getAyahAudio != null) {
      return getAyahAudio(ayahAudioLink);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAyahAudio value) getAyahAudio,
    required TResult Function(_CheckDataIsAvailable value) checkDataIsAvailable,
    required TResult Function(_PlayAyah value) playAyah,
  }) {
    return getAyahAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAyahAudio value)? getAyahAudio,
    TResult? Function(_CheckDataIsAvailable value)? checkDataIsAvailable,
    TResult? Function(_PlayAyah value)? playAyah,
  }) {
    return getAyahAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAyahAudio value)? getAyahAudio,
    TResult Function(_CheckDataIsAvailable value)? checkDataIsAvailable,
    TResult Function(_PlayAyah value)? playAyah,
    required TResult orElse(),
  }) {
    if (getAyahAudio != null) {
      return getAyahAudio(this);
    }
    return orElse();
  }
}

abstract class _GetAyahAudio implements AyahVoiceControllerEvent {
  const factory _GetAyahAudio(final String ayahAudioLink) = _$_GetAyahAudio;

  String get ayahAudioLink;
  @JsonKey(ignore: true)
  _$$_GetAyahAudioCopyWith<_$_GetAyahAudio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckDataIsAvailableCopyWith<$Res> {
  factory _$$_CheckDataIsAvailableCopyWith(_$_CheckDataIsAvailable value,
          $Res Function(_$_CheckDataIsAvailable) then) =
      __$$_CheckDataIsAvailableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckDataIsAvailableCopyWithImpl<$Res>
    extends _$AyahVoiceControllerEventCopyWithImpl<$Res,
        _$_CheckDataIsAvailable>
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
    return 'AyahVoiceControllerEvent.checkDataIsAvailable()';
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
    required TResult Function(String ayahAudioLink) getAyahAudio,
    required TResult Function() checkDataIsAvailable,
    required TResult Function(int ayahNumber, Surah surah, String link)
        playAyah,
  }) {
    return checkDataIsAvailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ayahAudioLink)? getAyahAudio,
    TResult? Function()? checkDataIsAvailable,
    TResult? Function(int ayahNumber, Surah surah, String link)? playAyah,
  }) {
    return checkDataIsAvailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ayahAudioLink)? getAyahAudio,
    TResult Function()? checkDataIsAvailable,
    TResult Function(int ayahNumber, Surah surah, String link)? playAyah,
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
    required TResult Function(_GetAyahAudio value) getAyahAudio,
    required TResult Function(_CheckDataIsAvailable value) checkDataIsAvailable,
    required TResult Function(_PlayAyah value) playAyah,
  }) {
    return checkDataIsAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAyahAudio value)? getAyahAudio,
    TResult? Function(_CheckDataIsAvailable value)? checkDataIsAvailable,
    TResult? Function(_PlayAyah value)? playAyah,
  }) {
    return checkDataIsAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAyahAudio value)? getAyahAudio,
    TResult Function(_CheckDataIsAvailable value)? checkDataIsAvailable,
    TResult Function(_PlayAyah value)? playAyah,
    required TResult orElse(),
  }) {
    if (checkDataIsAvailable != null) {
      return checkDataIsAvailable(this);
    }
    return orElse();
  }
}

abstract class _CheckDataIsAvailable implements AyahVoiceControllerEvent {
  const factory _CheckDataIsAvailable() = _$_CheckDataIsAvailable;
}

/// @nodoc
abstract class _$$_PlayAyahCopyWith<$Res> {
  factory _$$_PlayAyahCopyWith(
          _$_PlayAyah value, $Res Function(_$_PlayAyah) then) =
      __$$_PlayAyahCopyWithImpl<$Res>;
  @useResult
  $Res call({int ayahNumber, Surah surah, String link});

  $SurahCopyWith<$Res> get surah;
}

/// @nodoc
class __$$_PlayAyahCopyWithImpl<$Res>
    extends _$AyahVoiceControllerEventCopyWithImpl<$Res, _$_PlayAyah>
    implements _$$_PlayAyahCopyWith<$Res> {
  __$$_PlayAyahCopyWithImpl(
      _$_PlayAyah _value, $Res Function(_$_PlayAyah) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ayahNumber = null,
    Object? surah = null,
    Object? link = null,
  }) {
    return _then(_$_PlayAyah(
      null == ayahNumber
          ? _value.ayahNumber
          : ayahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah,
      null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahCopyWith<$Res> get surah {
    return $SurahCopyWith<$Res>(_value.surah, (value) {
      return _then(_value.copyWith(surah: value));
    });
  }
}

/// @nodoc

class _$_PlayAyah implements _PlayAyah {
  const _$_PlayAyah(this.ayahNumber, this.surah, this.link);

  @override
  final int ayahNumber;
  @override
  final Surah surah;
  @override
  final String link;

  @override
  String toString() {
    return 'AyahVoiceControllerEvent.playAyah(ayahNumber: $ayahNumber, surah: $surah, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayAyah &&
            (identical(other.ayahNumber, ayahNumber) ||
                other.ayahNumber == ayahNumber) &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ayahNumber, surah, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayAyahCopyWith<_$_PlayAyah> get copyWith =>
      __$$_PlayAyahCopyWithImpl<_$_PlayAyah>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ayahAudioLink) getAyahAudio,
    required TResult Function() checkDataIsAvailable,
    required TResult Function(int ayahNumber, Surah surah, String link)
        playAyah,
  }) {
    return playAyah(ayahNumber, surah, link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ayahAudioLink)? getAyahAudio,
    TResult? Function()? checkDataIsAvailable,
    TResult? Function(int ayahNumber, Surah surah, String link)? playAyah,
  }) {
    return playAyah?.call(ayahNumber, surah, link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ayahAudioLink)? getAyahAudio,
    TResult Function()? checkDataIsAvailable,
    TResult Function(int ayahNumber, Surah surah, String link)? playAyah,
    required TResult orElse(),
  }) {
    if (playAyah != null) {
      return playAyah(ayahNumber, surah, link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAyahAudio value) getAyahAudio,
    required TResult Function(_CheckDataIsAvailable value) checkDataIsAvailable,
    required TResult Function(_PlayAyah value) playAyah,
  }) {
    return playAyah(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAyahAudio value)? getAyahAudio,
    TResult? Function(_CheckDataIsAvailable value)? checkDataIsAvailable,
    TResult? Function(_PlayAyah value)? playAyah,
  }) {
    return playAyah?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAyahAudio value)? getAyahAudio,
    TResult Function(_CheckDataIsAvailable value)? checkDataIsAvailable,
    TResult Function(_PlayAyah value)? playAyah,
    required TResult orElse(),
  }) {
    if (playAyah != null) {
      return playAyah(this);
    }
    return orElse();
  }
}

abstract class _PlayAyah implements AyahVoiceControllerEvent {
  const factory _PlayAyah(
      final int ayahNumber, final Surah surah, final String link) = _$_PlayAyah;

  int get ayahNumber;
  Surah get surah;
  String get link;
  @JsonKey(ignore: true)
  _$$_PlayAyahCopyWith<_$_PlayAyah> get copyWith =>
      throw _privateConstructorUsedError;
}
