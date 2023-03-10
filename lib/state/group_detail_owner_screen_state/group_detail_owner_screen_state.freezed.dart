// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_detail_owner_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupDetailOwnerScreenStateTearOff {
  const _$GroupDetailOwnerScreenStateTearOff();

  _GroupDetailOwnerScreenState call(
      {GroupDetail? group, List<GroupUser> groupUsers = const <GroupUser>[]}) {
    return _GroupDetailOwnerScreenState(
      group: group,
      groupUsers: groupUsers,
    );
  }
}

/// @nodoc
const $GroupDetailOwnerScreenState = _$GroupDetailOwnerScreenStateTearOff();

/// @nodoc
mixin _$GroupDetailOwnerScreenState {
  GroupDetail? get group => throw _privateConstructorUsedError;
  List<GroupUser> get groupUsers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupDetailOwnerScreenStateCopyWith<GroupDetailOwnerScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupDetailOwnerScreenStateCopyWith<$Res> {
  factory $GroupDetailOwnerScreenStateCopyWith(
          GroupDetailOwnerScreenState value,
          $Res Function(GroupDetailOwnerScreenState) then) =
      _$GroupDetailOwnerScreenStateCopyWithImpl<$Res>;
  $Res call({GroupDetail? group, List<GroupUser> groupUsers});

  $GroupDetailCopyWith<$Res>? get group;
}

/// @nodoc
class _$GroupDetailOwnerScreenStateCopyWithImpl<$Res>
    implements $GroupDetailOwnerScreenStateCopyWith<$Res> {
  _$GroupDetailOwnerScreenStateCopyWithImpl(this._value, this._then);

  final GroupDetailOwnerScreenState _value;
  // ignore: unused_field
  final $Res Function(GroupDetailOwnerScreenState) _then;

  @override
  $Res call({
    Object? group = freezed,
    Object? groupUsers = freezed,
  }) {
    return _then(_value.copyWith(
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupDetail?,
      groupUsers: groupUsers == freezed
          ? _value.groupUsers
          : groupUsers // ignore: cast_nullable_to_non_nullable
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
abstract class _$GroupDetailOwnerScreenStateCopyWith<$Res>
    implements $GroupDetailOwnerScreenStateCopyWith<$Res> {
  factory _$GroupDetailOwnerScreenStateCopyWith(
          _GroupDetailOwnerScreenState value,
          $Res Function(_GroupDetailOwnerScreenState) then) =
      __$GroupDetailOwnerScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({GroupDetail? group, List<GroupUser> groupUsers});

  @override
  $GroupDetailCopyWith<$Res>? get group;
}

/// @nodoc
class __$GroupDetailOwnerScreenStateCopyWithImpl<$Res>
    extends _$GroupDetailOwnerScreenStateCopyWithImpl<$Res>
    implements _$GroupDetailOwnerScreenStateCopyWith<$Res> {
  __$GroupDetailOwnerScreenStateCopyWithImpl(
      _GroupDetailOwnerScreenState _value,
      $Res Function(_GroupDetailOwnerScreenState) _then)
      : super(_value, (v) => _then(v as _GroupDetailOwnerScreenState));

  @override
  _GroupDetailOwnerScreenState get _value =>
      super._value as _GroupDetailOwnerScreenState;

  @override
  $Res call({
    Object? group = freezed,
    Object? groupUsers = freezed,
  }) {
    return _then(_GroupDetailOwnerScreenState(
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupDetail?,
      groupUsers: groupUsers == freezed
          ? _value.groupUsers
          : groupUsers // ignore: cast_nullable_to_non_nullable
              as List<GroupUser>,
    ));
  }
}

/// @nodoc

class _$_GroupDetailOwnerScreenState extends _GroupDetailOwnerScreenState {
  const _$_GroupDetailOwnerScreenState(
      {this.group, this.groupUsers = const <GroupUser>[]})
      : super._();

  @override
  final GroupDetail? group;
  @JsonKey(defaultValue: const <GroupUser>[])
  @override
  final List<GroupUser> groupUsers;

  @override
  String toString() {
    return 'GroupDetailOwnerScreenState(group: $group, groupUsers: $groupUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupDetailOwnerScreenState &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)) &&
            (identical(other.groupUsers, groupUsers) ||
                const DeepCollectionEquality()
                    .equals(other.groupUsers, groupUsers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(group) ^
      const DeepCollectionEquality().hash(groupUsers);

  @JsonKey(ignore: true)
  @override
  _$GroupDetailOwnerScreenStateCopyWith<_GroupDetailOwnerScreenState>
      get copyWith => __$GroupDetailOwnerScreenStateCopyWithImpl<
          _GroupDetailOwnerScreenState>(this, _$identity);
}

abstract class _GroupDetailOwnerScreenState
    extends GroupDetailOwnerScreenState {
  const factory _GroupDetailOwnerScreenState(
      {GroupDetail? group,
      List<GroupUser> groupUsers}) = _$_GroupDetailOwnerScreenState;
  const _GroupDetailOwnerScreenState._() : super._();

  @override
  GroupDetail? get group => throw _privateConstructorUsedError;
  @override
  List<GroupUser> get groupUsers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupDetailOwnerScreenStateCopyWith<_GroupDetailOwnerScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
