// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'surah_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Surah _$SurahFromJson(Map<String, dynamic> json) {
  return _Surah.fromJson(json);
}

/// @nodoc
mixin _$Surah {
  @HiveField(0, defaultValue: 0)
  int? get number => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: '')
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2, defaultValue: 0)
  int? get numberOfAyahs => throw _privateConstructorUsedError;
  @HiveField(3, defaultValue: [])
  List<Ayah>? get ayahs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahCopyWith<Surah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahCopyWith<$Res> {
  factory $SurahCopyWith(Surah value, $Res Function(Surah) then) =
      _$SurahCopyWithImpl<$Res, Surah>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0) int? number,
      @HiveField(1, defaultValue: '') String? name,
      @HiveField(2, defaultValue: 0) int? numberOfAyahs,
      @HiveField(3, defaultValue: []) List<Ayah>? ayahs});
}

/// @nodoc
class _$SurahCopyWithImpl<$Res, $Val extends Surah>
    implements $SurahCopyWith<$Res> {
  _$SurahCopyWithImpl(this._value, this._then);

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
    Object? ayahs = freezed,
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
      ayahs: freezed == ayahs
          ? _value.ayahs
          : ayahs // ignore: cast_nullable_to_non_nullable
              as List<Ayah>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SurahCopyWith<$Res> implements $SurahCopyWith<$Res> {
  factory _$$_SurahCopyWith(_$_Surah value, $Res Function(_$_Surah) then) =
      __$$_SurahCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0) int? number,
      @HiveField(1, defaultValue: '') String? name,
      @HiveField(2, defaultValue: 0) int? numberOfAyahs,
      @HiveField(3, defaultValue: []) List<Ayah>? ayahs});
}

/// @nodoc
class __$$_SurahCopyWithImpl<$Res> extends _$SurahCopyWithImpl<$Res, _$_Surah>
    implements _$$_SurahCopyWith<$Res> {
  __$$_SurahCopyWithImpl(_$_Surah _value, $Res Function(_$_Surah) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? numberOfAyahs = freezed,
    Object? ayahs = freezed,
  }) {
    return _then(_$_Surah(
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
      ayahs: freezed == ayahs
          ? _value._ayahs
          : ayahs // ignore: cast_nullable_to_non_nullable
              as List<Ayah>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Surah implements _Surah {
  _$_Surah(
      {@HiveField(0, defaultValue: 0) this.number,
      @HiveField(1, defaultValue: '') this.name,
      @HiveField(2, defaultValue: 0) this.numberOfAyahs,
      @HiveField(3, defaultValue: []) final List<Ayah>? ayahs})
      : _ayahs = ayahs;

  factory _$_Surah.fromJson(Map<String, dynamic> json) =>
      _$$_SurahFromJson(json);

  @override
  @HiveField(0, defaultValue: 0)
  final int? number;
  @override
  @HiveField(1, defaultValue: '')
  final String? name;
  @override
  @HiveField(2, defaultValue: 0)
  final int? numberOfAyahs;
  final List<Ayah>? _ayahs;
  @override
  @HiveField(3, defaultValue: [])
  List<Ayah>? get ayahs {
    final value = _ayahs;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Surah(number: $number, name: $name, numberOfAyahs: $numberOfAyahs, ayahs: $ayahs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Surah &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.numberOfAyahs, numberOfAyahs) ||
                other.numberOfAyahs == numberOfAyahs) &&
            const DeepCollectionEquality().equals(other._ayahs, _ayahs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, name, numberOfAyahs,
      const DeepCollectionEquality().hash(_ayahs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurahCopyWith<_$_Surah> get copyWith =>
      __$$_SurahCopyWithImpl<_$_Surah>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurahToJson(
      this,
    );
  }
}

abstract class _Surah implements Surah {
  factory _Surah(
      {@HiveField(0, defaultValue: 0) final int? number,
      @HiveField(1, defaultValue: '') final String? name,
      @HiveField(2, defaultValue: 0) final int? numberOfAyahs,
      @HiveField(3, defaultValue: []) final List<Ayah>? ayahs}) = _$_Surah;

  factory _Surah.fromJson(Map<String, dynamic> json) = _$_Surah.fromJson;

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
  @HiveField(3, defaultValue: [])
  List<Ayah>? get ayahs;
  @override
  @JsonKey(ignore: true)
  _$$_SurahCopyWith<_$_Surah> get copyWith =>
      throw _privateConstructorUsedError;
}
