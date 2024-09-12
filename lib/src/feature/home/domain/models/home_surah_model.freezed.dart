// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_surah_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeSurah _$HomeSurahFromJson(Map<String, dynamic> json) {
  return _HomeSurah.fromJson(json);
}

/// @nodoc
mixin _$HomeSurah {
  int? get number => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get numberOfAyahs => throw _privateConstructorUsedError;

  /// Serializes this HomeSurah to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeSurah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeSurahCopyWith<HomeSurah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeSurahCopyWith<$Res> {
  factory $HomeSurahCopyWith(HomeSurah value, $Res Function(HomeSurah) then) =
      _$HomeSurahCopyWithImpl<$Res, HomeSurah>;
  @useResult
  $Res call({int? number, String? name, int? numberOfAyahs});
}

/// @nodoc
class _$HomeSurahCopyWithImpl<$Res, $Val extends HomeSurah>
    implements $HomeSurahCopyWith<$Res> {
  _$HomeSurahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeSurah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? numberOfAyahs = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfAyahs: freezed == numberOfAyahs
          ? _value.numberOfAyahs
          : numberOfAyahs // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeSurahImplCopyWith<$Res>
    implements $HomeSurahCopyWith<$Res> {
  factory _$$HomeSurahImplCopyWith(
          _$HomeSurahImpl value, $Res Function(_$HomeSurahImpl) then) =
      __$$HomeSurahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? number, String? name, int? numberOfAyahs});
}

/// @nodoc
class __$$HomeSurahImplCopyWithImpl<$Res>
    extends _$HomeSurahCopyWithImpl<$Res, _$HomeSurahImpl>
    implements _$$HomeSurahImplCopyWith<$Res> {
  __$$HomeSurahImplCopyWithImpl(
      _$HomeSurahImpl _value, $Res Function(_$HomeSurahImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeSurah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? numberOfAyahs = freezed,
  }) {
    return _then(_$HomeSurahImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfAyahs: freezed == numberOfAyahs
          ? _value.numberOfAyahs
          : numberOfAyahs // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeSurahImpl implements _HomeSurah {
  _$HomeSurahImpl({this.number, this.name, this.numberOfAyahs});

  factory _$HomeSurahImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeSurahImplFromJson(json);

  @override
  final int? number;
  @override
  final String? name;
  @override
  final int? numberOfAyahs;

  @override
  String toString() {
    return 'HomeSurah(number: $number, name: $name, numberOfAyahs: $numberOfAyahs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSurahImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.numberOfAyahs, numberOfAyahs) ||
                other.numberOfAyahs == numberOfAyahs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, name, numberOfAyahs);

  /// Create a copy of HomeSurah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSurahImplCopyWith<_$HomeSurahImpl> get copyWith =>
      __$$HomeSurahImplCopyWithImpl<_$HomeSurahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeSurahImplToJson(
      this,
    );
  }
}

abstract class _HomeSurah implements HomeSurah {
  factory _HomeSurah(
      {final int? number,
      final String? name,
      final int? numberOfAyahs}) = _$HomeSurahImpl;

  factory _HomeSurah.fromJson(Map<String, dynamic> json) =
      _$HomeSurahImpl.fromJson;

  @override
  int? get number;
  @override
  String? get name;
  @override
  int? get numberOfAyahs;

  /// Create a copy of HomeSurah
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeSurahImplCopyWith<_$HomeSurahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
