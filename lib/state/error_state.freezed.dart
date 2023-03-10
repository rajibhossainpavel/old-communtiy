// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'error_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ErrorStateTearOff {
  const _$ErrorStateTearOff();

  _ErrorState call({HttpErrorException? error}) {
    return _ErrorState(
      error: error,
    );
  }
}

/// @nodoc
const $ErrorState = _$ErrorStateTearOff();

/// @nodoc
mixin _$ErrorState {
  HttpErrorException? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) then) =
      _$ErrorStateCopyWithImpl<$Res>;
  $Res call({HttpErrorException? error});
}

/// @nodoc
class _$ErrorStateCopyWithImpl<$Res> implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(this._value, this._then);

  final ErrorState _value;
  // ignore: unused_field
  final $Res Function(ErrorState) _then;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HttpErrorException?,
    ));
  }
}

/// @nodoc
abstract class _$ErrorStateCopyWith<$Res> implements $ErrorStateCopyWith<$Res> {
  factory _$ErrorStateCopyWith(
          _ErrorState value, $Res Function(_ErrorState) then) =
      __$ErrorStateCopyWithImpl<$Res>;
  @override
  $Res call({HttpErrorException? error});
}

/// @nodoc
class __$ErrorStateCopyWithImpl<$Res> extends _$ErrorStateCopyWithImpl<$Res>
    implements _$ErrorStateCopyWith<$Res> {
  __$ErrorStateCopyWithImpl(
      _ErrorState _value, $Res Function(_ErrorState) _then)
      : super(_value, (v) => _then(v as _ErrorState));

  @override
  _ErrorState get _value => super._value as _ErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_ErrorState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as HttpErrorException?,
    ));
  }
}

/// @nodoc

class _$_ErrorState extends _ErrorState {
  const _$_ErrorState({this.error}) : super._();

  @override
  final HttpErrorException? error;

  @override
  String toString() {
    return 'ErrorState(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorState &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$ErrorStateCopyWith<_ErrorState> get copyWith =>
      __$ErrorStateCopyWithImpl<_ErrorState>(this, _$identity);
}

abstract class _ErrorState extends ErrorState {
  const factory _ErrorState({HttpErrorException? error}) = _$_ErrorState;
  const _ErrorState._() : super._();

  @override
  HttpErrorException? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorStateCopyWith<_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
