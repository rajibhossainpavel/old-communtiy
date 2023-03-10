// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_detail_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupDetailScreenStateTearOff {
  const _$GroupDetailScreenStateTearOff();

  _GroupDetailScreenState call(
      {GroupDetail? group,
      UserStatus userStatus = UserStatus.osato,
      bool isJoined = false,
      bool isLoading = false,
      List<GroupUser> users = const <GroupUser>[]}) {
    return _GroupDetailScreenState(
      group: group,
      userStatus: userStatus,
      isJoined: isJoined,
      isLoading: isLoading,
      users: users,
    );
  }
}

/// @nodoc
const $GroupDetailScreenState = _$GroupDetailScreenStateTearOff();

/// @nodoc
mixin _$GroupDetailScreenState {
  GroupDetail? get group => throw _privateConstructorUsedError;
  UserStatus get userStatus => throw _privateConstructorUsedError;
  bool get isJoined => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<GroupUser> get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupDetailScreenStateCopyWith<GroupDetailScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupDetailScreenStateCopyWith<$Res> {
  factory $GroupDetailScreenStateCopyWith(GroupDetailScreenState value,
          $Res Function(GroupDetailScreenState) then) =
      _$GroupDetailScreenStateCopyWithImpl<$Res>;
  $Res call(
      {GroupDetail? group,
      UserStatus userStatus,
      bool isJoined,
      bool isLoading,
      List<GroupUser> users});

  $GroupDetailCopyWith<$Res>? get group;
}

/// @nodoc
class _$GroupDetailScreenStateCopyWithImpl<$Res>
    implements $GroupDetailScreenStateCopyWith<$Res> {
  _$GroupDetailScreenStateCopyWithImpl(this._value, this._then);

  final GroupDetailScreenState _value;
  // ignore: unused_field
  final $Res Function(GroupDetailScreenState) _then;

  @override
  $Res call({
    Object? group = freezed,
    Object? userStatus = freezed,
    Object? isJoined = freezed,
    Object? isLoading = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupDetail?,
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      isJoined: isJoined == freezed
          ? _value.isJoined
          : isJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<GroupUser>,
    ));
  }

  @override
  $GroupDetailCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $GroupDetailCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc
abstract class _$GroupDetailScreenStateCopyWith<$Res>
    implements $GroupDetailScreenStateCopyWith<$Res> {
  factory _$GroupDetailScreenStateCopyWith(_GroupDetailScreenState value,
          $Res Function(_GroupDetailScreenState) then) =
      __$GroupDetailScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {GroupDetail? group,
      UserStatus userStatus,
      bool isJoined,
      bool isLoading,
      List<GroupUser> users});

  @override
  $GroupDetailCopyWith<$Res>? get group;
}

/// @nodoc
class __$GroupDetailScreenStateCopyWithImpl<$Res>
    extends _$GroupDetailScreenStateCopyWithImpl<$Res>
    implements _$GroupDetailScreenStateCopyWith<$Res> {
  __$GroupDetailScreenStateCopyWithImpl(_GroupDetailScreenState _value,
      $Res Function(_GroupDetailScreenState) _then)
      : super(_value, (v) => _then(v as _GroupDetailScreenState));

  @override
  _GroupDetailScreenState get _value => super._value as _GroupDetailScreenState;

  @override
  $Res call({
    Object? group = freezed,
    Object? userStatus = freezed,
    Object? isJoined = freezed,
    Object? isLoading = freezed,
    Object? users = freezed,
  }) {
    return _then(_GroupDetailScreenState(
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupDetail?,
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      isJoined: isJoined == freezed
          ? _value.isJoined
          : isJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<GroupUser>,
    ));
  }
}

/// @nodoc

class _$_GroupDetailScreenState extends _GroupDetailScreenState {
  const _$_GroupDetailScreenState(
      {this.group,
      this.userStatus = UserStatus.osato,
      this.isJoined = false,
      this.isLoading = false,
      this.users = const <GroupUser>[]})
      : super._();

  @override
  final GroupDetail? group;
  @JsonKey(defaultValue: UserStatus.osato)
  @override
  final UserStatus userStatus;
  @JsonKey(defaultValue: false)
  @override
  final bool isJoined;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: const <GroupUser>[])
  @override
  final List<GroupUser> users;

  @override
  String toString() {
    return 'GroupDetailScreenState(group: $group, userStatus: $userStatus, isJoined: $isJoined, isLoading: $isLoading, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupDetailScreenState &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)) &&
            (identical(other.userStatus, userStatus) ||
                const DeepCollectionEquality()
                    .equals(other.userStatus, userStatus)) &&
            (identical(other.isJoined, isJoined) ||
                const DeepCollectionEquality()
                    .equals(other.isJoined, isJoined)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(group) ^
      const DeepCollectionEquality().hash(userStatus) ^
      const DeepCollectionEquality().hash(isJoined) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  _$GroupDetailScreenStateCopyWith<_GroupDetailScreenState> get copyWith =>
      __$GroupDetailScreenStateCopyWithImpl<_GroupDetailScreenState>(
          this, _$identity);
}

abstract class _GroupDetailScreenState extends GroupDetailScreenState {
  const factory _GroupDetailScreenState(
      {GroupDetail? group,
      UserStatus userStatus,
      bool isJoined,
      bool isLoading,
      List<GroupUser> users}) = _$_GroupDetailScreenState;
  const _GroupDetailScreenState._() : super._();

  @override
  GroupDetail? get group => throw _privateConstructorUsedError;
  @override
  UserStatus get userStatus => throw _privateConstructorUsedError;
  @override
  bool get isJoined => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<GroupUser> get users => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupDetailScreenStateCopyWith<_GroupDetailScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
