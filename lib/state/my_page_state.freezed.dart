// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'my_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyPageStateTearOff {
  const _$MyPageStateTearOff();

  _MyPageState call({User? user, String version = ''}) {
    return _MyPageState(
      user: user,
      version: version,
    );
  }
}

/// @nodoc
const $MyPageState = _$MyPageStateTearOff();

/// @nodoc
mixin _$MyPageState {
  User? get user => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyPageStateCopyWith<MyPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPageStateCopyWith<$Res> {
  factory $MyPageStateCopyWith(
          MyPageState value, $Res Function(MyPageState) then) =
      _$MyPageStateCopyWithImpl<$Res>;
  $Res call({User? user, String version});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$MyPageStateCopyWithImpl<$Res> implements $MyPageStateCopyWith<$Res> {
  _$MyPageStateCopyWithImpl(this._value, this._then);

  final MyPageState _value;
  // ignore: unused_field
  final $Res Function(MyPageState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$MyPageStateCopyWith<$Res>
    implements $MyPageStateCopyWith<$Res> {
  factory _$MyPageStateCopyWith(
          _MyPageState value, $Res Function(_MyPageState) then) =
      __$MyPageStateCopyWithImpl<$Res>;
  @override
  $Res call({User? user, String version});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$MyPageStateCopyWithImpl<$Res> extends _$MyPageStateCopyWithImpl<$Res>
    implements _$MyPageStateCopyWith<$Res> {
  __$MyPageStateCopyWithImpl(
      _MyPageState _value, $Res Function(_MyPageState) _then)
      : super(_value, (v) => _then(v as _MyPageState));

  @override
  _MyPageState get _value => super._value as _MyPageState;

  @override
  $Res call({
    Object? user = freezed,
    Object? version = freezed,
  }) {
    return _then(_MyPageState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MyPageState extends _MyPageState {
  const _$_MyPageState({this.user, this.version = ''}) : super._();

  @override
  final User? user;
  @JsonKey(defaultValue: '')
  @override
  final String version;

  @override
  String toString() {
    return 'MyPageState(user: $user, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyPageState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(version);

  @JsonKey(ignore: true)
  @override
  _$MyPageStateCopyWith<_MyPageState> get copyWith =>
      __$MyPageStateCopyWithImpl<_MyPageState>(this, _$identity);
}

abstract class _MyPageState extends MyPageState {
  const factory _MyPageState({User? user, String version}) = _$_MyPageState;
  const _MyPageState._() : super._();

  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  String get version => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyPageStateCopyWith<_MyPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
