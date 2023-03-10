// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'communication_users_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommunicationUsersResponse _$CommunicationUsersResponseFromJson(
    Map<String, dynamic> json) {
  return _CommunicationUsersResponse.fromJson(json);
}

/// @nodoc
class _$CommunicationUsersResponseTearOff {
  const _$CommunicationUsersResponseTearOff();

  _CommunicationUsersResponse call(
      {String token = '',
      String result = '',
      List<CommunicationUser> userLikedInfos = const <CommunicationUser>[]}) {
    return _CommunicationUsersResponse(
      token: token,
      result: result,
      userLikedInfos: userLikedInfos,
    );
  }

  CommunicationUsersResponse fromJson(Map<String, Object> json) {
    return CommunicationUsersResponse.fromJson(json);
  }
}

/// @nodoc
const $CommunicationUsersResponse = _$CommunicationUsersResponseTearOff();

/// @nodoc
mixin _$CommunicationUsersResponse {
  String get token => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;
  List<CommunicationUser> get userLikedInfos =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunicationUsersResponseCopyWith<CommunicationUsersResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunicationUsersResponseCopyWith<$Res> {
  factory $CommunicationUsersResponseCopyWith(CommunicationUsersResponse value,
          $Res Function(CommunicationUsersResponse) then) =
      _$CommunicationUsersResponseCopyWithImpl<$Res>;
  $Res call(
      {String token, String result, List<CommunicationUser> userLikedInfos});
}

/// @nodoc
class _$CommunicationUsersResponseCopyWithImpl<$Res>
    implements $CommunicationUsersResponseCopyWith<$Res> {
  _$CommunicationUsersResponseCopyWithImpl(this._value, this._then);

  final CommunicationUsersResponse _value;
  // ignore: unused_field
  final $Res Function(CommunicationUsersResponse) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? result = freezed,
    Object? userLikedInfos = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      userLikedInfos: userLikedInfos == freezed
          ? _value.userLikedInfos
          : userLikedInfos // ignore: cast_nullable_to_non_nullable
              as List<CommunicationUser>,
    ));
  }
}

/// @nodoc
abstract class _$CommunicationUsersResponseCopyWith<$Res>
    implements $CommunicationUsersResponseCopyWith<$Res> {
  factory _$CommunicationUsersResponseCopyWith(
          _CommunicationUsersResponse value,
          $Res Function(_CommunicationUsersResponse) then) =
      __$CommunicationUsersResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String token, String result, List<CommunicationUser> userLikedInfos});
}

/// @nodoc
class __$CommunicationUsersResponseCopyWithImpl<$Res>
    extends _$CommunicationUsersResponseCopyWithImpl<$Res>
    implements _$CommunicationUsersResponseCopyWith<$Res> {
  __$CommunicationUsersResponseCopyWithImpl(_CommunicationUsersResponse _value,
      $Res Function(_CommunicationUsersResponse) _then)
      : super(_value, (v) => _then(v as _CommunicationUsersResponse));

  @override
  _CommunicationUsersResponse get _value =>
      super._value as _CommunicationUsersResponse;

  @override
  $Res call({
    Object? token = freezed,
    Object? result = freezed,
    Object? userLikedInfos = freezed,
  }) {
    return _then(_CommunicationUsersResponse(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      userLikedInfos: userLikedInfos == freezed
          ? _value.userLikedInfos
          : userLikedInfos // ignore: cast_nullable_to_non_nullable
              as List<CommunicationUser>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommunicationUsersResponse extends _CommunicationUsersResponse {
  const _$_CommunicationUsersResponse(
      {this.token = '',
      this.result = '',
      this.userLikedInfos = const <CommunicationUser>[]})
      : super._();

  factory _$_CommunicationUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CommunicationUsersResponseFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String token;
  @JsonKey(defaultValue: '')
  @override
  final String result;
  @JsonKey(defaultValue: const <CommunicationUser>[])
  @override
  final List<CommunicationUser> userLikedInfos;

  @override
  String toString() {
    return 'CommunicationUsersResponse(token: $token, result: $result, userLikedInfos: $userLikedInfos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommunicationUsersResponse &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.userLikedInfos, userLikedInfos) ||
                const DeepCollectionEquality()
                    .equals(other.userLikedInfos, userLikedInfos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(userLikedInfos);

  @JsonKey(ignore: true)
  @override
  _$CommunicationUsersResponseCopyWith<_CommunicationUsersResponse>
      get copyWith => __$CommunicationUsersResponseCopyWithImpl<
          _CommunicationUsersResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommunicationUsersResponseToJson(this);
  }
}

abstract class _CommunicationUsersResponse extends CommunicationUsersResponse {
  const factory _CommunicationUsersResponse(
      {String token,
      String result,
      List<CommunicationUser> userLikedInfos}) = _$_CommunicationUsersResponse;
  const _CommunicationUsersResponse._() : super._();

  factory _CommunicationUsersResponse.fromJson(Map<String, dynamic> json) =
      _$_CommunicationUsersResponse.fromJson;

  @override
  String get token => throw _privateConstructorUsedError;
  @override
  String get result => throw _privateConstructorUsedError;
  @override
  List<CommunicationUser> get userLikedInfos =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommunicationUsersResponseCopyWith<_CommunicationUsersResponse>
      get copyWith => throw _privateConstructorUsedError;
}
