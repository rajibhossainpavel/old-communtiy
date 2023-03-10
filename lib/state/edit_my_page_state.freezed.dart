// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'edit_my_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditMyPageStateTearOff {
  const _$EditMyPageStateTearOff();

  _EditMyPageState call({User? user = null}) {
    return _EditMyPageState(
      user: user,
    );
  }
}

/// @nodoc
const $EditMyPageState = _$EditMyPageStateTearOff();

/// @nodoc
mixin _$EditMyPageState {
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditMyPageStateCopyWith<EditMyPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditMyPageStateCopyWith<$Res> {
  factory $EditMyPageStateCopyWith(
          EditMyPageState value, $Res Function(EditMyPageState) then) =
      _$EditMyPageStateCopyWithImpl<$Res>;
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$EditMyPageStateCopyWithImpl<$Res>
    implements $EditMyPageStateCopyWith<$Res> {
  _$EditMyPageStateCopyWithImpl(this._value, this._then);

  final EditMyPageState _value;
  // ignore: unused_field
  final $Res Function(EditMyPageState) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
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
abstract class _$EditMyPageStateCopyWith<$Res>
    implements $EditMyPageStateCopyWith<$Res> {
  factory _$EditMyPageStateCopyWith(
          _EditMyPageState value, $Res Function(_EditMyPageState) then) =
      __$EditMyPageStateCopyWithImpl<$Res>;
  @override
  $Res call({User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$EditMyPageStateCopyWithImpl<$Res>
    extends _$EditMyPageStateCopyWithImpl<$Res>
    implements _$EditMyPageStateCopyWith<$Res> {
  __$EditMyPageStateCopyWithImpl(
      _EditMyPageState _value, $Res Function(_EditMyPageState) _then)
      : super(_value, (v) => _then(v as _EditMyPageState));

  @override
  _EditMyPageState get _value => super._value as _EditMyPageState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_EditMyPageState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_EditMyPageState extends _EditMyPageState {
  const _$_EditMyPageState({this.user = null}) : super._();

  @JsonKey(defaultValue: null)
  @override
  final User? user;

  @override
  String toString() {
    return 'EditMyPageState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditMyPageState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$EditMyPageStateCopyWith<_EditMyPageState> get copyWith =>
      __$EditMyPageStateCopyWithImpl<_EditMyPageState>(this, _$identity);
}

abstract class _EditMyPageState extends EditMyPageState {
  const factory _EditMyPageState({User? user}) = _$_EditMyPageState;
  const _EditMyPageState._() : super._();

  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditMyPageStateCopyWith<_EditMyPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
