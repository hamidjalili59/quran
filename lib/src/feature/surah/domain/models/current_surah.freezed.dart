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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentSurah _$CurrentSurahFromJson(Map<String, dynamic> json) {
  return _CurrentSurah.fromJson(json);
}

/// @nodoc
mixin _$CurrentSurah {
  int get currentAyah => throw _privateConstructorUsedError;
  String get audioLink => throw _privateConstructorUsedError;
  dynamic get surah => throw _privateConstructorUsedError;
  dynamic get translate => throw _privateConstructorUsedError;

  /// Serializes this CurrentSurah to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrentSurah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {int currentAyah, String audioLink, dynamic surah, dynamic translate});
}

/// @nodoc
class _$CurrentSurahCopyWithImpl<$Res, $Val extends CurrentSurah>
    implements $CurrentSurahCopyWith<$Res> {
  _$CurrentSurahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentSurah
  /// with the given fields replaced by the non-null parameter values.
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
              as dynamic,
      translate: freezed == translate
          ? _value.translate
          : translate // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentSurahImplCopyWith<$Res>
    implements $CurrentSurahCopyWith<$Res> {
  factory _$$CurrentSurahImplCopyWith(
          _$CurrentSurahImpl value, $Res Function(_$CurrentSurahImpl) then) =
      __$$CurrentSurahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentAyah, String audioLink, dynamic surah, dynamic translate});
}

/// @nodoc
class __$$CurrentSurahImplCopyWithImpl<$Res>
    extends _$CurrentSurahCopyWithImpl<$Res, _$CurrentSurahImpl>
    implements _$$CurrentSurahImplCopyWith<$Res> {
  __$$CurrentSurahImplCopyWithImpl(
      _$CurrentSurahImpl _value, $Res Function(_$CurrentSurahImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentSurah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentAyah = null,
    Object? audioLink = null,
    Object? surah = freezed,
    Object? translate = freezed,
  }) {
    return _then(_$CurrentSurahImpl(
      currentAyah: null == currentAyah
          ? _value.currentAyah
          : currentAyah // ignore: cast_nullable_to_non_nullable
              as int,
      audioLink: null == audioLink
          ? _value.audioLink
          : audioLink // ignore: cast_nullable_to_non_nullable
              as String,
      surah: freezed == surah ? _value.surah! : surah,
      translate: freezed == translate ? _value.translate! : translate,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentSurahImpl implements _CurrentSurah {
  _$CurrentSurahImpl(
      {this.currentAyah = 0, this.audioLink = '', this.surah, this.translate});

  factory _$CurrentSurahImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentSurahImplFromJson(json);

  @override
  @JsonKey()
  final int currentAyah;
  @override
  @JsonKey()
  final String audioLink;
  @override
  final dynamic surah;
  @override
  final dynamic translate;

  @override
  String toString() {
    return 'CurrentSurah(currentAyah: $currentAyah, audioLink: $audioLink, surah: $surah, translate: $translate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentSurahImpl &&
            (identical(other.currentAyah, currentAyah) ||
                other.currentAyah == currentAyah) &&
            (identical(other.audioLink, audioLink) ||
                other.audioLink == audioLink) &&
            const DeepCollectionEquality().equals(other.surah, surah) &&
            const DeepCollectionEquality().equals(other.translate, translate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentAyah,
      audioLink,
      const DeepCollectionEquality().hash(surah),
      const DeepCollectionEquality().hash(translate));

  /// Create a copy of CurrentSurah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentSurahImplCopyWith<_$CurrentSurahImpl> get copyWith =>
      __$$CurrentSurahImplCopyWithImpl<_$CurrentSurahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentSurahImplToJson(
      this,
    );
  }
}

abstract class _CurrentSurah implements CurrentSurah {
  factory _CurrentSurah(
      {final int currentAyah,
      final String audioLink,
      final dynamic surah,
      final dynamic translate}) = _$CurrentSurahImpl;

  factory _CurrentSurah.fromJson(Map<String, dynamic> json) =
      _$CurrentSurahImpl.fromJson;

  @override
  int get currentAyah;
  @override
  String get audioLink;
  @override
  dynamic get surah;
  @override
  dynamic get translate;

  /// Create a copy of CurrentSurah
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentSurahImplCopyWith<_$CurrentSurahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
