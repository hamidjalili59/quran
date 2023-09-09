// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_surah.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentSurah _$CurrentSurahFromJson(Map<String, dynamic> json) {
  return _CurrentSurah.fromJson(json);
}

/// @nodoc
mixin _$CurrentSurah {
  @HiveField(0, defaultValue: 0)
  int get currentAyah => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: '')
  String get audioLink => throw _privateConstructorUsedError;
  @HiveField(2)
  Surah? get surah => throw _privateConstructorUsedError;
  @HiveField(3)
  Surah? get translate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentSurahCopyWith<CurrentSurah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentSurahCopyWith<$Res> {
  factory $CurrentSurahCopyWith(
          CurrentSurah value, $Res Function(CurrentSurah) then) =
      _$CurrentSurahCopyWithImpl<$Res, CurrentSurah>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0) int currentAyah,
      @HiveField(1, defaultValue: '') String audioLink,
      @HiveField(2) Surah? surah,
      @HiveField(3) Surah? translate});

  $SurahCopyWith<$Res>? get surah;
  $SurahCopyWith<$Res>? get translate;
}

/// @nodoc
class _$CurrentSurahCopyWithImpl<$Res, $Val extends CurrentSurah>
    implements $CurrentSurahCopyWith<$Res> {
  _$CurrentSurahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentAyah = null,
    Object? audioLink = null,
    Object? surah = freezed,
    Object? translate = freezed,
  }) {
    return _then(_value.copyWith(
      currentAyah: null == currentAyah
          ? _value.currentAyah
          : currentAyah // ignore: cast_nullable_to_non_nullable
              as int,
      audioLink: null == audioLink
          ? _value.audioLink
          : audioLink // ignore: cast_nullable_to_non_nullable
              as String,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah?,
      translate: freezed == translate
          ? _value.translate
          : translate // ignore: cast_nullable_to_non_nullable
              as Surah?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahCopyWith<$Res>? get surah {
    if (_value.surah == null) {
      return null;
    }

    return $SurahCopyWith<$Res>(_value.surah!, (value) {
      return _then(_value.copyWith(surah: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SurahCopyWith<$Res>? get translate {
    if (_value.translate == null) {
      return null;
    }

    return $SurahCopyWith<$Res>(_value.translate!, (value) {
      return _then(_value.copyWith(translate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CurrentSurahCopyWith<$Res>
    implements $CurrentSurahCopyWith<$Res> {
  factory _$$_CurrentSurahCopyWith(
          _$_CurrentSurah value, $Res Function(_$_CurrentSurah) then) =
      __$$_CurrentSurahCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0) int currentAyah,
      @HiveField(1, defaultValue: '') String audioLink,
      @HiveField(2) Surah? surah,
      @HiveField(3) Surah? translate});

  @override
  $SurahCopyWith<$Res>? get surah;
  @override
  $SurahCopyWith<$Res>? get translate;
}

/// @nodoc
class __$$_CurrentSurahCopyWithImpl<$Res>
    extends _$CurrentSurahCopyWithImpl<$Res, _$_CurrentSurah>
    implements _$$_CurrentSurahCopyWith<$Res> {
  __$$_CurrentSurahCopyWithImpl(
      _$_CurrentSurah _value, $Res Function(_$_CurrentSurah) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentAyah = null,
    Object? audioLink = null,
    Object? surah = freezed,
    Object? translate = freezed,
  }) {
    return _then(_$_CurrentSurah(
      currentAyah: null == currentAyah
          ? _value.currentAyah
          : currentAyah // ignore: cast_nullable_to_non_nullable
              as int,
      audioLink: null == audioLink
          ? _value.audioLink
          : audioLink // ignore: cast_nullable_to_non_nullable
              as String,
      surah: freezed == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah?,
      translate: freezed == translate
          ? _value.translate
          : translate // ignore: cast_nullable_to_non_nullable
              as Surah?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentSurah implements _CurrentSurah {
  _$_CurrentSurah(
      {@HiveField(0, defaultValue: 0) this.currentAyah = 0,
      @HiveField(1, defaultValue: '') this.audioLink = '',
      @HiveField(2) this.surah,
      @HiveField(3) this.translate});

  factory _$_CurrentSurah.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentSurahFromJson(json);

  @override
  @JsonKey()
  @HiveField(0, defaultValue: 0)
  final int currentAyah;
  @override
  @JsonKey()
  @HiveField(1, defaultValue: '')
  final String audioLink;
  @override
  @HiveField(2)
  final Surah? surah;
  @override
  @HiveField(3)
  final Surah? translate;

  @override
  String toString() {
    return 'CurrentSurah(currentAyah: $currentAyah, audioLink: $audioLink, surah: $surah, translate: $translate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentSurah &&
            (identical(other.currentAyah, currentAyah) ||
                other.currentAyah == currentAyah) &&
            (identical(other.audioLink, audioLink) ||
                other.audioLink == audioLink) &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.translate, translate) ||
                other.translate == translate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentAyah, audioLink, surah, translate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentSurahCopyWith<_$_CurrentSurah> get copyWith =>
      __$$_CurrentSurahCopyWithImpl<_$_CurrentSurah>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentSurahToJson(
      this,
    );
  }
}

abstract class _CurrentSurah implements CurrentSurah {
  factory _CurrentSurah(
      {@HiveField(0, defaultValue: 0) final int currentAyah,
      @HiveField(1, defaultValue: '') final String audioLink,
      @HiveField(2) final Surah? surah,
      @HiveField(3) final Surah? translate}) = _$_CurrentSurah;

  factory _CurrentSurah.fromJson(Map<String, dynamic> json) =
      _$_CurrentSurah.fromJson;

  @override
  @HiveField(0, defaultValue: 0)
  int get currentAyah;
  @override
  @HiveField(1, defaultValue: '')
  String get audioLink;
  @override
  @HiveField(2)
  Surah? get surah;
  @override
  @HiveField(3)
  Surah? get translate;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentSurahCopyWith<_$_CurrentSurah> get copyWith =>
      throw _privateConstructorUsedError;
}
