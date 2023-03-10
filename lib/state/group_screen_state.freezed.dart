// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupScreenStateTearOff {
  const _$GroupScreenStateTearOff();

  _GroupScreenState call(
      {bool isLoading = false,
      List<Group> popularGroups = const <Group>[],
      List<Group> joinedGroups = const <Group>[],
      List<Group> newArrivalGroups = const <Group>[],
      List<GroupCategory> categories = const <GroupCategory>[],
      int totalUnreadCount = 0}) {
    return _GroupScreenState(
      isLoading: isLoading,
      popularGroups: popularGroups,
      joinedGroups: joinedGroups,
      newArrivalGroups: newArrivalGroups,
      categories: categories,
      totalUnreadCount: totalUnreadCount,
    );
  }
}

/// @nodoc
const $GroupScreenState = _$GroupScreenStateTearOff();

/// @nodoc
mixin _$GroupScreenState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Group> get popularGroups => throw _privateConstructorUsedError;
  List<Group> get joinedGroups => throw _privateConstructorUsedError;
  List<Group> get newArrivalGroups => throw _privateConstructorUsedError;
  List<GroupCategory> get categories => throw _privateConstructorUsedError;
  int get totalUnreadCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupScreenStateCopyWith<GroupScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupScreenStateCopyWith<$Res> {
  factory $GroupScreenStateCopyWith(
          GroupScreenState value, $Res Function(GroupScreenState) then) =
      _$GroupScreenStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Group> popularGroups,
      List<Group> joinedGroups,
      List<Group> newArrivalGroups,
      List<GroupCategory> categories,
      int totalUnreadCount});
}

/// @nodoc
class _$GroupScreenStateCopyWithImpl<$Res>
    implements $GroupScreenStateCopyWith<$Res> {
  _$GroupScreenStateCopyWithImpl(this._value, this._then);

  final GroupScreenState _value;
  // ignore: unused_field
  final $Res Function(GroupScreenState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? popularGroups = freezed,
    Object? joinedGroups = freezed,
    Object? newArrivalGroups = freezed,
    Object? categories = freezed,
    Object? totalUnreadCount = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      popularGroups: popularGroups == freezed
          ? _value.popularGroups
          : popularGroups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
      joinedGroups: joinedGroups == freezed
          ? _value.joinedGroups
          : joinedGroups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
      newArrivalGroups: newArrivalGroups == freezed
          ? _value.newArrivalGroups
          : newArrivalGroups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<GroupCategory>,
      totalUnreadCount: totalUnreadCount == freezed
          ? _value.totalUnreadCount
          : totalUnreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GroupScreenStateCopyWith<$Res>
    implements $GroupScreenStateCopyWith<$Res> {
  factory _$GroupScreenStateCopyWith(
          _GroupScreenState value, $Res Function(_GroupScreenState) then) =
      __$GroupScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Group> popularGroups,
      List<Group> joinedGroups,
      List<Group> newArrivalGroups,
      List<GroupCategory> categories,
      int totalUnreadCount});
}

/// @nodoc
class __$GroupScreenStateCopyWithImpl<$Res>
    extends _$GroupScreenStateCopyWithImpl<$Res>
    implements _$GroupScreenStateCopyWith<$Res> {
  __$GroupScreenStateCopyWithImpl(
      _GroupScreenState _value, $Res Function(_GroupScreenState) _then)
      : super(_value, (v) => _then(v as _GroupScreenState));

  @override
  _GroupScreenState get _value => super._value as _GroupScreenState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? popularGroups = freezed,
    Object? joinedGroups = freezed,
    Object? newArrivalGroups = freezed,
    Object? categories = freezed,
    Object? totalUnreadCount = freezed,
  }) {
    return _then(_GroupScreenState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      popularGroups: popularGroups == freezed
          ? _value.popularGroups
          : popularGroups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
      joinedGroups: joinedGroups == freezed
          ? _value.joinedGroups
          : joinedGroups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
      newArrivalGroups: newArrivalGroups == freezed
          ? _value.newArrivalGroups
          : newArrivalGroups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<GroupCategory>,
      totalUnreadCount: totalUnreadCount == freezed
          ? _value.totalUnreadCount
          : totalUnreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GroupScreenState extends _GroupScreenState {
  const _$_GroupScreenState(
      {this.isLoading = false,
      this.popularGroups = const <Group>[],
      this.joinedGroups = const <Group>[],
      this.newArrivalGroups = const <Group>[],
      this.categories = const <GroupCategory>[],
      this.totalUnreadCount = 0})
      : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: const <Group>[])
  @override
  final List<Group> popularGroups;
  @JsonKey(defaultValue: const <Group>[])
  @override
  final List<Group> joinedGroups;
  @JsonKey(defaultValue: const <Group>[])
  @override
  final List<Group> newArrivalGroups;
  @JsonKey(defaultValue: const <GroupCategory>[])
  @override
  final List<GroupCategory> categories;
  @JsonKey(defaultValue: 0)
  @override
  final int totalUnreadCount;

  @override
  String toString() {
    return 'GroupScreenState(isLoading: $isLoading, popularGroups: $popularGroups, joinedGroups: $joinedGroups, newArrivalGroups: $newArrivalGroups, categories: $categories, totalUnreadCount: $totalUnreadCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupScreenState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.popularGroups, popularGroups) ||
                const DeepCollectionEquality()
                    .equals(other.popularGroups, popularGroups)) &&
            (identical(other.joinedGroups, joinedGroups) ||
                const DeepCollectionEquality()
                    .equals(other.joinedGroups, joinedGroups)) &&
            (identical(other.newArrivalGroups, newArrivalGroups) ||
                const DeepCollectionEquality()
                    .equals(other.newArrivalGroups, newArrivalGroups)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.totalUnreadCount, totalUnreadCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalUnreadCount, totalUnreadCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(popularGroups) ^
      const DeepCollectionEquality().hash(joinedGroups) ^
      const DeepCollectionEquality().hash(newArrivalGroups) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(totalUnreadCount);

  @JsonKey(ignore: true)
  @override
  _$GroupScreenStateCopyWith<_GroupScreenState> get copyWith =>
      __$GroupScreenStateCopyWithImpl<_GroupScreenState>(this, _$identity);
}

abstract class _GroupScreenState extends GroupScreenState {
  const factory _GroupScreenState(
      {bool isLoading,
      List<Group> popularGroups,
      List<Group> joinedGroups,
      List<Group> newArrivalGroups,
      List<GroupCategory> categories,
      int totalUnreadCount}) = _$_GroupScreenState;
  const _GroupScreenState._() : super._();

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<Group> get popularGroups => throw _privateConstructorUsedError;
  @override
  List<Group> get joinedGroups => throw _privateConstructorUsedError;
  @override
  List<Group> get newArrivalGroups => throw _privateConstructorUsedError;
  @override
  List<GroupCategory> get categories => throw _privateConstructorUsedError;
  @override
  int get totalUnreadCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupScreenStateCopyWith<_GroupScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
