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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeSurah _$HomeSurahFromJson(Map<String, dynamic> json) {
  return _HomeSurah.fromJson(json);
}

/// @nodoc
mixin _$HomeSurah {
  @HiveField(0, defaultValue: 0)
  int? get number => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: '')
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2, defaultValue: 0)
  int? get numberOfAyahs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeSurahCopyWith<HomeSurah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeSurahCopyWith<$Res> {
  factory $HomeSurahCopyWith(HomeSurah value, $Res Function(HomeSurah) then) =
      _$HomeSurahCopyWithImpl<$Res, HomeSurah>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0) int? number,
      @HiveField(1, defaultValue: '') String? name,
      @HiveField(2, defaultValue: 0) int? numberOfAyahs});
}

/// @nodoc
class _$HomeSurahCopyWithImpl<$Res, $Val extends HomeSurah>
    implements $HomeSurahCopyWith<$Res> {
  _$HomeSurahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$_HomeSurahCopyWith<$Res> implements $HomeSurahCopyWith<$Res> {
  factory _$$_HomeSurahCopyWith(
          _$_HomeSurah value, $Res Function(_$_HomeSurah) then) =
      __$$_HomeSurahCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0) int? number,
      @HiveField(1, defaultValue: '') String? name,
      @HiveField(2, defaultValue: 0) int? numberOfAyahs});
}

/// @nodoc
class __$$_HomeSurahCopyWithImpl<$Res>
    extends _$HomeSurahCopyWithImpl<$Res, _$_HomeSurah>
    implements _$$_HomeSurahCopyWith<$Res> {
  __$$_HomeSurahCopyWithImpl(
      _$_HomeSurah _value, $Res Function(_$_HomeSurah) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? numberOfAyahs = freezed,
  }) {
    return _then(_$_HomeSurah(
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
class _$_HomeSurah implements _HomeSurah {
  _$_HomeSurah(
      {@HiveField(0, defaultValue: 0) this.number,
      @HiveField(1, defaultValue: '') this.name,
      @HiveField(2, defaultValue: 0) this.numberOfAyahs});

  factory _$_HomeSurah.fromJson(Map<String, dynamic> json) =>
      _$$_HomeSurahFromJson(json);

  @override
  @HiveField(0, defaultValue: 0)
  final int? number;
  @override
  @HiveField(1, defaultValue: '')
  final String? name;
  @override
  @HiveField(2, defaultValue: 0)
  final int? numberOfAyahs;

  @override
  String toString() {
    return 'HomeSurah(number: $number, name: $name, numberOfAyahs: $numberOfAyahs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeSurah &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.numberOfAyahs, numberOfAyahs) ||
                other.numberOfAyahs == numberOfAyahs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, name, numberOfAyahs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeSurahCopyWith<_$_HomeSurah> get copyWith =>
      __$$_HomeSurahCopyWithImpl<_$_HomeSurah>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeSurahToJson(
      this,
    );
  }
}

abstract class _HomeSurah implements HomeSurah {
  factory _HomeSurah(
      {@HiveField(0, defaultValue: 0) final int? number,
      @HiveField(1, defaultValue: '') final String? name,
      @HiveField(2, defaultValue: 0) final int? numberOfAyahs}) = _$_HomeSurah;

  factory _HomeSurah.fromJson(Map<String, dynamic> json) =
      _$_HomeSurah.fromJson;

  @override
  @HiveField(0, defaultValue: 0)
  int? get number;
  @override
  @HiveField(1, defaultValue: '')
  String? get name;
  @override
  @HiveField(2, defaultValue: 0)
  int? get numberOfAyahs;
  @override
  @JsonKey(ignore: true)
  _$$_HomeSurahCopyWith<_$_HomeSurah> get copyWith =>
      throw _privateConstructorUsedError;
}
