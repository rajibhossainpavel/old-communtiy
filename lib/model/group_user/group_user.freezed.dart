// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupUser _$GroupUserFromJson(Map<String, dynamic> json) {
  return _GroupUser.fromJson(json);
}

/// @nodoc
class _$GroupUserTearOff {
  const _$GroupUserTearOff();

  _GroupUser call(
      {String gender = '',
      bool isOwner = false,
      String livePlace = '',
      String nickname = '',
      String uuid = '',
      int age = 0,
      String photoPaths = ''}) {
    return _GroupUser(
      gender: gender,
      isOwner: isOwner,
      livePlace: livePlace,
      nickname: nickname,
      uuid: uuid,
      age: age,
      photoPaths: photoPaths,
    );
  }

  GroupUser fromJson(Map<String, Object> json) {
    return GroupUser.fromJson(json);
  }
}

/// @nodoc
const $GroupUser = _$GroupUserTearOff();

/// @nodoc
mixin _$GroupUser {
  String get gender => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;
  String get livePlace => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get photoPaths => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupUserCopyWith<GroupUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupUserCopyWith<$Res> {
  factory $GroupUserCopyWith(GroupUser value, $Res Function(GroupUser) then) =
      _$GroupUserCopyWithImpl<$Res>;
  $Res call(
      {String gender,
      bool isOwner,
      String livePlace,
      String nickname,
      String uuid,
      int age,
      String photoPaths});
}

/// @nodoc
class _$GroupUserCopyWithImpl<$Res> implements $GroupUserCopyWith<$Res> {
  _$GroupUserCopyWithImpl(this._value, this._then);

  final GroupUser _value;
  // ignore: unused_field
  final $Res Function(GroupUser) _then;

  @override
  $Res call({
    Object? gender = freezed,
    Object? isOwner = freezed,
    Object? livePlace = freezed,
    Object? nickname = freezed,
    Object? uuid = freezed,
    Object? age = freezed,
    Object? photoPaths = freezed,
  }) {
    return _then(_value.copyWith(
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      isOwner: isOwner == freezed
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      livePlace: livePlace == freezed
          ? _value.livePlace
          : livePlace // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      photoPaths: photoPaths == freezed
          ? _value.photoPaths
          : photoPaths // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GroupUserCopyWith<$Res> implements $GroupUserCopyWith<$Res> {
  factory _$GroupUserCopyWith(
          _GroupUser value, $Res Function(_GroupUser) then) =
      __$GroupUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String gender,
      bool isOwner,
      String livePlace,
      String nickname,
      String uuid,
      int age,
      String photoPaths});
}

/// @nodoc
class __$GroupUserCopyWithImpl<$Res> extends _$GroupUserCopyWithImpl<$Res>
    implements _$GroupUserCopyWith<$Res> {
  __$GroupUserCopyWithImpl(_GroupUser _value, $Res Function(_GroupUser) _then)
      : super(_value, (v) => _then(v as _GroupUser));

  @override
  _GroupUser get _value => super._value as _GroupUser;

  @override
  $Res call({
    Object? gender = freezed,
    Object? isOwner = freezed,
    Object? livePlace = freezed,
    Object? nickname = freezed,
    Object? uuid = freezed,
    Object? age = freezed,
    Object? photoPaths = freezed,
  }) {
    return _then(_GroupUser(
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      isOwner: isOwner == freezed
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      livePlace: livePlace == freezed
          ? _value.livePlace
          : livePlace // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      photoPaths: photoPaths == freezed
          ? _value.photoPaths
          : photoPaths // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupUser extends _GroupUser {
  const _$_GroupUser(
      {this.gender = '',
      this.isOwner = false,
      this.livePlace = '',
      this.nickname = '',
      this.uuid = '',
      this.age = 0,
      this.photoPaths = ''})
      : super._();

  factory _$_GroupUser.fromJson(Map<String, dynamic> json) =>
      _$_$_GroupUserFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String gender;
  @JsonKey(defaultValue: false)
  @override
  final bool isOwner;
  @JsonKey(defaultValue: '')
  @override
  final String livePlace;
  @JsonKey(defaultValue: '')
  @override
  final String nickname;
  @JsonKey(defaultValue: '')
  @override
  final String uuid;
  @JsonKey(defaultValue: 0)
  @override
  final int age;
  @JsonKey(defaultValue: '')
  @override
  final String photoPaths;

  @override
  String toString() {
    return 'GroupUser(gender: $gender, isOwner: $isOwner, livePlace: $livePlace, nickname: $nickname, uuid: $uuid, age: $age, photoPaths: $photoPaths)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupUser &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.isOwner, isOwner) ||
                const DeepCollectionEquality()
                    .equals(other.isOwner, isOwner)) &&
            (identical(other.livePlace, livePlace) ||
                const DeepCollectionEquality()
                    .equals(other.livePlace, livePlace)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.photoPaths, photoPaths) ||
                const DeepCollectionEquality()
                    .equals(other.photoPaths, photoPaths)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(isOwner) ^
      const DeepCollectionEquality().hash(livePlace) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(photoPaths);

  @JsonKey(ignore: true)
  @override
  _$GroupUserCopyWith<_GroupUser> get copyWith =>
      __$GroupUserCopyWithImpl<_GroupUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroupUserToJson(this);
  }
}

abstract class _GroupUser extends GroupUser {
  const factory _GroupUser(
      {String gender,
      bool isOwner,
      String livePlace,
      String nickname,
      String uuid,
      int age,
      String photoPaths}) = _$_GroupUser;
  const _GroupUser._() : super._();

  factory _GroupUser.fromJson(Map<String, dynamic> json) =
      _$_GroupUser.fromJson;

  @override
  String get gender => throw _privateConstructorUsedError;
  @override
  bool get isOwner => throw _privateConstructorUsedError;
  @override
  String get livePlace => throw _privateConstructorUsedError;
  @override
  String get nickname => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  int get age => throw _privateConstructorUsedError;
  @override
  String get photoPaths => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupUserCopyWith<_GroupUser> get copyWith =>
      throw _privateConstructorUsedError;
}
