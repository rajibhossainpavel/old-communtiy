// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'greeting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GreetingStateTearOff {
  const _$GreetingStateTearOff();

  _GreetingState call(
      {bool termOfUse = false,
      bool privacyPolicy = false,
      bool isLoading = false,
      String version = ''}) {
    return _GreetingState(
      termOfUse: termOfUse,
      privacyPolicy: privacyPolicy,
      isLoading: isLoading,
      version: version,
    );
  }
}

/// @nodoc
const $GreetingState = _$GreetingStateTearOff();

/// @nodoc
mixin _$GreetingState {
  bool get termOfUse => throw _privateConstructorUsedError;
  bool get privacyPolicy => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GreetingStateCopyWith<GreetingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GreetingStateCopyWith<$Res> {
  factory $GreetingStateCopyWith(
          GreetingState value, $Res Function(GreetingState) then) =
      _$GreetingStateCopyWithImpl<$Res>;
  $Res call(
      {bool termOfUse, bool privacyPolicy, bool isLoading, String version});
}

/// @nodoc
class _$GreetingStateCopyWithImpl<$Res>
    implements $GreetingStateCopyWith<$Res> {
  _$GreetingStateCopyWithImpl(this._value, this._then);

  final GreetingState _value;
  // ignore: unused_field
  final $Res Function(GreetingState) _then;

  @override
  $Res call({
    Object? termOfUse = freezed,
    Object? privacyPolicy = freezed,
    Object? isLoading = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      termOfUse: termOfUse == freezed
          ? _value.termOfUse
          : termOfUse // ignore: cast_nullable_to_non_nullable
              as bool,
      privacyPolicy: privacyPolicy == freezed
          ? _value.privacyPolicy
          : privacyPolicy // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GreetingStateCopyWith<$Res>
    implements $GreetingStateCopyWith<$Res> {
  factory _$GreetingStateCopyWith(
          _GreetingState value, $Res Function(_GreetingState) then) =
      __$GreetingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool termOfUse, bool privacyPolicy, bool isLoading, String version});
}

/// @nodoc
class __$GreetingStateCopyWithImpl<$Res>
    extends _$GreetingStateCopyWithImpl<$Res>
    implements _$GreetingStateCopyWith<$Res> {
  __$GreetingStateCopyWithImpl(
      _GreetingState _value, $Res Function(_GreetingState) _then)
      : super(_value, (v) => _then(v as _GreetingState));

  @override
  _GreetingState get _value => super._value as _GreetingState;

  @override
  $Res call({
    Object? termOfUse = freezed,
    Object? privacyPolicy = freezed,
    Object? isLoading = freezed,
    Object? version = freezed,
  }) {
    return _then(_GreetingState(
      termOfUse: termOfUse == freezed
          ? _value.termOfUse
          : termOfUse // ignore: cast_nullable_to_non_nullable
              as bool,
      privacyPolicy: privacyPolicy == freezed
          ? _value.privacyPolicy
          : privacyPolicy // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GreetingState extends _GreetingState {
  const _$_GreetingState(
      {this.termOfUse = false,
      this.privacyPolicy = false,
      this.isLoading = false,
      this.version = ''})
      : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool termOfUse;
  @JsonKey(defaultValue: false)
  @override
  final bool privacyPolicy;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: '')
  @override
  final String version;

  @override
  String toString() {
    return 'GreetingState(termOfUse: $termOfUse, privacyPolicy: $privacyPolicy, isLoading: $isLoading, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GreetingState &&
            (identical(other.termOfUse, termOfUse) ||
                const DeepCollectionEquality()
                    .equals(other.termOfUse, termOfUse)) &&
            (identical(other.privacyPolicy, privacyPolicy) ||
                const DeepCollectionEquality()
                    .equals(other.privacyPolicy, privacyPolicy)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(termOfUse) ^
      const DeepCollectionEquality().hash(privacyPolicy) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(version);

  @JsonKey(ignore: true)
  @override
  _$GreetingStateCopyWith<_GreetingState> get copyWith =>
      __$GreetingStateCopyWithImpl<_GreetingState>(this, _$identity);
}

abstract class _GreetingState extends GreetingState {
  const factory _GreetingState(
      {bool termOfUse,
      bool privacyPolicy,
      bool isLoading,
      String version}) = _$_GreetingState;
  const _GreetingState._() : super._();

  @override
  bool get termOfUse => throw _privateConstructorUsedError;
  @override
  bool get privacyPolicy => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  String get version => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GreetingStateCopyWith<_GreetingState> get copyWith =>
      throw _privateConstructorUsedError;
}
