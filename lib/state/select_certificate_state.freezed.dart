// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'select_certificate_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SelectCertificateStateTearOff {
  const _$SelectCertificateStateTearOff();

  _SelectCertificateState call({Certificate? certificate = null}) {
    return _SelectCertificateState(
      certificate: certificate,
    );
  }
}

/// @nodoc
const $SelectCertificateState = _$SelectCertificateStateTearOff();

/// @nodoc
mixin _$SelectCertificateState {
  Certificate? get certificate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectCertificateStateCopyWith<SelectCertificateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectCertificateStateCopyWith<$Res> {
  factory $SelectCertificateStateCopyWith(SelectCertificateState value,
          $Res Function(SelectCertificateState) then) =
      _$SelectCertificateStateCopyWithImpl<$Res>;
  $Res call({Certificate? certificate});
}

/// @nodoc
class _$SelectCertificateStateCopyWithImpl<$Res>
    implements $SelectCertificateStateCopyWith<$Res> {
  _$SelectCertificateStateCopyWithImpl(this._value, this._then);

  final SelectCertificateState _value;
  // ignore: unused_field
  final $Res Function(SelectCertificateState) _then;

  @override
  $Res call({
    Object? certificate = freezed,
  }) {
    return _then(_value.copyWith(
      certificate: certificate == freezed
          ? _value.certificate
          : certificate // ignore: cast_nullable_to_non_nullable
              as Certificate?,
    ));
  }
}

/// @nodoc
abstract class _$SelectCertificateStateCopyWith<$Res>
    implements $SelectCertificateStateCopyWith<$Res> {
  factory _$SelectCertificateStateCopyWith(_SelectCertificateState value,
          $Res Function(_SelectCertificateState) then) =
      __$SelectCertificateStateCopyWithImpl<$Res>;
  @override
  $Res call({Certificate? certificate});
}

/// @nodoc
class __$SelectCertificateStateCopyWithImpl<$Res>
    extends _$SelectCertificateStateCopyWithImpl<$Res>
    implements _$SelectCertificateStateCopyWith<$Res> {
  __$SelectCertificateStateCopyWithImpl(_SelectCertificateState _value,
      $Res Function(_SelectCertificateState) _then)
      : super(_value, (v) => _then(v as _SelectCertificateState));

  @override
  _SelectCertificateState get _value => super._value as _SelectCertificateState;

  @override
  $Res call({
    Object? certificate = freezed,
  }) {
    return _then(_SelectCertificateState(
      certificate: certificate == freezed
          ? _value.certificate
          : certificate // ignore: cast_nullable_to_non_nullable
              as Certificate?,
    ));
  }
}

/// @nodoc

class _$_SelectCertificateState extends _SelectCertificateState
    with DiagnosticableTreeMixin {
  const _$_SelectCertificateState({this.certificate = null}) : super._();

  @JsonKey(defaultValue: null)
  @override
  final Certificate? certificate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SelectCertificateState(certificate: $certificate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SelectCertificateState'))
      ..add(DiagnosticsProperty('certificate', certificate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectCertificateState &&
            (identical(other.certificate, certificate) ||
                const DeepCollectionEquality()
                    .equals(other.certificate, certificate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(certificate);

  @JsonKey(ignore: true)
  @override
  _$SelectCertificateStateCopyWith<_SelectCertificateState> get copyWith =>
      __$SelectCertificateStateCopyWithImpl<_SelectCertificateState>(
          this, _$identity);
}

abstract class _SelectCertificateState extends SelectCertificateState {
  const factory _SelectCertificateState({Certificate? certificate}) =
      _$_SelectCertificateState;
  const _SelectCertificateState._() : super._();

  @override
  Certificate? get certificate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelectCertificateStateCopyWith<_SelectCertificateState> get copyWith =>
      throw _privateConstructorUsedError;
}
