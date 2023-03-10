// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupDetail _$GroupDetailFromJson(Map<String, dynamic> json) {
  return _GroupDetail.fromJson(json);
}

/// @nodoc
class _$GroupDetailTearOff {
  const _$GroupDetailTearOff();

  _GroupDetail call(
      {bool isJoin = false,
      bool blocked = false,
      int userCount = 0,
      bool isOwner = false,
      int unread = 0,
      String intro = '',
      String name = '',
      String icon = '',
      String ownerUserID = '',
      String id = '',
      String type = '',
      String categoryName = '',
      List<GroupUser> users = const <GroupUser>[]}) {
    return _GroupDetail(
      isJoin: isJoin,
      blocked: blocked,
      userCount: userCount,
      isOwner: isOwner,
      unread: unread,
      intro: intro,
      name: name,
      icon: icon,
      ownerUserID: ownerUserID,
      id: id,
      type: type,
      categoryName: categoryName,
      users: users,
    );
  }

  GroupDetail fromJson(Map<String, Object> json) {
    return GroupDetail.fromJson(json);
  }
}

/// @nodoc
const $GroupDetail = _$GroupDetailTearOff();

/// @nodoc
mixin _$GroupDetail {
  bool get isJoin => throw _privateConstructorUsedError;
  bool get blocked => throw _privateConstructorUsedError;
  int get userCount => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;
  int get unread => throw _privateConstructorUsedError;
  String get intro => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get ownerUserID => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  List<GroupUser> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupDetailCopyWith<GroupDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupDetailCopyWith<$Res> {
  factory $GroupDetailCopyWith(
          GroupDetail value, $Res Function(GroupDetail) then) =
      _$GroupDetailCopyWithImpl<$Res>;
  $Res call(
      {bool isJoin,
      bool blocked,
      int userCount,
      bool isOwner,
      int unread,
      String intro,
      String name,
      String icon,
      String ownerUserID,
      String id,
      String type,
      String categoryName,
      List<GroupUser> users});
}

/// @nodoc
class _$GroupDetailCopyWithImpl<$Res> implements $GroupDetailCopyWith<$Res> {
  _$GroupDetailCopyWithImpl(this._value, this._then);

  final GroupDetail _value;
  // ignore: unused_field
  final $Res Function(GroupDetail) _then;

  @override
  $Res call({
    Object? isJoin = freezed,
    Object? blocked = freezed,
    Object? userCount = freezed,
    Object? isOwner = freezed,
    Object? unread = freezed,
    Object? intro = freezed,
    Object? name = freezed,
    Object? icon = freezed,
    Object? ownerUserID = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? categoryName = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      isJoin: isJoin == freezed
          ? _value.isJoin
          : isJoin // ignore: cast_nullable_to_non_nullable
              as bool,
      blocked: blocked == freezed
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
      userCount: userCount == freezed
          ? _value.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
              as int,
      isOwner: isOwner == freezed
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as int,
      intro: intro == freezed
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      ownerUserID: ownerUserID == freezed
          ? _value.ownerUserID
          : ownerUserID // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<GroupUser>,
    ));
  }
}

/// @nodoc
abstract class _$GroupDetailCopyWith<$Res>
    implements $GroupDetailCopyWith<$Res> {
  factory _$GroupDetailCopyWith(
          _GroupDetail value, $Res Function(_GroupDetail) then) =
      __$GroupDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isJoin,
      bool blocked,
      int userCount,
      bool isOwner,
      int unread,
      String intro,
      String name,
      String icon,
      String ownerUserID,
      String id,
      String type,
      String categoryName,
      List<GroupUser> users});
}

/// @nodoc
class __$GroupDetailCopyWithImpl<$Res> extends _$GroupDetailCopyWithImpl<$Res>
    implements _$GroupDetailCopyWith<$Res> {
  __$GroupDetailCopyWithImpl(
      _GroupDetail _value, $Res Function(_GroupDetail) _then)
      : super(_value, (v) => _then(v as _GroupDetail));

  @override
  _GroupDetail get _value => super._value as _GroupDetail;

  @override
  $Res call({
    Object? isJoin = freezed,
    Object? blocked = freezed,
    Object? userCount = freezed,
    Object? isOwner = freezed,
    Object? unread = freezed,
    Object? intro = freezed,
    Object? name = freezed,
    Object? icon = freezed,
    Object? ownerUserID = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? categoryName = freezed,
    Object? users = freezed,
  }) {
    return _then(_GroupDetail(
      isJoin: isJoin == freezed
          ? _value.isJoin
          : isJoin // ignore: cast_nullable_to_non_nullable
              as bool,
      blocked: blocked == freezed
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
      userCount: userCount == freezed
          ? _value.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
              as int,
      isOwner: isOwner == freezed
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as int,
      intro: intro == freezed
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      ownerUserID: ownerUserID == freezed
          ? _value.ownerUserID
          : ownerUserID // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<GroupUser>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupDetail extends _GroupDetail {
  const _$_GroupDetail(
      {this.isJoin = false,
      this.blocked = false,
      this.userCount = 0,
      this.isOwner = false,
      this.unread = 0,
      this.intro = '',
      this.name = '',
      this.icon = '',
      this.ownerUserID = '',
      this.id = '',
      this.type = '',
      this.categoryName = '',
      this.users = const <GroupUser>[]})
      : super._();

  factory _$_GroupDetail.fromJson(Map<String, dynamic> json) =>
      _$_$_GroupDetailFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool isJoin;
  @JsonKey(defaultValue: false)
  @override
  final bool blocked;
  @JsonKey(defaultValue: 0)
  @override
  final int userCount;
  @JsonKey(defaultValue: false)
  @override
  final bool isOwner;
  @JsonKey(defaultValue: 0)
  @override
  final int unread;
  @JsonKey(defaultValue: '')
  @override
  final String intro;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String icon;
  @JsonKey(defaultValue: '')
  @override
  final String ownerUserID;
  @JsonKey(defaultValue: '')
  @override
  final String id;
  @JsonKey(defaultValue: '')
  @override
  final String type;
  @JsonKey(defaultValue: '')
  @override
  final String categoryName;
  @JsonKey(defaultValue: const <GroupUser>[])
  @override
  final List<GroupUser> users;

  @override
  String toString() {
    return 'GroupDetail(isJoin: $isJoin, blocked: $blocked, userCount: $userCount, isOwner: $isOwner, unread: $unread, intro: $intro, name: $name, icon: $icon, ownerUserID: $ownerUserID, id: $id, type: $type, categoryName: $categoryName, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupDetail &&
            (identical(other.isJoin, isJoin) ||
                const DeepCollectionEquality().equals(other.isJoin, isJoin)) &&
            (identical(other.blocked, blocked) ||
                const DeepCollectionEquality()
                    .equals(other.blocked, blocked)) &&
            (identical(other.userCount, userCount) ||
                const DeepCollectionEquality()
                    .equals(other.userCount, userCount)) &&
            (identical(other.isOwner, isOwner) ||
                const DeepCollectionEquality()
                    .equals(other.isOwner, isOwner)) &&
            (identical(other.unread, unread) ||
                const DeepCollectionEquality().equals(other.unread, unread)) &&
            (identical(other.intro, intro) ||
                const DeepCollectionEquality().equals(other.intro, intro)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.ownerUserID, ownerUserID) ||
                const DeepCollectionEquality()
                    .equals(other.ownerUserID, ownerUserID)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isJoin) ^
      const DeepCollectionEquality().hash(blocked) ^
      const DeepCollectionEquality().hash(userCount) ^
      const DeepCollectionEquality().hash(isOwner) ^
      const DeepCollectionEquality().hash(unread) ^
      const DeepCollectionEquality().hash(intro) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(ownerUserID) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  _$GroupDetailCopyWith<_GroupDetail> get copyWith =>
      __$GroupDetailCopyWithImpl<_GroupDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroupDetailToJson(this);
  }
}

abstract class _GroupDetail extends GroupDetail {
  const factory _GroupDetail(
      {bool isJoin,
      bool blocked,
      int userCount,
      bool isOwner,
      int unread,
      String intro,
      String name,
      String icon,
      String ownerUserID,
      String id,
      String type,
      String categoryName,
      List<GroupUser> users}) = _$_GroupDetail;
  const _GroupDetail._() : super._();

  factory _GroupDetail.fromJson(Map<String, dynamic> json) =
      _$_GroupDetail.fromJson;

  @override
  bool get isJoin => throw _privateConstructorUsedError;
  @override
  bool get blocked => throw _privateConstructorUsedError;
  @override
  int get userCount => throw _privateConstructorUsedError;
  @override
  bool get isOwner => throw _privateConstructorUsedError;
  @override
  int get unread => throw _privateConstructorUsedError;
  @override
  String get intro => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get icon => throw _privateConstructorUsedError;
  @override
  String get ownerUserID => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get categoryName => throw _privateConstructorUsedError;
  @override
  List<GroupUser> get users => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupDetailCopyWith<_GroupDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
