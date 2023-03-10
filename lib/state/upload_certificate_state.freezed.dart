// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'upload_certificate_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UploadCertificateStateTearOff {
  const _$UploadCertificateStateTearOff();

  _UploadCertificateState call(
      {String imagePath = '', bool isLoading = false}) {
    return _UploadCertificateState(
      imagePath: imagePath,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $UploadCertificateState = _$UploadCertificateStateTearOff();

/// @nodoc
mixin _$UploadCertificateState {
  String get imagePath => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadCertificateStateCopyWith<UploadCertificateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadCertificateStateCopyWith<$Res> {
  factory $UploadCertificateStateCopyWith(UploadCertificateState value,
          $Res Function(UploadCertificateState) then) =
      _$UploadCertificateStateCopyWithImpl<$Res>;
  $Res call({String imagePath, bool isLoading});
}

/// @nodoc
class _$UploadCertificateStateCopyWithImpl<$Res>
    implements $UploadCertificateStateCopyWith<$Res> {
  _$UploadCertificateStateCopyWithImpl(this._value, this._then);

  final UploadCertificateState _value;
  // ignore: unused_field
  final $Res Function(UploadCertificateState) _then;

  @override
  $Res call({
    Object? imagePath = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UploadCertificateStateCopyWith<$Res>
    implements $UploadCertificateStateCopyWith<$Res> {
  factory _$UploadCertificateStateCopyWith(_UploadCertificateState value,
          $Res Function(_UploadCertificateState) then) =
      __$UploadCertificateStateCopyWithImpl<$Res>;
  @override
  $Res call({String imagePath, bool isLoading});
}

/// @nodoc
class __$UploadCertificateStateCopyWithImpl<$Res>
    extends _$UploadCertificateStateCopyWithImpl<$Res>
    implements _$UploadCertificateStateCopyWith<$Res> {
  __$UploadCertificateStateCopyWithImpl(_UploadCertificateState _value,
      $Res Function(_UploadCertificateState) _then)
      : super(_value, (v) => _then(v as _UploadCertificateState));

  @override
  _UploadCertificateState get _value => super._value as _UploadCertificateState;

  @override
  $Res call({
    Object? imagePath = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_UploadCertificateState(
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UploadCertificateState extends _UploadCertificateState
    with DiagnosticableTreeMixin {
  const _$_UploadCertificateState({this.imagePath = '', this.isLoading = false})
      : super._();

  @JsonKey(defaultValue: '')
  @override
  final String imagePath;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadCertificateState(imagePath: $imagePath, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UploadCertificateState'))
      ..add(DiagnosticsProperty('imagePath', imagePath))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadCertificateState &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$UploadCertificateStateCopyWith<_UploadCertificateState> get copyWith =>
      __$UploadCertificateStateCopyWithImpl<_UploadCertificateState>(
          this, _$identity);
}

abstract class _UploadCertificateState extends UploadCertificateState {
  const factory _UploadCertificateState({String imagePath, bool isLoading}) =
      _$_UploadCertificateState;
  const _UploadCertificateState._() : super._();

  @override
  String get imagePath => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UploadCertificateStateCopyWith<_UploadCertificateState> get copyWith =>
      throw _privateConstructorUsedError;
}
