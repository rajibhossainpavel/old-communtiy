// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_restore_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRestoreResponse _$UserRestoreResponseFromJson(Map<String, dynamic> json) {
  return _UserRestoreResponse.fromJson(json);
}

/// @nodoc
class _$UserRestoreResponseTearOff {
  const _$UserRestoreResponseTearOff();

  _UserRestoreResponse call(
      {String result = '',
      bool isUserTemp = false,
      String limited = '',
      bool isRestore = false,
      User? user = null,
      String token = ''}) {
    return _UserRestoreResponse(
      result: result,
      isUserTemp: isUserTemp,
      limited: limited,
      isRestore: isRestore,
      user: user,
      token: token,
    );
  }

  UserRestoreResponse fromJson(Map<String, Object> json) {
    return UserRestoreResponse.fromJson(json);
  }
}

/// @nodoc
const $UserRestoreResponse = _$UserRestoreResponseTearOff();

/// @nodoc
mixin _$UserRestoreResponse {
  String get result => throw _privateConstructorUsedError;
  bool get isUserTemp => throw _privateConstructorUsedError;
  String get limited => throw _privateConstructorUsedError;
  bool get isRestore => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRestoreResponseCopyWith<UserRestoreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRestoreResponseCopyWith<$Res> {
  factory $UserRestoreResponseCopyWith(
          UserRestoreResponse value, $Res Function(UserRestoreResponse) then) =
      _$UserRestoreResponseCopyWithImpl<$Res>;
  $Res call(
      {String result,
      bool isUserTemp,
      String limited,
      bool isRestore,
      User? user,
      String token});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserRestoreResponseCopyWithImpl<$Res>
    implements $UserRestoreResponseCopyWith<$Res> {
  _$UserRestoreResponseCopyWithImpl(this._value, this._then);

  final UserRestoreResponse _value;
  // ignore: unused_field
  final $Res Function(UserRestoreResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? isUserTemp = freezed,
    Object? limited = freezed,
    Object? isRestore = freezed,
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      isUserTemp: isUserTemp == freezed
          ? _value.isUserTemp
          : isUserTemp // ignore: cast_nullable_to_non_nullable
              as bool,
      limited: limited == freezed
          ? _value.limited
          : limited // ignore: cast_nullable_to_non_nullable
              as String,
      isRestore: isRestore == freezed
          ? _value.isRestore
          : isRestore // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$UserRestoreResponseCopyWith<$Res>
    implements $UserRestoreResponseCopyWith<$Res> {
  factory _$UserRestoreResponseCopyWith(_UserRestoreResponse value,
          $Res Function(_UserRestoreResponse) then) =
      __$UserRestoreResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String result,
      bool isUserTemp,
      String limited,
      bool isRestore,
      User? user,
      String token});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$UserRestoreResponseCopyWithImpl<$Res>
    extends _$UserRestoreResponseCopyWithImpl<$Res>
    implements _$UserRestoreResponseCopyWith<$Res> {
  __$UserRestoreResponseCopyWithImpl(
      _UserRestoreResponse _value, $Res Function(_UserRestoreResponse) _then)
      : super(_value, (v) => _then(v as _UserRestoreResponse));

  @override
  _UserRestoreResponse get _value => super._value as _UserRestoreResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? isUserTemp = freezed,
    Object? limited = freezed,
    Object? isRestore = freezed,
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_UserRestoreResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      isUserTemp: isUserTemp == freezed
          ? _value.isUserTemp
          : isUserTemp // ignore: cast_nullable_to_non_nullable
              as bool,
      limited: limited == freezed
          ? _value.limited
          : limited // ignore: cast_nullable_to_non_nullable
              as String,
      isRestore: isRestore == freezed
          ? _value.isRestore
          : isRestore // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRestoreResponse extends _UserRestoreResponse {
  const _$_UserRestoreResponse(
      {this.result = '',
      this.isUserTemp = false,
      this.limited = '',
      this.isRestore = false,
      this.user = null,
      this.token = ''})
      : super._();

  factory _$_UserRestoreResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UserRestoreResponseFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String result;
  @JsonKey(defaultValue: false)
  @override
  final bool isUserTemp;
  @JsonKey(defaultValue: '')
  @override
  final String limited;
  @JsonKey(defaultValue: false)
  @override
  final bool isRestore;
  @JsonKey(defaultValue: null)
  @override
  final User? user;
  @JsonKey(defaultValue: '')
  @override
  final String token;

  @override
  String toString() {
    return 'UserRestoreResponse(result: $result, isUserTemp: $isUserTemp, limited: $limited, isRestore: $isRestore, user: $user, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserRestoreResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.isUserTemp, isUserTemp) ||
                const DeepCollectionEquality()
                    .equals(other.isUserTemp, isUserTemp)) &&
            (identical(other.limited, limited) ||
                const DeepCollectionEquality()
                    .equals(other.limited, limited)) &&
            (identical(other.isRestore, isRestore) ||
                const DeepCollectionEquality()
                    .equals(other.isRestore, isRestore)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(isUserTemp) ^
      const DeepCollectionEquality().hash(limited) ^
      const DeepCollectionEquality().hash(isRestore) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$UserRestoreResponseCopyWith<_UserRestoreResponse> get copyWith =>
      __$UserRestoreResponseCopyWithImpl<_UserRestoreResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserRestoreResponseToJson(this);
  }
}

abstract class _UserRestoreResponse extends UserRestoreResponse {
  const factory _UserRestoreResponse(
      {String result,
      bool isUserTemp,
      String limited,
      bool isRestore,
      User? user,
      String token}) = _$_UserRestoreResponse;
  const _UserRestoreResponse._() : super._();

  factory _UserRestoreResponse.fromJson(Map<String, dynamic> json) =
      _$_UserRestoreResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  bool get isUserTemp => throw _privateConstructorUsedError;
  @override
  String get limited => throw _privateConstructorUsedError;
  @override
  bool get isRestore => throw _privateConstructorUsedError;
  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserRestoreResponseCopyWith<_UserRestoreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
