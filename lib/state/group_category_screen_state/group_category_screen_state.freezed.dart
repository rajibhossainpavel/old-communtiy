// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_category_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupCategoryScreenStateTearOff {
  const _$GroupCategoryScreenStateTearOff();

  _GroupCategoryScreenState call(
      {GroupCategory? groupCategory, List<Group> groups = const <Group>[]}) {
    return _GroupCategoryScreenState(
      groupCategory: groupCategory,
      groups: groups,
    );
  }
}

/// @nodoc
const $GroupCategoryScreenState = _$GroupCategoryScreenStateTearOff();

/// @nodoc
mixin _$GroupCategoryScreenState {
  GroupCategory? get groupCategory => throw _privateConstructorUsedError;
  List<Group> get groups => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupCategoryScreenStateCopyWith<GroupCategoryScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCategoryScreenStateCopyWith<$Res> {
  factory $GroupCategoryScreenStateCopyWith(GroupCategoryScreenState value,
          $Res Function(GroupCategoryScreenState) then) =
      _$GroupCategoryScreenStateCopyWithImpl<$Res>;
  $Res call({GroupCategory? groupCategory, List<Group> groups});

  $GroupCategoryCopyWith<$Res>? get groupCategory;
}

/// @nodoc
class _$GroupCategoryScreenStateCopyWithImpl<$Res>
    implements $GroupCategoryScreenStateCopyWith<$Res> {
  _$GroupCategoryScreenStateCopyWithImpl(this._value, this._then);

  final GroupCategoryScreenState _value;
  // ignore: unused_field
  final $Res Function(GroupCategoryScreenState) _then;

  @override
  $Res call({
    Object? groupCategory = freezed,
    Object? groups = freezed,
  }) {
    return _then(_value.copyWith(
      groupCategory: groupCategory == freezed
          ? _value.groupCategory
          : groupCategory // ignore: cast_nullable_to_non_nullable
              as GroupCategory?,
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }

  @override
  $GroupCategoryCopyWith<$Res>? get groupCategory {
    if (_value.groupCategory == null) {
      return null;
    }

    return $GroupCategoryCopyWith<$Res>(_value.groupCategory!, (value) {
      return _then(_value.copyWith(groupCategory: value));
    });
  }
}

/// @nodoc
abstract class _$GroupCategoryScreenStateCopyWith<$Res>
    implements $GroupCategoryScreenStateCopyWith<$Res> {
  factory _$GroupCategoryScreenStateCopyWith(_GroupCategoryScreenState value,
          $Res Function(_GroupCategoryScreenState) then) =
      __$GroupCategoryScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({GroupCategory? groupCategory, List<Group> groups});

  @override
  $GroupCategoryCopyWith<$Res>? get groupCategory;
}

/// @nodoc
class __$GroupCategoryScreenStateCopyWithImpl<$Res>
    extends _$GroupCategoryScreenStateCopyWithImpl<$Res>
    implements _$GroupCategoryScreenStateCopyWith<$Res> {
  __$GroupCategoryScreenStateCopyWithImpl(_GroupCategoryScreenState _value,
      $Res Function(_GroupCategoryScreenState) _then)
      : super(_value, (v) => _then(v as _GroupCategoryScreenState));

  @override
  _GroupCategoryScreenState get _value =>
      super._value as _GroupCategoryScreenState;

  @override
  $Res call({
    Object? groupCategory = freezed,
    Object? groups = freezed,
  }) {
    return _then(_GroupCategoryScreenState(
      groupCategory: groupCategory == freezed
          ? _value.groupCategory
          : groupCategory // ignore: cast_nullable_to_non_nullable
              as GroupCategory?,
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc

class _$_GroupCategoryScreenState extends _GroupCategoryScreenState {
  const _$_GroupCategoryScreenState(
      {this.groupCategory, this.groups = const <Group>[]})
      : super._();

  @override
  final GroupCategory? groupCategory;
  @JsonKey(defaultValue: const <Group>[])
  @override
  final List<Group> groups;

  @override
  String toString() {
    return 'GroupCategoryScreenState(groupCategory: $groupCategory, groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupCategoryScreenState &&
            (identical(other.groupCategory, groupCategory) ||
                const DeepCollectionEquality()
                    .equals(other.groupCategory, groupCategory)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(groupCategory) ^
      const DeepCollectionEquality().hash(groups);

  @JsonKey(ignore: true)
  @override
  _$GroupCategoryScreenStateCopyWith<_GroupCategoryScreenState> get copyWith =>
      __$GroupCategoryScreenStateCopyWithImpl<_GroupCategoryScreenState>(
          this, _$identity);
}

abstract class _GroupCategoryScreenState extends GroupCategoryScreenState {
  const factory _GroupCategoryScreenState(
      {GroupCategory? groupCategory,
      List<Group> groups}) = _$_GroupCategoryScreenState;
  const _GroupCategoryScreenState._() : super._();

  @override
  GroupCategory? get groupCategory => throw _privateConstructorUsedError;
  @override
  List<Group> get groups => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupCategoryScreenStateCopyWith<_GroupCategoryScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
