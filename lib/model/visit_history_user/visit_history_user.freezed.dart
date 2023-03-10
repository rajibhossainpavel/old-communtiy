// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'visit_history_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VisitHistoryUserList _$VisitHistoryUserListFromJson(Map<String, dynamic> json) {
  return _VisitHistoryUserList.fromJson(json);
}

/// @nodoc
class _$VisitHistoryUserListTearOff {
  const _$VisitHistoryUserListTearOff();

  _VisitHistoryUserList call(
      {List<VisitHistoryUser> visitHistoryUsers = const <VisitHistoryUser>[]}) {
    return _VisitHistoryUserList(
      visitHistoryUsers: visitHistoryUsers,
    );
  }

  VisitHistoryUserList fromJson(Map<String, Object> json) {
    return VisitHistoryUserList.fromJson(json);
  }
}

/// @nodoc
const $VisitHistoryUserList = _$VisitHistoryUserListTearOff();

/// @nodoc
mixin _$VisitHistoryUserList {
  List<VisitHistoryUser> get visitHistoryUsers =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VisitHistoryUserListCopyWith<VisitHistoryUserList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitHistoryUserListCopyWith<$Res> {
  factory $VisitHistoryUserListCopyWith(VisitHistoryUserList value,
          $Res Function(VisitHistoryUserList) then) =
      _$VisitHistoryUserListCopyWithImpl<$Res>;
  $Res call({List<VisitHistoryUser> visitHistoryUsers});
}

/// @nodoc
class _$VisitHistoryUserListCopyWithImpl<$Res>
    implements $VisitHistoryUserListCopyWith<$Res> {
  _$VisitHistoryUserListCopyWithImpl(this._value, this._then);

  final VisitHistoryUserList _value;
  // ignore: unused_field
  final $Res Function(VisitHistoryUserList) _then;

  @override
  $Res call({
    Object? visitHistoryUsers = freezed,
  }) {
    return _then(_value.copyWith(
      visitHistoryUsers: visitHistoryUsers == freezed
          ? _value.visitHistoryUsers
          : visitHistoryUsers // ignore: cast_nullable_to_non_nullable
              as List<VisitHistoryUser>,
    ));
  }
}

/// @nodoc
abstract class _$VisitHistoryUserListCopyWith<$Res>
    implements $VisitHistoryUserListCopyWith<$Res> {
  factory _$VisitHistoryUserListCopyWith(_VisitHistoryUserList value,
          $Res Function(_VisitHistoryUserList) then) =
      __$VisitHistoryUserListCopyWithImpl<$Res>;
  @override
  $Res call({List<VisitHistoryUser> visitHistoryUsers});
}

/// @nodoc
class __$VisitHistoryUserListCopyWithImpl<$Res>
    extends _$VisitHistoryUserListCopyWithImpl<$Res>
    implements _$VisitHistoryUserListCopyWith<$Res> {
  __$VisitHistoryUserListCopyWithImpl(
      _VisitHistoryUserList _value, $Res Function(_VisitHistoryUserList) _then)
      : super(_value, (v) => _then(v as _VisitHistoryUserList));

  @override
  _VisitHistoryUserList get _value => super._value as _VisitHistoryUserList;

  @override
  $Res call({
    Object? visitHistoryUsers = freezed,
  }) {
    return _then(_VisitHistoryUserList(
      visitHistoryUsers: visitHistoryUsers == freezed
          ? _value.visitHistoryUsers
          : visitHistoryUsers // ignore: cast_nullable_to_non_nullable
              as List<VisitHistoryUser>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VisitHistoryUserList extends _VisitHistoryUserList {
  const _$_VisitHistoryUserList(
      {this.visitHistoryUsers = const <VisitHistoryUser>[]})
      : super._();

  factory _$_VisitHistoryUserList.fromJson(Map<String, dynamic> json) =>
      _$_$_VisitHistoryUserListFromJson(json);

  @JsonKey(defaultValue: const <VisitHistoryUser>[])
  @override
  final List<VisitHistoryUser> visitHistoryUsers;

  @override
  String toString() {
    return 'VisitHistoryUserList(visitHistoryUsers: $visitHistoryUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VisitHistoryUserList &&
            (identical(other.visitHistoryUsers, visitHistoryUsers) ||
                const DeepCollectionEquality()
                    .equals(other.visitHistoryUsers, visitHistoryUsers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(visitHistoryUsers);

  @JsonKey(ignore: true)
  @override
  _$VisitHistoryUserListCopyWith<_VisitHistoryUserList> get copyWith =>
      __$VisitHistoryUserListCopyWithImpl<_VisitHistoryUserList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VisitHistoryUserListToJson(this);
  }
}

abstract class _VisitHistoryUserList extends VisitHistoryUserList {
  const factory _VisitHistoryUserList(
      {List<VisitHistoryUser> visitHistoryUsers}) = _$_VisitHistoryUserList;
  const _VisitHistoryUserList._() : super._();

  factory _VisitHistoryUserList.fromJson(Map<String, dynamic> json) =
      _$_VisitHistoryUserList.fromJson;

  @override
  List<VisitHistoryUser> get visitHistoryUsers =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VisitHistoryUserListCopyWith<_VisitHistoryUserList> get copyWith =>
      throw _privateConstructorUsedError;
}

VisitHistoryUser _$VisitHistoryUserFromJson(Map<String, dynamic> json) {
  return _VisitHistoryUser.fromJson(json);
}

/// @nodoc
class _$VisitHistoryUserTearOff {
  const _$VisitHistoryUserTearOff();

  _VisitHistoryUser call(
      {String gender = '',
      String livePlace = '',
      String nickname = '',
      String uuid = '',
      int age = 0,
      required DateTime created,
      String photoPaths = ''}) {
    return _VisitHistoryUser(
      gender: gender,
      livePlace: livePlace,
      nickname: nickname,
      uuid: uuid,
      age: age,
      created: created,
      photoPaths: photoPaths,
    );
  }

  VisitHistoryUser fromJson(Map<String, Object> json) {
    return VisitHistoryUser.fromJson(json);
  }
}

/// @nodoc
const $VisitHistoryUser = _$VisitHistoryUserTearOff();

/// @nodoc
mixin _$VisitHistoryUser {
  String get gender => throw _privateConstructorUsedError;
  String get livePlace => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  String get photoPaths => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VisitHistoryUserCopyWith<VisitHistoryUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitHistoryUserCopyWith<$Res> {
  factory $VisitHistoryUserCopyWith(
          VisitHistoryUser value, $Res Function(VisitHistoryUser) then) =
      _$VisitHistoryUserCopyWithImpl<$Res>;
  $Res call(
      {String gender,
      String livePlace,
      String nickname,
      String uuid,
      int age,
      DateTime created,
      String photoPaths});
}

/// @nodoc
class _$VisitHistoryUserCopyWithImpl<$Res>
    implements $VisitHistoryUserCopyWith<$Res> {
  _$VisitHistoryUserCopyWithImpl(this._value, this._then);

  final VisitHistoryUser _value;
  // ignore: unused_field
  final $Res Function(VisitHistoryUser) _then;

  @override
  $Res call({
    Object? gender = freezed,
    Object? livePlace = freezed,
    Object? nickname = freezed,
    Object? uuid = freezed,
    Object? age = freezed,
    Object? created = freezed,
    Object? photoPaths = freezed,
  }) {
    return _then(_value.copyWith(
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
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
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      photoPaths: photoPaths == freezed
          ? _value.photoPaths
          : photoPaths // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VisitHistoryUserCopyWith<$Res>
    implements $VisitHistoryUserCopyWith<$Res> {
  factory _$VisitHistoryUserCopyWith(
          _VisitHistoryUser value, $Res Function(_VisitHistoryUser) then) =
      __$VisitHistoryUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String gender,
      String livePlace,
      String nickname,
      String uuid,
      int age,
      DateTime created,
      String photoPaths});
}

/// @nodoc
class __$VisitHistoryUserCopyWithImpl<$Res>
    extends _$VisitHistoryUserCopyWithImpl<$Res>
    implements _$VisitHistoryUserCopyWith<$Res> {
  __$VisitHistoryUserCopyWithImpl(
      _VisitHistoryUser _value, $Res Function(_VisitHistoryUser) _then)
      : super(_value, (v) => _then(v as _VisitHistoryUser));

  @override
  _VisitHistoryUser get _value => super._value as _VisitHistoryUser;

  @override
  $Res call({
    Object? gender = freezed,
    Object? livePlace = freezed,
    Object? nickname = freezed,
    Object? uuid = freezed,
    Object? age = freezed,
    Object? created = freezed,
    Object? photoPaths = freezed,
  }) {
    return _then(_VisitHistoryUser(
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
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
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      photoPaths: photoPaths == freezed
          ? _value.photoPaths
          : photoPaths // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VisitHistoryUser extends _VisitHistoryUser {
  const _$_VisitHistoryUser(
      {this.gender = '',
      this.livePlace = '',
      this.nickname = '',
      this.uuid = '',
      this.age = 0,
      required this.created,
      this.photoPaths = ''})
      : super._();

  factory _$_VisitHistoryUser.fromJson(Map<String, dynamic> json) =>
      _$_$_VisitHistoryUserFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String gender;
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
  @override
  final DateTime created;
  @JsonKey(defaultValue: '')
  @override
  final String photoPaths;

  @override
  String toString() {
    return 'VisitHistoryUser(gender: $gender, livePlace: $livePlace, nickname: $nickname, uuid: $uuid, age: $age, created: $created, photoPaths: $photoPaths)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VisitHistoryUser &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
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
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.photoPaths, photoPaths) ||
                const DeepCollectionEquality()
                    .equals(other.photoPaths, photoPaths)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(livePlace) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(photoPaths);

  @JsonKey(ignore: true)
  @override
  _$VisitHistoryUserCopyWith<_VisitHistoryUser> get copyWith =>
      __$VisitHistoryUserCopyWithImpl<_VisitHistoryUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VisitHistoryUserToJson(this);
  }
}

abstract class _VisitHistoryUser extends VisitHistoryUser {
  const factory _VisitHistoryUser(
      {String gender,
      String livePlace,
      String nickname,
      String uuid,
      int age,
      required DateTime created,
      String photoPaths}) = _$_VisitHistoryUser;
  const _VisitHistoryUser._() : super._();

  factory _VisitHistoryUser.fromJson(Map<String, dynamic> json) =
      _$_VisitHistoryUser.fromJson;

  @override
  String get gender => throw _privateConstructorUsedError;
  @override
  String get livePlace => throw _privateConstructorUsedError;
  @override
  String get nickname => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  int get age => throw _privateConstructorUsedError;
  @override
  DateTime get created => throw _privateConstructorUsedError;
  @override
  String get photoPaths => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VisitHistoryUserCopyWith<_VisitHistoryUser> get copyWith =>
      throw _privateConstructorUsedError;
}
