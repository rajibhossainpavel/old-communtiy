// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_recommend_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRecommendResponse _$UserRecommendResponseFromJson(
    Map<String, dynamic> json) {
  return _UserRecommendResponse.fromJson(json);
}

/// @nodoc
class _$UserRecommendResponseTearOff {
  const _$UserRecommendResponseTearOff();

  _UserRecommendResponse call(
      {required String result,
      required String token,
      required List<User> users}) {
    return _UserRecommendResponse(
      result: result,
      token: token,
      users: users,
    );
  }

  UserRecommendResponse fromJson(Map<String, Object> json) {
    return UserRecommendResponse.fromJson(json);
  }
}

/// @nodoc
const $UserRecommendResponse = _$UserRecommendResponseTearOff();

/// @nodoc
mixin _$UserRecommendResponse {
  String get result => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRecommendResponseCopyWith<UserRecommendResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRecommendResponseCopyWith<$Res> {
  factory $UserRecommendResponseCopyWith(UserRecommendResponse value,
          $Res Function(UserRecommendResponse) then) =
      _$UserRecommendResponseCopyWithImpl<$Res>;
  $Res call({String result, String token, List<User> users});
}

/// @nodoc
class _$UserRecommendResponseCopyWithImpl<$Res>
    implements $UserRecommendResponseCopyWith<$Res> {
  _$UserRecommendResponseCopyWithImpl(this._value, this._then);

  final UserRecommendResponse _value;
  // ignore: unused_field
  final $Res Function(UserRecommendResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? token = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
abstract class _$UserRecommendResponseCopyWith<$Res>
    implements $UserRecommendResponseCopyWith<$Res> {
  factory _$UserRecommendResponseCopyWith(_UserRecommendResponse value,
          $Res Function(_UserRecommendResponse) then) =
      __$UserRecommendResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, String token, List<User> users});
}

/// @nodoc
class __$UserRecommendResponseCopyWithImpl<$Res>
    extends _$UserRecommendResponseCopyWithImpl<$Res>
    implements _$UserRecommendResponseCopyWith<$Res> {
  __$UserRecommendResponseCopyWithImpl(_UserRecommendResponse _value,
      $Res Function(_UserRecommendResponse) _then)
      : super(_value, (v) => _then(v as _UserRecommendResponse));

  @override
  _UserRecommendResponse get _value => super._value as _UserRecommendResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? token = freezed,
    Object? users = freezed,
  }) {
    return _then(_UserRecommendResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRecommendResponse implements _UserRecommendResponse {
  const _$_UserRecommendResponse(
      {required this.result, required this.token, required this.users});

  factory _$_UserRecommendResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UserRecommendResponseFromJson(json);

  @override
  final String result;
  @override
  final String token;
  @override
  final List<User> users;

  @override
  String toString() {
    return 'UserRecommendResponse(result: $result, token: $token, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserRecommendResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  _$UserRecommendResponseCopyWith<_UserRecommendResponse> get copyWith =>
      __$UserRecommendResponseCopyWithImpl<_UserRecommendResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserRecommendResponseToJson(this);
  }
}

abstract class _UserRecommendResponse implements UserRecommendResponse {
  const factory _UserRecommendResponse(
      {required String result,
      required String token,
      required List<User> users}) = _$_UserRecommendResponse;

  factory _UserRecommendResponse.fromJson(Map<String, dynamic> json) =
      _$_UserRecommendResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  List<User> get users => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserRecommendResponseCopyWith<_UserRecommendResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
