// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Group _$GroupFromJson(Map<String, dynamic> json) {
  return _Group.fromJson(json);
}

/// @nodoc
class _$GroupTearOff {
  const _$GroupTearOff();

  _Group call(
      {int userCount = 0,
      String name = '',
      String icon = '',
      int unread = 0,
      bool isOwner = false,
      String ownerUserID = '',
      String id = '',
      String type = ''}) {
    return _Group(
      userCount: userCount,
      name: name,
      icon: icon,
      unread: unread,
      isOwner: isOwner,
      ownerUserID: ownerUserID,
      id: id,
      type: type,
    );
  }

  Group fromJson(Map<String, Object> json) {
    return Group.fromJson(json);
  }
}

/// @nodoc
const $Group = _$GroupTearOff();

/// @nodoc
mixin _$Group {
  int get userCount => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  int get unread => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;
  String get ownerUserID => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res>;
  $Res call(
      {int userCount,
      String name,
      String icon,
      int unread,
      bool isOwner,
      String ownerUserID,
      String id,
      String type});
}

/// @nodoc
class _$GroupCopyWithImpl<$Res> implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  final Group _value;
  // ignore: unused_field
  final $Res Function(Group) _then;

  @override
  $Res call({
    Object? userCount = freezed,
    Object? name = freezed,
    Object? icon = freezed,
    Object? unread = freezed,
    Object? isOwner = freezed,
    Object? ownerUserID = freezed,
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      userCount: userCount == freezed
          ? _value.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as int,
      isOwner: isOwner == freezed
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
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
    ));
  }
}

/// @nodoc
abstract class _$GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$GroupCopyWith(_Group value, $Res Function(_Group) then) =
      __$GroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {int userCount,
      String name,
      String icon,
      int unread,
      bool isOwner,
      String ownerUserID,
      String id,
      String type});
}

/// @nodoc
class __$GroupCopyWithImpl<$Res> extends _$GroupCopyWithImpl<$Res>
    implements _$GroupCopyWith<$Res> {
  __$GroupCopyWithImpl(_Group _value, $Res Function(_Group) _then)
      : super(_value, (v) => _then(v as _Group));

  @override
  _Group get _value => super._value as _Group;

  @override
  $Res call({
    Object? userCount = freezed,
    Object? name = freezed,
    Object? icon = freezed,
    Object? unread = freezed,
    Object? isOwner = freezed,
    Object? ownerUserID = freezed,
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_Group(
      userCount: userCount == freezed
          ? _value.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as int,
      isOwner: isOwner == freezed
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Group extends _Group {
  const _$_Group(
      {this.userCount = 0,
      this.name = '',
      this.icon = '',
      this.unread = 0,
      this.isOwner = false,
      this.ownerUserID = '',
      this.id = '',
      this.type = ''})
      : super._();

  factory _$_Group.fromJson(Map<String, dynamic> json) =>
      _$_$_GroupFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int userCount;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String icon;
  @JsonKey(defaultValue: 0)
  @override
  final int unread;
  @JsonKey(defaultValue: false)
  @override
  final bool isOwner;
  @JsonKey(defaultValue: '')
  @override
  final String ownerUserID;
  @JsonKey(defaultValue: '')
  @override
  final String id;
  @JsonKey(defaultValue: '')
  @override
  final String type;

  @override
  String toString() {
    return 'Group(userCount: $userCount, name: $name, icon: $icon, unread: $unread, isOwner: $isOwner, ownerUserID: $ownerUserID, id: $id, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Group &&
            (identical(other.userCount, userCount) ||
                const DeepCollectionEquality()
                    .equals(other.userCount, userCount)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.unread, unread) ||
                const DeepCollectionEquality().equals(other.unread, unread)) &&
            (identical(other.isOwner, isOwner) ||
                const DeepCollectionEquality()
                    .equals(other.isOwner, isOwner)) &&
            (identical(other.ownerUserID, ownerUserID) ||
                const DeepCollectionEquality()
                    .equals(other.ownerUserID, ownerUserID)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userCount) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(unread) ^
      const DeepCollectionEquality().hash(isOwner) ^
      const DeepCollectionEquality().hash(ownerUserID) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$GroupCopyWith<_Group> get copyWith =>
      __$GroupCopyWithImpl<_Group>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroupToJson(this);
  }
}

abstract class _Group extends Group {
  const factory _Group(
      {int userCount,
      String name,
      String icon,
      int unread,
      bool isOwner,
      String ownerUserID,
      String id,
      String type}) = _$_Group;
  const _Group._() : super._();

  factory _Group.fromJson(Map<String, dynamic> json) = _$_Group.fromJson;

  @override
  int get userCount => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get icon => throw _privateConstructorUsedError;
  @override
  int get unread => throw _privateConstructorUsedError;
  @override
  bool get isOwner => throw _privateConstructorUsedError;
  @override
  String get ownerUserID => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupCopyWith<_Group> get copyWith => throw _privateConstructorUsedError;
}
