// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_filter_property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchFilterProperty _$SearchFilterPropertyFromJson(Map<String, dynamic> json) {
  return _SearchFilterProperty.fromJson(json);
}

/// @nodoc
class _$SearchFilterPropertyTearOff {
  const _$SearchFilterPropertyTearOff();

  _SearchFilterProperty call(
      {String gender = '',
      String age = '',
      String birthPlace = '',
      String livePlace = '',
      String hasPhoto = '',
      int page = 1}) {
    return _SearchFilterProperty(
      gender: gender,
      age: age,
      birthPlace: birthPlace,
      livePlace: livePlace,
      hasPhoto: hasPhoto,
      page: page,
    );
  }

  SearchFilterProperty fromJson(Map<String, Object> json) {
    return SearchFilterProperty.fromJson(json);
  }
}

/// @nodoc
const $SearchFilterProperty = _$SearchFilterPropertyTearOff();

/// @nodoc
mixin _$SearchFilterProperty {
  String get gender => throw _privateConstructorUsedError;
  String get age => throw _privateConstructorUsedError;
  String get birthPlace => throw _privateConstructorUsedError;
  String get livePlace => throw _privateConstructorUsedError;
  String get hasPhoto => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchFilterPropertyCopyWith<SearchFilterProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFilterPropertyCopyWith<$Res> {
  factory $SearchFilterPropertyCopyWith(SearchFilterProperty value,
          $Res Function(SearchFilterProperty) then) =
      _$SearchFilterPropertyCopyWithImpl<$Res>;
  $Res call(
      {String gender,
      String age,
      String birthPlace,
      String livePlace,
      String hasPhoto,
      int page});
}

/// @nodoc
class _$SearchFilterPropertyCopyWithImpl<$Res>
    implements $SearchFilterPropertyCopyWith<$Res> {
  _$SearchFilterPropertyCopyWithImpl(this._value, this._then);

  final SearchFilterProperty _value;
  // ignore: unused_field
  final $Res Function(SearchFilterProperty) _then;

  @override
  $Res call({
    Object? gender = freezed,
    Object? age = freezed,
    Object? birthPlace = freezed,
    Object? livePlace = freezed,
    Object? hasPhoto = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      birthPlace: birthPlace == freezed
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as String,
      livePlace: livePlace == freezed
          ? _value.livePlace
          : livePlace // ignore: cast_nullable_to_non_nullable
              as String,
      hasPhoto: hasPhoto == freezed
          ? _value.hasPhoto
          : hasPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SearchFilterPropertyCopyWith<$Res>
    implements $SearchFilterPropertyCopyWith<$Res> {
  factory _$SearchFilterPropertyCopyWith(_SearchFilterProperty value,
          $Res Function(_SearchFilterProperty) then) =
      __$SearchFilterPropertyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String gender,
      String age,
      String birthPlace,
      String livePlace,
      String hasPhoto,
      int page});
}

/// @nodoc
class __$SearchFilterPropertyCopyWithImpl<$Res>
    extends _$SearchFilterPropertyCopyWithImpl<$Res>
    implements _$SearchFilterPropertyCopyWith<$Res> {
  __$SearchFilterPropertyCopyWithImpl(
      _SearchFilterProperty _value, $Res Function(_SearchFilterProperty) _then)
      : super(_value, (v) => _then(v as _SearchFilterProperty));

  @override
  _SearchFilterProperty get _value => super._value as _SearchFilterProperty;

  @override
  $Res call({
    Object? gender = freezed,
    Object? age = freezed,
    Object? birthPlace = freezed,
    Object? livePlace = freezed,
    Object? hasPhoto = freezed,
    Object? page = freezed,
  }) {
    return _then(_SearchFilterProperty(
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      birthPlace: birthPlace == freezed
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as String,
      livePlace: livePlace == freezed
          ? _value.livePlace
          : livePlace // ignore: cast_nullable_to_non_nullable
              as String,
      hasPhoto: hasPhoto == freezed
          ? _value.hasPhoto
          : hasPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchFilterProperty extends _SearchFilterProperty {
  const _$_SearchFilterProperty(
      {this.gender = '',
      this.age = '',
      this.birthPlace = '',
      this.livePlace = '',
      this.hasPhoto = '',
      this.page = 1})
      : super._();

  factory _$_SearchFilterProperty.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchFilterPropertyFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String gender;
  @JsonKey(defaultValue: '')
  @override
  final String age;
  @JsonKey(defaultValue: '')
  @override
  final String birthPlace;
  @JsonKey(defaultValue: '')
  @override
  final String livePlace;
  @JsonKey(defaultValue: '')
  @override
  final String hasPhoto;
  @JsonKey(defaultValue: 1)
  @override
  final int page;

  @override
  String toString() {
    return 'SearchFilterProperty(gender: $gender, age: $age, birthPlace: $birthPlace, livePlace: $livePlace, hasPhoto: $hasPhoto, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchFilterProperty &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.birthPlace, birthPlace) ||
                const DeepCollectionEquality()
                    .equals(other.birthPlace, birthPlace)) &&
            (identical(other.livePlace, livePlace) ||
                const DeepCollectionEquality()
                    .equals(other.livePlace, livePlace)) &&
            (identical(other.hasPhoto, hasPhoto) ||
                const DeepCollectionEquality()
                    .equals(other.hasPhoto, hasPhoto)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(birthPlace) ^
      const DeepCollectionEquality().hash(livePlace) ^
      const DeepCollectionEquality().hash(hasPhoto) ^
      const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  _$SearchFilterPropertyCopyWith<_SearchFilterProperty> get copyWith =>
      __$SearchFilterPropertyCopyWithImpl<_SearchFilterProperty>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchFilterPropertyToJson(this);
  }
}

abstract class _SearchFilterProperty extends SearchFilterProperty {
  const factory _SearchFilterProperty(
      {String gender,
      String age,
      String birthPlace,
      String livePlace,
      String hasPhoto,
      int page}) = _$_SearchFilterProperty;
  const _SearchFilterProperty._() : super._();

  factory _SearchFilterProperty.fromJson(Map<String, dynamic> json) =
      _$_SearchFilterProperty.fromJson;

  @override
  String get gender => throw _privateConstructorUsedError;
  @override
  String get age => throw _privateConstructorUsedError;
  @override
  String get birthPlace => throw _privateConstructorUsedError;
  @override
  String get livePlace => throw _privateConstructorUsedError;
  @override
  String get hasPhoto => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchFilterPropertyCopyWith<_SearchFilterProperty> get copyWith =>
      throw _privateConstructorUsedError;
}
