// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_completed_create_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupCompletedCreateScreenStateTearOff {
  const _$GroupCompletedCreateScreenStateTearOff();

  _GroupCompletedCreateScreenState call({GroupDetail? group}) {
    return _GroupCompletedCreateScreenState(
      group: group,
    );
  }
}

/// @nodoc
const $GroupCompletedCreateScreenState =
    _$GroupCompletedCreateScreenStateTearOff();

/// @nodoc
mixin _$GroupCompletedCreateScreenState {
  GroupDetail? get group => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupCompletedCreateScreenStateCopyWith<GroupCompletedCreateScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCompletedCreateScreenStateCopyWith<$Res> {
  factory $GroupCompletedCreateScreenStateCopyWith(
          GroupCompletedCreateScreenState value,
          $Res Function(GroupCompletedCreateScreenState) then) =
      _$GroupCompletedCreateScreenStateCopyWithImpl<$Res>;
  $Res call({GroupDetail? group});

  $GroupDetailCopyWith<$Res>? get group;
}

/// @nodoc
class _$GroupCompletedCreateScreenStateCopyWithImpl<$Res>
    implements $GroupCompletedCreateScreenStateCopyWith<$Res> {
  _$GroupCompletedCreateScreenStateCopyWithImpl(this._value, this._then);

  final GroupCompletedCreateScreenState _value;
  // ignore: unused_field
  final $Res Function(GroupCompletedCreateScreenState) _then;

  @override
  $Res call({
    Object? group = freezed,
  }) {
    return _then(_value.copyWith(
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupDetail?,
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
abstract class _$GroupCompletedCreateScreenStateCopyWith<$Res>
    implements $GroupCompletedCreateScreenStateCopyWith<$Res> {
  factory _$GroupCompletedCreateScreenStateCopyWith(
          _GroupCompletedCreateScreenState value,
          $Res Function(_GroupCompletedCreateScreenState) then) =
      __$GroupCompletedCreateScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({GroupDetail? group});

  @override
  $GroupDetailCopyWith<$Res>? get group;
}

/// @nodoc
class __$GroupCompletedCreateScreenStateCopyWithImpl<$Res>
    extends _$GroupCompletedCreateScreenStateCopyWithImpl<$Res>
    implements _$GroupCompletedCreateScreenStateCopyWith<$Res> {
  __$GroupCompletedCreateScreenStateCopyWithImpl(
      _GroupCompletedCreateScreenState _value,
      $Res Function(_GroupCompletedCreateScreenState) _then)
      : super(_value, (v) => _then(v as _GroupCompletedCreateScreenState));

  @override
  _GroupCompletedCreateScreenState get _value =>
      super._value as _GroupCompletedCreateScreenState;

  @override
  $Res call({
    Object? group = freezed,
  }) {
    return _then(_GroupCompletedCreateScreenState(
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupDetail?,
    ));
  }
}

/// @nodoc

class _$_GroupCompletedCreateScreenState
    extends _GroupCompletedCreateScreenState {
  const _$_GroupCompletedCreateScreenState({this.group}) : super._();

  @override
  final GroupDetail? group;

  @override
  String toString() {
    return 'GroupCompletedCreateScreenState(group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupCompletedCreateScreenState &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(group);

  @JsonKey(ignore: true)
  @override
  _$GroupCompletedCreateScreenStateCopyWith<_GroupCompletedCreateScreenState>
      get copyWith => __$GroupCompletedCreateScreenStateCopyWithImpl<
          _GroupCompletedCreateScreenState>(this, _$identity);
}

abstract class _GroupCompletedCreateScreenState
    extends GroupCompletedCreateScreenState {
  const factory _GroupCompletedCreateScreenState({GroupDetail? group}) =
      _$_GroupCompletedCreateScreenState;
  const _GroupCompletedCreateScreenState._() : super._();

  @override
  GroupDetail? get group => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupCompletedCreateScreenStateCopyWith<_GroupCompletedCreateScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
