// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_of_surahs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListOfHomeSurah _$ListOfHomeSurahFromJson(Map<String, dynamic> json) {
  return _ListOfHomeSurah.fromJson(json);
}

/// @nodoc
mixin _$ListOfHomeSurah {
  @HiveField(0, defaultValue: [])
  List<HomeSurah>? get listSurahs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOfHomeSurahCopyWith<ListOfHomeSurah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfHomeSurahCopyWith<$Res> {
  factory $ListOfHomeSurahCopyWith(
          ListOfHomeSurah value, $Res Function(ListOfHomeSurah) then) =
      _$ListOfHomeSurahCopyWithImpl<$Res, ListOfHomeSurah>;
  @useResult
  $Res call({@HiveField(0, defaultValue: []) List<HomeSurah>? listSurahs});
}

/// @nodoc
class _$ListOfHomeSurahCopyWithImpl<$Res, $Val extends ListOfHomeSurah>
    implements $ListOfHomeSurahCopyWith<$Res> {
  _$ListOfHomeSurahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listSurahs = freezed,
  }) {
    return _then(_value.copyWith(
      listSurahs: freezed == listSurahs
          ? _value.listSurahs
          : listSurahs // ignore: cast_nullable_to_non_nullable
              as List<HomeSurah>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListOfHomeSurahCopyWith<$Res>
    implements $ListOfHomeSurahCopyWith<$Res> {
  factory _$$_ListOfHomeSurahCopyWith(
          _$_ListOfHomeSurah value, $Res Function(_$_ListOfHomeSurah) then) =
      __$$_ListOfHomeSurahCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0, defaultValue: []) List<HomeSurah>? listSurahs});
}

/// @nodoc
class __$$_ListOfHomeSurahCopyWithImpl<$Res>
    extends _$ListOfHomeSurahCopyWithImpl<$Res, _$_ListOfHomeSurah>
    implements _$$_ListOfHomeSurahCopyWith<$Res> {
  __$$_ListOfHomeSurahCopyWithImpl(
      _$_ListOfHomeSurah _value, $Res Function(_$_ListOfHomeSurah) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listSurahs = freezed,
  }) {
    return _then(_$_ListOfHomeSurah(
      listSurahs: freezed == listSurahs
          ? _value._listSurahs
          : listSurahs // ignore: cast_nullable_to_non_nullable
              as List<HomeSurah>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListOfHomeSurah implements _ListOfHomeSurah {
  _$_ListOfHomeSurah(
      {@HiveField(0, defaultValue: []) final List<HomeSurah>? listSurahs})
      : _listSurahs = listSurahs;

  factory _$_ListOfHomeSurah.fromJson(Map<String, dynamic> json) =>
      _$$_ListOfHomeSurahFromJson(json);

  final List<HomeSurah>? _listSurahs;
  @override
  @HiveField(0, defaultValue: [])
  List<HomeSurah>? get listSurahs {
    final value = _listSurahs;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListOfHomeSurah(listSurahs: $listSurahs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListOfHomeSurah &&
            const DeepCollectionEquality()
                .equals(other._listSurahs, _listSurahs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listSurahs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListOfHomeSurahCopyWith<_$_ListOfHomeSurah> get copyWith =>
      __$$_ListOfHomeSurahCopyWithImpl<_$_ListOfHomeSurah>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListOfHomeSurahToJson(
      this,
    );
  }
}

abstract class _ListOfHomeSurah implements ListOfHomeSurah {
  factory _ListOfHomeSurah(
          {@HiveField(0, defaultValue: []) final List<HomeSurah>? listSurahs}) =
      _$_ListOfHomeSurah;

  factory _ListOfHomeSurah.fromJson(Map<String, dynamic> json) =
      _$_ListOfHomeSurah.fromJson;

  @override
  @HiveField(0, defaultValue: [])
  List<HomeSurah>? get listSurahs;
  @override
  @JsonKey(ignore: true)
  _$$_ListOfHomeSurahCopyWith<_$_ListOfHomeSurah> get copyWith =>
      throw _privateConstructorUsedError;
}
