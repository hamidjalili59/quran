// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'surah_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SurahEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int surahNumber) getSurah,
    required TResult Function(int surahNumber, Surah surah) cacheSurahData,
    required TResult Function(int ayahNumber) changeAyah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int surahNumber)? getSurah,
    TResult? Function(int surahNumber, Surah surah)? cacheSurahData,
    TResult? Function(int ayahNumber)? changeAyah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int surahNumber)? getSurah,
    TResult Function(int surahNumber, Surah surah)? cacheSurahData,
    TResult Function(int ayahNumber)? changeAyah,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSurah value) getSurah,
    required TResult Function(_CacheSurahData value) cacheSurahData,
    required TResult Function(_ChangeAyah value) changeAyah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSurah value)? getSurah,
    TResult? Function(_CacheSurahData value)? cacheSurahData,
    TResult? Function(_ChangeAyah value)? changeAyah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSurah value)? getSurah,
    TResult Function(_CacheSurahData value)? cacheSurahData,
    TResult Function(_ChangeAyah value)? changeAyah,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahEventCopyWith<$Res> {
  factory $SurahEventCopyWith(
          SurahEvent value, $Res Function(SurahEvent) then) =
      _$SurahEventCopyWithImpl<$Res, SurahEvent>;
}

/// @nodoc
class _$SurahEventCopyWithImpl<$Res, $Val extends SurahEvent>
    implements $SurahEventCopyWith<$Res> {
  _$SurahEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetSurahCopyWith<$Res> {
  factory _$$_GetSurahCopyWith(
          _$_GetSurah value, $Res Function(_$_GetSurah) then) =
      __$$_GetSurahCopyWithImpl<$Res>;
  @useResult
  $Res call({int surahNumber});
}

/// @nodoc
class __$$_GetSurahCopyWithImpl<$Res>
    extends _$SurahEventCopyWithImpl<$Res, _$_GetSurah>
    implements _$$_GetSurahCopyWith<$Res> {
  __$$_GetSurahCopyWithImpl(
      _$_GetSurah _value, $Res Function(_$_GetSurah) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahNumber = null,
  }) {
    return _then(_$_GetSurah(
      null == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetSurah implements _GetSurah {
  const _$_GetSurah(this.surahNumber);

  @override
  final int surahNumber;

  @override
  String toString() {
    return 'SurahEvent.getSurah(surahNumber: $surahNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSurah &&
            (identical(other.surahNumber, surahNumber) ||
                other.surahNumber == surahNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surahNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSurahCopyWith<_$_GetSurah> get copyWith =>
      __$$_GetSurahCopyWithImpl<_$_GetSurah>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int surahNumber) getSurah,
    required TResult Function(int surahNumber, Surah surah) cacheSurahData,
    required TResult Function(int ayahNumber) changeAyah,
  }) {
    return getSurah(surahNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int surahNumber)? getSurah,
    TResult? Function(int surahNumber, Surah surah)? cacheSurahData,
    TResult? Function(int ayahNumber)? changeAyah,
  }) {
    return getSurah?.call(surahNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int surahNumber)? getSurah,
    TResult Function(int surahNumber, Surah surah)? cacheSurahData,
    TResult Function(int ayahNumber)? changeAyah,
    required TResult orElse(),
  }) {
    if (getSurah != null) {
      return getSurah(surahNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSurah value) getSurah,
    required TResult Function(_CacheSurahData value) cacheSurahData,
    required TResult Function(_ChangeAyah value) changeAyah,
  }) {
    return getSurah(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSurah value)? getSurah,
    TResult? Function(_CacheSurahData value)? cacheSurahData,
    TResult? Function(_ChangeAyah value)? changeAyah,
  }) {
    return getSurah?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSurah value)? getSurah,
    TResult Function(_CacheSurahData value)? cacheSurahData,
    TResult Function(_ChangeAyah value)? changeAyah,
    required TResult orElse(),
  }) {
    if (getSurah != null) {
      return getSurah(this);
    }
    return orElse();
  }
}

abstract class _GetSurah implements SurahEvent {
  const factory _GetSurah(final int surahNumber) = _$_GetSurah;

  int get surahNumber;
  @JsonKey(ignore: true)
  _$$_GetSurahCopyWith<_$_GetSurah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CacheSurahDataCopyWith<$Res> {
  factory _$$_CacheSurahDataCopyWith(
          _$_CacheSurahData value, $Res Function(_$_CacheSurahData) then) =
      __$$_CacheSurahDataCopyWithImpl<$Res>;
  @useResult
  $Res call({int surahNumber, Surah surah});

  $SurahCopyWith<$Res> get surah;
}

/// @nodoc
class __$$_CacheSurahDataCopyWithImpl<$Res>
    extends _$SurahEventCopyWithImpl<$Res, _$_CacheSurahData>
    implements _$$_CacheSurahDataCopyWith<$Res> {
  __$$_CacheSurahDataCopyWithImpl(
      _$_CacheSurahData _value, $Res Function(_$_CacheSurahData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahNumber = null,
    Object? surah = null,
  }) {
    return _then(_$_CacheSurahData(
      null == surahNumber
          ? _value.surahNumber
          : surahNumber // ignore: cast_nullable_to_non_nullable
              as int,
      null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah,
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

class _$_CacheSurahData implements _CacheSurahData {
  const _$_CacheSurahData(this.surahNumber, this.surah);

  @override
  final int surahNumber;
  @override
  final Surah surah;

  @override
  String toString() {
    return 'SurahEvent.cacheSurahData(surahNumber: $surahNumber, surah: $surah)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CacheSurahData &&
            (identical(other.surahNumber, surahNumber) ||
                other.surahNumber == surahNumber) &&
            (identical(other.surah, surah) || other.surah == surah));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surahNumber, surah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CacheSurahDataCopyWith<_$_CacheSurahData> get copyWith =>
      __$$_CacheSurahDataCopyWithImpl<_$_CacheSurahData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int surahNumber) getSurah,
    required TResult Function(int surahNumber, Surah surah) cacheSurahData,
    required TResult Function(int ayahNumber) changeAyah,
  }) {
    return cacheSurahData(surahNumber, surah);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int surahNumber)? getSurah,
    TResult? Function(int surahNumber, Surah surah)? cacheSurahData,
    TResult? Function(int ayahNumber)? changeAyah,
  }) {
    return cacheSurahData?.call(surahNumber, surah);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int surahNumber)? getSurah,
    TResult Function(int surahNumber, Surah surah)? cacheSurahData,
    TResult Function(int ayahNumber)? changeAyah,
    required TResult orElse(),
  }) {
    if (cacheSurahData != null) {
      return cacheSurahData(surahNumber, surah);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSurah value) getSurah,
    required TResult Function(_CacheSurahData value) cacheSurahData,
    required TResult Function(_ChangeAyah value) changeAyah,
  }) {
    return cacheSurahData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSurah value)? getSurah,
    TResult? Function(_CacheSurahData value)? cacheSurahData,
    TResult? Function(_ChangeAyah value)? changeAyah,
  }) {
    return cacheSurahData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSurah value)? getSurah,
    TResult Function(_CacheSurahData value)? cacheSurahData,
    TResult Function(_ChangeAyah value)? changeAyah,
    required TResult orElse(),
  }) {
    if (cacheSurahData != null) {
      return cacheSurahData(this);
    }
    return orElse();
  }
}

abstract class _CacheSurahData implements SurahEvent {
  const factory _CacheSurahData(final int surahNumber, final Surah surah) =
      _$_CacheSurahData;

  int get surahNumber;
  Surah get surah;
  @JsonKey(ignore: true)
  _$$_CacheSurahDataCopyWith<_$_CacheSurahData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeAyahCopyWith<$Res> {
  factory _$$_ChangeAyahCopyWith(
          _$_ChangeAyah value, $Res Function(_$_ChangeAyah) then) =
      __$$_ChangeAyahCopyWithImpl<$Res>;
  @useResult
  $Res call({int ayahNumber});
}

/// @nodoc
class __$$_ChangeAyahCopyWithImpl<$Res>
    extends _$SurahEventCopyWithImpl<$Res, _$_ChangeAyah>
    implements _$$_ChangeAyahCopyWith<$Res> {
  __$$_ChangeAyahCopyWithImpl(
      _$_ChangeAyah _value, $Res Function(_$_ChangeAyah) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ayahNumber = null,
  }) {
    return _then(_$_ChangeAyah(
      null == ayahNumber
          ? _value.ayahNumber
          : ayahNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeAyah implements _ChangeAyah {
  const _$_ChangeAyah(this.ayahNumber);

  @override
  final int ayahNumber;

  @override
  String toString() {
    return 'SurahEvent.changeAyah(ayahNumber: $ayahNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeAyah &&
            (identical(other.ayahNumber, ayahNumber) ||
                other.ayahNumber == ayahNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ayahNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeAyahCopyWith<_$_ChangeAyah> get copyWith =>
      __$$_ChangeAyahCopyWithImpl<_$_ChangeAyah>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int surahNumber) getSurah,
    required TResult Function(int surahNumber, Surah surah) cacheSurahData,
    required TResult Function(int ayahNumber) changeAyah,
  }) {
    return changeAyah(ayahNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int surahNumber)? getSurah,
    TResult? Function(int surahNumber, Surah surah)? cacheSurahData,
    TResult? Function(int ayahNumber)? changeAyah,
  }) {
    return changeAyah?.call(ayahNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int surahNumber)? getSurah,
    TResult Function(int surahNumber, Surah surah)? cacheSurahData,
    TResult Function(int ayahNumber)? changeAyah,
    required TResult orElse(),
  }) {
    if (changeAyah != null) {
      return changeAyah(ayahNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSurah value) getSurah,
    required TResult Function(_CacheSurahData value) cacheSurahData,
    required TResult Function(_ChangeAyah value) changeAyah,
  }) {
    return changeAyah(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSurah value)? getSurah,
    TResult? Function(_CacheSurahData value)? cacheSurahData,
    TResult? Function(_ChangeAyah value)? changeAyah,
  }) {
    return changeAyah?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSurah value)? getSurah,
    TResult Function(_CacheSurahData value)? cacheSurahData,
    TResult Function(_ChangeAyah value)? changeAyah,
    required TResult orElse(),
  }) {
    if (changeAyah != null) {
      return changeAyah(this);
    }
    return orElse();
  }
}

abstract class _ChangeAyah implements SurahEvent {
  const factory _ChangeAyah(final int ayahNumber) = _$_ChangeAyah;

  int get ayahNumber;
  @JsonKey(ignore: true)
  _$$_ChangeAyahCopyWith<_$_ChangeAyah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SurahState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function(Surah? surah) getSurahSuccess,
    required TResult Function(int currentAyah, Surah? surah) ayahIndex,
    required TResult Function(SurahFailure? failure, String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(Surah? surah)? getSurahSuccess,
    TResult? Function(int currentAyah, Surah? surah)? ayahIndex,
    TResult? Function(SurahFailure? failure, String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(Surah? surah)? getSurahSuccess,
    TResult Function(int currentAyah, Surah? surah)? ayahIndex,
    TResult Function(SurahFailure? failure, String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_GetSurahSuccess value) getSurahSuccess,
    required TResult Function(_AyahIndex value) ayahIndex,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_GetSurahSuccess value)? getSurahSuccess,
    TResult? Function(_AyahIndex value)? ayahIndex,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_GetSurahSuccess value)? getSurahSuccess,
    TResult Function(_AyahIndex value)? ayahIndex,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahStateCopyWith<$Res> {
  factory $SurahStateCopyWith(
          SurahState value, $Res Function(SurahState) then) =
      _$SurahStateCopyWithImpl<$Res, SurahState>;
}

/// @nodoc
class _$SurahStateCopyWithImpl<$Res, $Val extends SurahState>
    implements $SurahStateCopyWith<$Res> {
  _$SurahStateCopyWithImpl(this._value, this._then);

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
    extends _$SurahStateCopyWithImpl<$Res, _$_Idle>
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
    return 'SurahState.idle(isLoading: $isLoading)';
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
    required TResult Function(Surah? surah) getSurahSuccess,
    required TResult Function(int currentAyah, Surah? surah) ayahIndex,
    required TResult Function(SurahFailure? failure, String message) failure,
  }) {
    return idle(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(Surah? surah)? getSurahSuccess,
    TResult? Function(int currentAyah, Surah? surah)? ayahIndex,
    TResult? Function(SurahFailure? failure, String message)? failure,
  }) {
    return idle?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(Surah? surah)? getSurahSuccess,
    TResult Function(int currentAyah, Surah? surah)? ayahIndex,
    TResult Function(SurahFailure? failure, String message)? failure,
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
    required TResult Function(_GetSurahSuccess value) getSurahSuccess,
    required TResult Function(_AyahIndex value) ayahIndex,
    required TResult Function(_Failure value) failure,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_GetSurahSuccess value)? getSurahSuccess,
    TResult? Function(_AyahIndex value)? ayahIndex,
    TResult? Function(_Failure value)? failure,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_GetSurahSuccess value)? getSurahSuccess,
    TResult Function(_AyahIndex value)? ayahIndex,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements SurahState {
  const factory _Idle({final bool isLoading}) = _$_Idle;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetSurahSuccessCopyWith<$Res> {
  factory _$$_GetSurahSuccessCopyWith(
          _$_GetSurahSuccess value, $Res Function(_$_GetSurahSuccess) then) =
      __$$_GetSurahSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Surah? surah});

  $SurahCopyWith<$Res>? get surah;
}

/// @nodoc
class __$$_GetSurahSuccessCopyWithImpl<$Res>
    extends _$SurahStateCopyWithImpl<$Res, _$_GetSurahSuccess>
    implements _$$_GetSurahSuccessCopyWith<$Res> {
  __$$_GetSurahSuccessCopyWithImpl(
      _$_GetSurahSuccess _value, $Res Function(_$_GetSurahSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surah = freezed,
  }) {
    return _then(_$_GetSurahSuccess(
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahCopyWith<$Res>? get surah {
    if (_value.surah == null) {
      return null;
    }

    return $SurahCopyWith<$Res>(_value.surah!, (value) {
      return _then(_value.copyWith(surah: value));
    });
  }
}

/// @nodoc

class _$_GetSurahSuccess implements _GetSurahSuccess {
  const _$_GetSurahSuccess({this.surah});

  @override
  final Surah? surah;

  @override
  String toString() {
    return 'SurahState.getSurahSuccess(surah: $surah)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSurahSuccess &&
            (identical(other.surah, surah) || other.surah == surah));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSurahSuccessCopyWith<_$_GetSurahSuccess> get copyWith =>
      __$$_GetSurahSuccessCopyWithImpl<_$_GetSurahSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function(Surah? surah) getSurahSuccess,
    required TResult Function(int currentAyah, Surah? surah) ayahIndex,
    required TResult Function(SurahFailure? failure, String message) failure,
  }) {
    return getSurahSuccess(surah);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(Surah? surah)? getSurahSuccess,
    TResult? Function(int currentAyah, Surah? surah)? ayahIndex,
    TResult? Function(SurahFailure? failure, String message)? failure,
  }) {
    return getSurahSuccess?.call(surah);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(Surah? surah)? getSurahSuccess,
    TResult Function(int currentAyah, Surah? surah)? ayahIndex,
    TResult Function(SurahFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (getSurahSuccess != null) {
      return getSurahSuccess(surah);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_GetSurahSuccess value) getSurahSuccess,
    required TResult Function(_AyahIndex value) ayahIndex,
    required TResult Function(_Failure value) failure,
  }) {
    return getSurahSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_GetSurahSuccess value)? getSurahSuccess,
    TResult? Function(_AyahIndex value)? ayahIndex,
    TResult? Function(_Failure value)? failure,
  }) {
    return getSurahSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_GetSurahSuccess value)? getSurahSuccess,
    TResult Function(_AyahIndex value)? ayahIndex,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (getSurahSuccess != null) {
      return getSurahSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetSurahSuccess implements SurahState {
  const factory _GetSurahSuccess({final Surah? surah}) = _$_GetSurahSuccess;

  Surah? get surah;
  @JsonKey(ignore: true)
  _$$_GetSurahSuccessCopyWith<_$_GetSurahSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AyahIndexCopyWith<$Res> {
  factory _$$_AyahIndexCopyWith(
          _$_AyahIndex value, $Res Function(_$_AyahIndex) then) =
      __$$_AyahIndexCopyWithImpl<$Res>;
  @useResult
  $Res call({int currentAyah, Surah? surah});

  $SurahCopyWith<$Res>? get surah;
}

/// @nodoc
class __$$_AyahIndexCopyWithImpl<$Res>
    extends _$SurahStateCopyWithImpl<$Res, _$_AyahIndex>
    implements _$$_AyahIndexCopyWith<$Res> {
  __$$_AyahIndexCopyWithImpl(
      _$_AyahIndex _value, $Res Function(_$_AyahIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentAyah = null,
    Object? surah = freezed,
  }) {
    return _then(_$_AyahIndex(
      currentAyah: null == currentAyah
          ? _value.currentAyah
          : currentAyah // ignore: cast_nullable_to_non_nullable
              as int,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahCopyWith<$Res>? get surah {
    if (_value.surah == null) {
      return null;
    }

    return $SurahCopyWith<$Res>(_value.surah!, (value) {
      return _then(_value.copyWith(surah: value));
    });
  }
}

/// @nodoc

class _$_AyahIndex implements _AyahIndex {
  const _$_AyahIndex({this.currentAyah = 0, this.surah});

  @override
  @JsonKey()
  final int currentAyah;
  @override
  final Surah? surah;

  @override
  String toString() {
    return 'SurahState.ayahIndex(currentAyah: $currentAyah, surah: $surah)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AyahIndex &&
            (identical(other.currentAyah, currentAyah) ||
                other.currentAyah == currentAyah) &&
            (identical(other.surah, surah) || other.surah == surah));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentAyah, surah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AyahIndexCopyWith<_$_AyahIndex> get copyWith =>
      __$$_AyahIndexCopyWithImpl<_$_AyahIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function(Surah? surah) getSurahSuccess,
    required TResult Function(int currentAyah, Surah? surah) ayahIndex,
    required TResult Function(SurahFailure? failure, String message) failure,
  }) {
    return ayahIndex(currentAyah, surah);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(Surah? surah)? getSurahSuccess,
    TResult? Function(int currentAyah, Surah? surah)? ayahIndex,
    TResult? Function(SurahFailure? failure, String message)? failure,
  }) {
    return ayahIndex?.call(currentAyah, surah);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(Surah? surah)? getSurahSuccess,
    TResult Function(int currentAyah, Surah? surah)? ayahIndex,
    TResult Function(SurahFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (ayahIndex != null) {
      return ayahIndex(currentAyah, surah);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_GetSurahSuccess value) getSurahSuccess,
    required TResult Function(_AyahIndex value) ayahIndex,
    required TResult Function(_Failure value) failure,
  }) {
    return ayahIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_GetSurahSuccess value)? getSurahSuccess,
    TResult? Function(_AyahIndex value)? ayahIndex,
    TResult? Function(_Failure value)? failure,
  }) {
    return ayahIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_GetSurahSuccess value)? getSurahSuccess,
    TResult Function(_AyahIndex value)? ayahIndex,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (ayahIndex != null) {
      return ayahIndex(this);
    }
    return orElse();
  }
}

abstract class _AyahIndex implements SurahState {
  const factory _AyahIndex({final int currentAyah, final Surah? surah}) =
      _$_AyahIndex;

  int get currentAyah;
  Surah? get surah;
  @JsonKey(ignore: true)
  _$$_AyahIndexCopyWith<_$_AyahIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({SurahFailure? failure, String message});

  $SurahFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$SurahStateCopyWithImpl<$Res, _$_Failure>
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
              as SurahFailure?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $SurahFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({this.failure, this.message = ''});

  @override
  final SurahFailure? failure;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'SurahState.failure(failure: $failure, message: $message)';
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
    required TResult Function(Surah? surah) getSurahSuccess,
    required TResult Function(int currentAyah, Surah? surah) ayahIndex,
    required TResult Function(SurahFailure? failure, String message) failure,
  }) {
    return failure(this.failure, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(Surah? surah)? getSurahSuccess,
    TResult? Function(int currentAyah, Surah? surah)? ayahIndex,
    TResult? Function(SurahFailure? failure, String message)? failure,
  }) {
    return failure?.call(this.failure, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(Surah? surah)? getSurahSuccess,
    TResult Function(int currentAyah, Surah? surah)? ayahIndex,
    TResult Function(SurahFailure? failure, String message)? failure,
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
    required TResult Function(_GetSurahSuccess value) getSurahSuccess,
    required TResult Function(_AyahIndex value) ayahIndex,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_GetSurahSuccess value)? getSurahSuccess,
    TResult? Function(_AyahIndex value)? ayahIndex,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_GetSurahSuccess value)? getSurahSuccess,
    TResult Function(_AyahIndex value)? ayahIndex,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SurahState {
  const factory _Failure({final SurahFailure? failure, final String message}) =
      _$_Failure;

  SurahFailure? get failure;
  String get message;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
