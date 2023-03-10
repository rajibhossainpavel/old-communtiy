// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'application_init_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApplicationInitResponse _$ApplicationInitResponseFromJson(
    Map<String, dynamic> json) {
  return _ApplicationInitResponse.fromJson(json);
}

/// @nodoc
class _$ApplicationInitResponseTearOff {
  const _$ApplicationInitResponseTearOff();

  _ApplicationInitResponse call(
      {String result = '',
      String uuid = '',
      AppInfo? info,
      String token = ''}) {
    return _ApplicationInitResponse(
      result: result,
      uuid: uuid,
      info: info,
      token: token,
    );
  }

  ApplicationInitResponse fromJson(Map<String, Object> json) {
    return ApplicationInitResponse.fromJson(json);
  }
}

/// @nodoc
const $ApplicationInitResponse = _$ApplicationInitResponseTearOff();

/// @nodoc
mixin _$ApplicationInitResponse {
  String get result => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  AppInfo? get info => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationInitResponseCopyWith<ApplicationInitResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationInitResponseCopyWith<$Res> {
  factory $ApplicationInitResponseCopyWith(ApplicationInitResponse value,
          $Res Function(ApplicationInitResponse) then) =
      _$ApplicationInitResponseCopyWithImpl<$Res>;
  $Res call({String result, String uuid, AppInfo? info, String token});

  $AppInfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$ApplicationInitResponseCopyWithImpl<$Res>
    implements $ApplicationInitResponseCopyWith<$Res> {
  _$ApplicationInitResponseCopyWithImpl(this._value, this._then);

  final ApplicationInitResponse _value;
  // ignore: unused_field
  final $Res Function(ApplicationInitResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? uuid = freezed,
    Object? info = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppInfo?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $AppInfoCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $AppInfoCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$ApplicationInitResponseCopyWith<$Res>
    implements $ApplicationInitResponseCopyWith<$Res> {
  factory _$ApplicationInitResponseCopyWith(_ApplicationInitResponse value,
          $Res Function(_ApplicationInitResponse) then) =
      __$ApplicationInitResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, String uuid, AppInfo? info, String token});

  @override
  $AppInfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$ApplicationInitResponseCopyWithImpl<$Res>
    extends _$ApplicationInitResponseCopyWithImpl<$Res>
    implements _$ApplicationInitResponseCopyWith<$Res> {
  __$ApplicationInitResponseCopyWithImpl(_ApplicationInitResponse _value,
      $Res Function(_ApplicationInitResponse) _then)
      : super(_value, (v) => _then(v as _ApplicationInitResponse));

  @override
  _ApplicationInitResponse get _value =>
      super._value as _ApplicationInitResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? uuid = freezed,
    Object? info = freezed,
    Object? token = freezed,
  }) {
    return _then(_ApplicationInitResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AppInfo?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApplicationInitResponse implements _ApplicationInitResponse {
  const _$_ApplicationInitResponse(
      {this.result = '', this.uuid = '', this.info, this.token = ''});

  factory _$_ApplicationInitResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ApplicationInitResponseFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String result;
  @JsonKey(defaultValue: '')
  @override
  final String uuid;
  @override
  final AppInfo? info;
  @JsonKey(defaultValue: '')
  @override
  final String token;

  @override
  String toString() {
    return 'ApplicationInitResponse(result: $result, uuid: $uuid, info: $info, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApplicationInitResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$ApplicationInitResponseCopyWith<_ApplicationInitResponse> get copyWith =>
      __$ApplicationInitResponseCopyWithImpl<_ApplicationInitResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApplicationInitResponseToJson(this);
  }
}

abstract class _ApplicationInitResponse implements ApplicationInitResponse {
  const factory _ApplicationInitResponse(
      {String result,
      String uuid,
      AppInfo? info,
      String token}) = _$_ApplicationInitResponse;

  factory _ApplicationInitResponse.fromJson(Map<String, dynamic> json) =
      _$_ApplicationInitResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  AppInfo? get info => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApplicationInitResponseCopyWith<_ApplicationInitResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
