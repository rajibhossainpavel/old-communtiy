// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_diaries_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserDiariesStateTearOff {
  const _$UserDiariesStateTearOff();

  _UserDiariesState call(
      {List<Diary> diaries = const <Diary>[],
      User? user,
      bool hasNext = true}) {
    return _UserDiariesState(
      diaries: diaries,
      user: user,
      hasNext: hasNext,
    );
  }
}

/// @nodoc
const $UserDiariesState = _$UserDiariesStateTearOff();

/// @nodoc
mixin _$UserDiariesState {
  List<Diary> get diaries => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDiariesStateCopyWith<UserDiariesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDiariesStateCopyWith<$Res> {
  factory $UserDiariesStateCopyWith(
          UserDiariesState value, $Res Function(UserDiariesState) then) =
      _$UserDiariesStateCopyWithImpl<$Res>;
  $Res call({List<Diary> diaries, User? user, bool hasNext});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserDiariesStateCopyWithImpl<$Res>
    implements $UserDiariesStateCopyWith<$Res> {
  _$UserDiariesStateCopyWithImpl(this._value, this._then);

  final UserDiariesState _value;
  // ignore: unused_field
  final $Res Function(UserDiariesState) _then;

  @override
  $Res call({
    Object? diaries = freezed,
    Object? user = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_value.copyWith(
      diaries: diaries == freezed
          ? _value.diaries
          : diaries // ignore: cast_nullable_to_non_nullable
              as List<Diary>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$UserDiariesStateCopyWith<$Res>
    implements $UserDiariesStateCopyWith<$Res> {
  factory _$UserDiariesStateCopyWith(
          _UserDiariesState value, $Res Function(_UserDiariesState) then) =
      __$UserDiariesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Diary> diaries, User? user, bool hasNext});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$UserDiariesStateCopyWithImpl<$Res>
    extends _$UserDiariesStateCopyWithImpl<$Res>
    implements _$UserDiariesStateCopyWith<$Res> {
  __$UserDiariesStateCopyWithImpl(
      _UserDiariesState _value, $Res Function(_UserDiariesState) _then)
      : super(_value, (v) => _then(v as _UserDiariesState));

  @override
  _UserDiariesState get _value => super._value as _UserDiariesState;

  @override
  $Res call({
    Object? diaries = freezed,
    Object? user = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_UserDiariesState(
      diaries: diaries == freezed
          ? _value.diaries
          : diaries // ignore: cast_nullable_to_non_nullable
              as List<Diary>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UserDiariesState extends _UserDiariesState {
  const _$_UserDiariesState(
      {this.diaries = const <Diary>[], this.user, this.hasNext = true})
      : super._();

  @JsonKey(defaultValue: const <Diary>[])
  @override
  final List<Diary> diaries;
  @override
  final User? user;
  @JsonKey(defaultValue: true)
  @override
  final bool hasNext;

  @override
  String toString() {
    return 'UserDiariesState(diaries: $diaries, user: $user, hasNext: $hasNext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDiariesState &&
            (identical(other.diaries, diaries) ||
                const DeepCollectionEquality()
                    .equals(other.diaries, diaries)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.hasNext, hasNext) ||
                const DeepCollectionEquality().equals(other.hasNext, hasNext)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(diaries) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(hasNext);

  @JsonKey(ignore: true)
  @override
  _$UserDiariesStateCopyWith<_UserDiariesState> get copyWith =>
      __$UserDiariesStateCopyWithImpl<_UserDiariesState>(this, _$identity);
}

abstract class _UserDiariesState extends UserDiariesState {
  const factory _UserDiariesState(
      {List<Diary> diaries, User? user, bool hasNext}) = _$_UserDiariesState;
  const _UserDiariesState._() : super._();

  @override
  List<Diary> get diaries => throw _privateConstructorUsedError;
  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  bool get hasNext => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDiariesStateCopyWith<_UserDiariesState> get copyWith =>
      throw _privateConstructorUsedError;
}
