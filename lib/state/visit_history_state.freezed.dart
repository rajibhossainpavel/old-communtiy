// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'visit_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VisitHistoryStateTearOff {
  const _$VisitHistoryStateTearOff();

  _VisitHistoryState call(
      {UserStatus userStatus = UserStatus.osato,
      List<VisitHistoryUser> visitedUsers = const <VisitHistoryUser>[]}) {
    return _VisitHistoryState(
      userStatus: userStatus,
      visitedUsers: visitedUsers,
    );
  }
}

/// @nodoc
const $VisitHistoryState = _$VisitHistoryStateTearOff();

/// @nodoc
mixin _$VisitHistoryState {
  UserStatus get userStatus => throw _privateConstructorUsedError;
  List<VisitHistoryUser> get visitedUsers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VisitHistoryStateCopyWith<VisitHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitHistoryStateCopyWith<$Res> {
  factory $VisitHistoryStateCopyWith(
          VisitHistoryState value, $Res Function(VisitHistoryState) then) =
      _$VisitHistoryStateCopyWithImpl<$Res>;
  $Res call({UserStatus userStatus, List<VisitHistoryUser> visitedUsers});
}

/// @nodoc
class _$VisitHistoryStateCopyWithImpl<$Res>
    implements $VisitHistoryStateCopyWith<$Res> {
  _$VisitHistoryStateCopyWithImpl(this._value, this._then);

  final VisitHistoryState _value;
  // ignore: unused_field
  final $Res Function(VisitHistoryState) _then;

  @override
  $Res call({
    Object? userStatus = freezed,
    Object? visitedUsers = freezed,
  }) {
    return _then(_value.copyWith(
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      visitedUsers: visitedUsers == freezed
          ? _value.visitedUsers
          : visitedUsers // ignore: cast_nullable_to_non_nullable
              as List<VisitHistoryUser>,
    ));
  }
}

/// @nodoc
abstract class _$VisitHistoryStateCopyWith<$Res>
    implements $VisitHistoryStateCopyWith<$Res> {
  factory _$VisitHistoryStateCopyWith(
          _VisitHistoryState value, $Res Function(_VisitHistoryState) then) =
      __$VisitHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({UserStatus userStatus, List<VisitHistoryUser> visitedUsers});
}

/// @nodoc
class __$VisitHistoryStateCopyWithImpl<$Res>
    extends _$VisitHistoryStateCopyWithImpl<$Res>
    implements _$VisitHistoryStateCopyWith<$Res> {
  __$VisitHistoryStateCopyWithImpl(
      _VisitHistoryState _value, $Res Function(_VisitHistoryState) _then)
      : super(_value, (v) => _then(v as _VisitHistoryState));

  @override
  _VisitHistoryState get _value => super._value as _VisitHistoryState;

  @override
  $Res call({
    Object? userStatus = freezed,
    Object? visitedUsers = freezed,
  }) {
    return _then(_VisitHistoryState(
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      visitedUsers: visitedUsers == freezed
          ? _value.visitedUsers
          : visitedUsers // ignore: cast_nullable_to_non_nullable
              as List<VisitHistoryUser>,
    ));
  }
}

/// @nodoc

class _$_VisitHistoryState extends _VisitHistoryState {
  const _$_VisitHistoryState(
      {this.userStatus = UserStatus.osato,
      this.visitedUsers = const <VisitHistoryUser>[]})
      : super._();

  @JsonKey(defaultValue: UserStatus.osato)
  @override
  final UserStatus userStatus;
  @JsonKey(defaultValue: const <VisitHistoryUser>[])
  @override
  final List<VisitHistoryUser> visitedUsers;

  @override
  String toString() {
    return 'VisitHistoryState(userStatus: $userStatus, visitedUsers: $visitedUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VisitHistoryState &&
            (identical(other.userStatus, userStatus) ||
                const DeepCollectionEquality()
                    .equals(other.userStatus, userStatus)) &&
            (identical(other.visitedUsers, visitedUsers) ||
                const DeepCollectionEquality()
                    .equals(other.visitedUsers, visitedUsers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userStatus) ^
      const DeepCollectionEquality().hash(visitedUsers);

  @JsonKey(ignore: true)
  @override
  _$VisitHistoryStateCopyWith<_VisitHistoryState> get copyWith =>
      __$VisitHistoryStateCopyWithImpl<_VisitHistoryState>(this, _$identity);
}

abstract class _VisitHistoryState extends VisitHistoryState {
  const factory _VisitHistoryState(
      {UserStatus userStatus,
      List<VisitHistoryUser> visitedUsers}) = _$_VisitHistoryState;
  const _VisitHistoryState._() : super._();

  @override
  UserStatus get userStatus => throw _privateConstructorUsedError;
  @override
  List<VisitHistoryUser> get visitedUsers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VisitHistoryStateCopyWith<_VisitHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
