// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDetailResponse _$UserDetailResponseFromJson(Map<String, dynamic> json) {
  return _UserDetailResponse.fromJson(json);
}

/// @nodoc
class _$UserDetailResponseTearOff {
  const _$UserDetailResponseTearOff();

  _UserDetailResponse call(
      {required String result,
      required String uid,
      List<Group> groups = const <Group>[],
      required User user,
      List<Expert> experts = const <Expert>[],
      String token = '',
      String msg = ''}) {
    return _UserDetailResponse(
      result: result,
      uid: uid,
      groups: groups,
      user: user,
      experts: experts,
      token: token,
      msg: msg,
    );
  }

  UserDetailResponse fromJson(Map<String, Object> json) {
    return UserDetailResponse.fromJson(json);
  }
}

/// @nodoc
const $UserDetailResponse = _$UserDetailResponseTearOff();

/// @nodoc
mixin _$UserDetailResponse {
  String get result => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  List<Group> get groups => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  List<Expert> get experts => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailResponseCopyWith<UserDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailResponseCopyWith<$Res> {
  factory $UserDetailResponseCopyWith(
          UserDetailResponse value, $Res Function(UserDetailResponse) then) =
      _$UserDetailResponseCopyWithImpl<$Res>;
  $Res call(
      {String result,
      String uid,
      List<Group> groups,
      User user,
      List<Expert> experts,
      String token,
      String msg});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserDetailResponseCopyWithImpl<$Res>
    implements $UserDetailResponseCopyWith<$Res> {
  _$UserDetailResponseCopyWithImpl(this._value, this._then);

  final UserDetailResponse _value;
  // ignore: unused_field
  final $Res Function(UserDetailResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? uid = freezed,
    Object? groups = freezed,
    Object? user = freezed,
    Object? experts = freezed,
    Object? token = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      experts: experts == freezed
          ? _value.experts
          : experts // ignore: cast_nullable_to_non_nullable
              as List<Expert>,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$UserDetailResponseCopyWith<$Res>
    implements $UserDetailResponseCopyWith<$Res> {
  factory _$UserDetailResponseCopyWith(
          _UserDetailResponse value, $Res Function(_UserDetailResponse) then) =
      __$UserDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String result,
      String uid,
      List<Group> groups,
      User user,
      List<Expert> experts,
      String token,
      String msg});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$UserDetailResponseCopyWithImpl<$Res>
    extends _$UserDetailResponseCopyWithImpl<$Res>
    implements _$UserDetailResponseCopyWith<$Res> {
  __$UserDetailResponseCopyWithImpl(
      _UserDetailResponse _value, $Res Function(_UserDetailResponse) _then)
      : super(_value, (v) => _then(v as _UserDetailResponse));

  @override
  _UserDetailResponse get _value => super._value as _UserDetailResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? uid = freezed,
    Object? groups = freezed,
    Object? user = freezed,
    Object? experts = freezed,
    Object? token = freezed,
    Object? msg = freezed,
  }) {
    return _then(_UserDetailResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      experts: experts == freezed
          ? _value.experts
          : experts // ignore: cast_nullable_to_non_nullable
              as List<Expert>,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDetailResponse extends _UserDetailResponse {
  const _$_UserDetailResponse(
      {required this.result,
      required this.uid,
      this.groups = const <Group>[],
      required this.user,
      this.experts = const <Expert>[],
      this.token = '',
      this.msg = ''})
      : super._();

  factory _$_UserDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDetailResponseFromJson(json);

  @override
  final String result;
  @override
  final String uid;
  @JsonKey(defaultValue: const <Group>[])
  @override
  final List<Group> groups;
  @override
  final User user;
  @JsonKey(defaultValue: const <Expert>[])
  @override
  final List<Expert> experts;
  @JsonKey(defaultValue: '')
  @override
  final String token;
  @JsonKey(defaultValue: '')
  @override
  final String msg;

  @override
  String toString() {
    return 'UserDetailResponse(result: $result, uid: $uid, groups: $groups, user: $user, experts: $experts, token: $token, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDetailResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.experts, experts) ||
                const DeepCollectionEquality()
                    .equals(other.experts, experts)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(experts) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$UserDetailResponseCopyWith<_UserDetailResponse> get copyWith =>
      __$UserDetailResponseCopyWithImpl<_UserDetailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDetailResponseToJson(this);
  }
}

abstract class _UserDetailResponse extends UserDetailResponse {
  const factory _UserDetailResponse(
      {required String result,
      required String uid,
      List<Group> groups,
      required User user,
      List<Expert> experts,
      String token,
      String msg}) = _$_UserDetailResponse;
  const _UserDetailResponse._() : super._();

  factory _UserDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_UserDetailResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  List<Group> get groups => throw _privateConstructorUsedError;
  @override
  User get user => throw _privateConstructorUsedError;
  @override
  List<Expert> get experts => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDetailResponseCopyWith<_UserDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
