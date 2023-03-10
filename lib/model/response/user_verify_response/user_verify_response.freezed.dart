// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_verify_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserVerifyResponse _$UserVerifyResponseFromJson(Map<String, dynamic> json) {
  return _UserVerifyResponse.fromJson(json);
}

/// @nodoc
class _$UserVerifyResponseTearOff {
  const _$UserVerifyResponseTearOff();

  _UserVerifyResponse call(
      {String result = '',
      Supporter? supporter,
      String token = '',
      int points = 0,
      String verify = ''}) {
    return _UserVerifyResponse(
      result: result,
      supporter: supporter,
      token: token,
      points: points,
      verify: verify,
    );
  }

  UserVerifyResponse fromJson(Map<String, Object> json) {
    return UserVerifyResponse.fromJson(json);
  }
}

/// @nodoc
const $UserVerifyResponse = _$UserVerifyResponseTearOff();

/// @nodoc
mixin _$UserVerifyResponse {
  String get result => throw _privateConstructorUsedError;
  Supporter? get supporter => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  String get verify => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserVerifyResponseCopyWith<UserVerifyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserVerifyResponseCopyWith<$Res> {
  factory $UserVerifyResponseCopyWith(
          UserVerifyResponse value, $Res Function(UserVerifyResponse) then) =
      _$UserVerifyResponseCopyWithImpl<$Res>;
  $Res call(
      {String result,
      Supporter? supporter,
      String token,
      int points,
      String verify});

  $SupporterCopyWith<$Res>? get supporter;
}

/// @nodoc
class _$UserVerifyResponseCopyWithImpl<$Res>
    implements $UserVerifyResponseCopyWith<$Res> {
  _$UserVerifyResponseCopyWithImpl(this._value, this._then);

  final UserVerifyResponse _value;
  // ignore: unused_field
  final $Res Function(UserVerifyResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? supporter = freezed,
    Object? token = freezed,
    Object? points = freezed,
    Object? verify = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      supporter: supporter == freezed
          ? _value.supporter
          : supporter // ignore: cast_nullable_to_non_nullable
              as Supporter?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      verify: verify == freezed
          ? _value.verify
          : verify // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $SupporterCopyWith<$Res>? get supporter {
    if (_value.supporter == null) {
      return null;
    }

    return $SupporterCopyWith<$Res>(_value.supporter!, (value) {
      return _then(_value.copyWith(supporter: value));
    });
  }
}

/// @nodoc
abstract class _$UserVerifyResponseCopyWith<$Res>
    implements $UserVerifyResponseCopyWith<$Res> {
  factory _$UserVerifyResponseCopyWith(
          _UserVerifyResponse value, $Res Function(_UserVerifyResponse) then) =
      __$UserVerifyResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String result,
      Supporter? supporter,
      String token,
      int points,
      String verify});

  @override
  $SupporterCopyWith<$Res>? get supporter;
}

/// @nodoc
class __$UserVerifyResponseCopyWithImpl<$Res>
    extends _$UserVerifyResponseCopyWithImpl<$Res>
    implements _$UserVerifyResponseCopyWith<$Res> {
  __$UserVerifyResponseCopyWithImpl(
      _UserVerifyResponse _value, $Res Function(_UserVerifyResponse) _then)
      : super(_value, (v) => _then(v as _UserVerifyResponse));

  @override
  _UserVerifyResponse get _value => super._value as _UserVerifyResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? supporter = freezed,
    Object? token = freezed,
    Object? points = freezed,
    Object? verify = freezed,
  }) {
    return _then(_UserVerifyResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      supporter: supporter == freezed
          ? _value.supporter
          : supporter // ignore: cast_nullable_to_non_nullable
              as Supporter?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      verify: verify == freezed
          ? _value.verify
          : verify // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserVerifyResponse extends _UserVerifyResponse {
  const _$_UserVerifyResponse(
      {this.result = '',
      this.supporter,
      this.token = '',
      this.points = 0,
      this.verify = ''})
      : super._();

  factory _$_UserVerifyResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UserVerifyResponseFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String result;
  @override
  final Supporter? supporter;
  @JsonKey(defaultValue: '')
  @override
  final String token;
  @JsonKey(defaultValue: 0)
  @override
  final int points;
  @JsonKey(defaultValue: '')
  @override
  final String verify;

  @override
  String toString() {
    return 'UserVerifyResponse(result: $result, supporter: $supporter, token: $token, points: $points, verify: $verify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserVerifyResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.supporter, supporter) ||
                const DeepCollectionEquality()
                    .equals(other.supporter, supporter)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)) &&
            (identical(other.verify, verify) ||
                const DeepCollectionEquality().equals(other.verify, verify)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(supporter) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(verify);

  @JsonKey(ignore: true)
  @override
  _$UserVerifyResponseCopyWith<_UserVerifyResponse> get copyWith =>
      __$UserVerifyResponseCopyWithImpl<_UserVerifyResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserVerifyResponseToJson(this);
  }
}

abstract class _UserVerifyResponse extends UserVerifyResponse {
  const factory _UserVerifyResponse(
      {String result,
      Supporter? supporter,
      String token,
      int points,
      String verify}) = _$_UserVerifyResponse;
  const _UserVerifyResponse._() : super._();

  factory _UserVerifyResponse.fromJson(Map<String, dynamic> json) =
      _$_UserVerifyResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  Supporter? get supporter => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  int get points => throw _privateConstructorUsedError;
  @override
  String get verify => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserVerifyResponseCopyWith<_UserVerifyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
