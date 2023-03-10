// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'terms_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TermsStateTearOff {
  const _$TermsStateTearOff();

  _TermsState call({String version = ''}) {
    return _TermsState(
      version: version,
    );
  }
}

/// @nodoc
const $TermsState = _$TermsStateTearOff();

/// @nodoc
mixin _$TermsState {
  String get version => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TermsStateCopyWith<TermsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsStateCopyWith<$Res> {
  factory $TermsStateCopyWith(
          TermsState value, $Res Function(TermsState) then) =
      _$TermsStateCopyWithImpl<$Res>;
  $Res call({String version});
}

/// @nodoc
class _$TermsStateCopyWithImpl<$Res> implements $TermsStateCopyWith<$Res> {
  _$TermsStateCopyWithImpl(this._value, this._then);

  final TermsState _value;
  // ignore: unused_field
  final $Res Function(TermsState) _then;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TermsStateCopyWith<$Res> implements $TermsStateCopyWith<$Res> {
  factory _$TermsStateCopyWith(
          _TermsState value, $Res Function(_TermsState) then) =
      __$TermsStateCopyWithImpl<$Res>;
  @override
  $Res call({String version});
}

/// @nodoc
class __$TermsStateCopyWithImpl<$Res> extends _$TermsStateCopyWithImpl<$Res>
    implements _$TermsStateCopyWith<$Res> {
  __$TermsStateCopyWithImpl(
      _TermsState _value, $Res Function(_TermsState) _then)
      : super(_value, (v) => _then(v as _TermsState));

  @override
  _TermsState get _value => super._value as _TermsState;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_TermsState(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TermsState extends _TermsState {
  const _$_TermsState({this.version = ''}) : super._();

  @JsonKey(defaultValue: '')
  @override
  final String version;

  @override
  String toString() {
    return 'TermsState(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TermsState &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(version);

  @JsonKey(ignore: true)
  @override
  _$TermsStateCopyWith<_TermsState> get copyWith =>
      __$TermsStateCopyWithImpl<_TermsState>(this, _$identity);
}

abstract class _TermsState extends TermsState {
  const factory _TermsState({String version}) = _$_TermsState;
  const _TermsState._() : super._();

  @override
  String get version => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TermsStateCopyWith<_TermsState> get copyWith =>
      throw _privateConstructorUsedError;
}
