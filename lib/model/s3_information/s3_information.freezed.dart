// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 's3_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

S3Information _$S3InformationFromJson(Map<String, dynamic> json) {
  return _S3Information.fromJson(json);
}

/// @nodoc
class _$S3InformationTearOff {
  const _$S3InformationTearOff();

  _S3Information call({String cognitoPoolId = '', String region = ''}) {
    return _S3Information(
      cognitoPoolId: cognitoPoolId,
      region: region,
    );
  }

  S3Information fromJson(Map<String, Object> json) {
    return S3Information.fromJson(json);
  }
}

/// @nodoc
const $S3Information = _$S3InformationTearOff();

/// @nodoc
mixin _$S3Information {
  String get cognitoPoolId => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $S3InformationCopyWith<S3Information> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $S3InformationCopyWith<$Res> {
  factory $S3InformationCopyWith(
          S3Information value, $Res Function(S3Information) then) =
      _$S3InformationCopyWithImpl<$Res>;
  $Res call({String cognitoPoolId, String region});
}

/// @nodoc
class _$S3InformationCopyWithImpl<$Res>
    implements $S3InformationCopyWith<$Res> {
  _$S3InformationCopyWithImpl(this._value, this._then);

  final S3Information _value;
  // ignore: unused_field
  final $Res Function(S3Information) _then;

  @override
  $Res call({
    Object? cognitoPoolId = freezed,
    Object? region = freezed,
  }) {
    return _then(_value.copyWith(
      cognitoPoolId: cognitoPoolId == freezed
          ? _value.cognitoPoolId
          : cognitoPoolId // ignore: cast_nullable_to_non_nullable
              as String,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$S3InformationCopyWith<$Res>
    implements $S3InformationCopyWith<$Res> {
  factory _$S3InformationCopyWith(
          _S3Information value, $Res Function(_S3Information) then) =
      __$S3InformationCopyWithImpl<$Res>;
  @override
  $Res call({String cognitoPoolId, String region});
}

/// @nodoc
class __$S3InformationCopyWithImpl<$Res>
    extends _$S3InformationCopyWithImpl<$Res>
    implements _$S3InformationCopyWith<$Res> {
  __$S3InformationCopyWithImpl(
      _S3Information _value, $Res Function(_S3Information) _then)
      : super(_value, (v) => _then(v as _S3Information));

  @override
  _S3Information get _value => super._value as _S3Information;

  @override
  $Res call({
    Object? cognitoPoolId = freezed,
    Object? region = freezed,
  }) {
    return _then(_S3Information(
      cognitoPoolId: cognitoPoolId == freezed
          ? _value.cognitoPoolId
          : cognitoPoolId // ignore: cast_nullable_to_non_nullable
              as String,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_S3Information implements _S3Information {
  const _$_S3Information({this.cognitoPoolId = '', this.region = ''});

  factory _$_S3Information.fromJson(Map<String, dynamic> json) =>
      _$_$_S3InformationFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String cognitoPoolId;
  @JsonKey(defaultValue: '')
  @override
  final String region;

  @override
  String toString() {
    return 'S3Information(cognitoPoolId: $cognitoPoolId, region: $region)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _S3Information &&
            (identical(other.cognitoPoolId, cognitoPoolId) ||
                const DeepCollectionEquality()
                    .equals(other.cognitoPoolId, cognitoPoolId)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cognitoPoolId) ^
      const DeepCollectionEquality().hash(region);

  @JsonKey(ignore: true)
  @override
  _$S3InformationCopyWith<_S3Information> get copyWith =>
      __$S3InformationCopyWithImpl<_S3Information>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_S3InformationToJson(this);
  }
}

abstract class _S3Information implements S3Information {
  const factory _S3Information({String cognitoPoolId, String region}) =
      _$_S3Information;

  factory _S3Information.fromJson(Map<String, dynamic> json) =
      _$_S3Information.fromJson;

  @override
  String get cognitoPoolId => throw _privateConstructorUsedError;
  @override
  String get region => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$S3InformationCopyWith<_S3Information> get copyWith =>
      throw _privateConstructorUsedError;
}
