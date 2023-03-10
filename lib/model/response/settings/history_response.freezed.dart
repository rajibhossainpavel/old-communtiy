// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingsHistoryResponse _$SettingsHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _SettingsHistoryResponse.fromJson(json);
}

/// @nodoc
class _$SettingsHistoryResponseTearOff {
  const _$SettingsHistoryResponseTearOff();

  _SettingsHistoryResponse call(
      {String result = '',
      String token = '',
      List<User> users = const <User>[]}) {
    return _SettingsHistoryResponse(
      result: result,
      token: token,
      users: users,
    );
  }

  SettingsHistoryResponse fromJson(Map<String, Object> json) {
    return SettingsHistoryResponse.fromJson(json);
  }
}

/// @nodoc
const $SettingsHistoryResponse = _$SettingsHistoryResponseTearOff();

/// @nodoc
mixin _$SettingsHistoryResponse {
  String get result => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsHistoryResponseCopyWith<SettingsHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsHistoryResponseCopyWith<$Res> {
  factory $SettingsHistoryResponseCopyWith(SettingsHistoryResponse value,
          $Res Function(SettingsHistoryResponse) then) =
      _$SettingsHistoryResponseCopyWithImpl<$Res>;
  $Res call({String result, String token, List<User> users});
}

/// @nodoc
class _$SettingsHistoryResponseCopyWithImpl<$Res>
    implements $SettingsHistoryResponseCopyWith<$Res> {
  _$SettingsHistoryResponseCopyWithImpl(this._value, this._then);

  final SettingsHistoryResponse _value;
  // ignore: unused_field
  final $Res Function(SettingsHistoryResponse) _then;

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
abstract class _$SettingsHistoryResponseCopyWith<$Res>
    implements $SettingsHistoryResponseCopyWith<$Res> {
  factory _$SettingsHistoryResponseCopyWith(_SettingsHistoryResponse value,
          $Res Function(_SettingsHistoryResponse) then) =
      __$SettingsHistoryResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, String token, List<User> users});
}

/// @nodoc
class __$SettingsHistoryResponseCopyWithImpl<$Res>
    extends _$SettingsHistoryResponseCopyWithImpl<$Res>
    implements _$SettingsHistoryResponseCopyWith<$Res> {
  __$SettingsHistoryResponseCopyWithImpl(_SettingsHistoryResponse _value,
      $Res Function(_SettingsHistoryResponse) _then)
      : super(_value, (v) => _then(v as _SettingsHistoryResponse));

  @override
  _SettingsHistoryResponse get _value =>
      super._value as _SettingsHistoryResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? token = freezed,
    Object? users = freezed,
  }) {
    return _then(_SettingsHistoryResponse(
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
class _$_SettingsHistoryResponse extends _SettingsHistoryResponse {
  const _$_SettingsHistoryResponse(
      {this.result = '', this.token = '', this.users = const <User>[]})
      : super._();

  factory _$_SettingsHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SettingsHistoryResponseFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String result;
  @JsonKey(defaultValue: '')
  @override
  final String token;
  @JsonKey(defaultValue: const <User>[])
  @override
  final List<User> users;

  @override
  String toString() {
    return 'SettingsHistoryResponse(result: $result, token: $token, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsHistoryResponse &&
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
  _$SettingsHistoryResponseCopyWith<_SettingsHistoryResponse> get copyWith =>
      __$SettingsHistoryResponseCopyWithImpl<_SettingsHistoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SettingsHistoryResponseToJson(this);
  }
}

abstract class _SettingsHistoryResponse extends SettingsHistoryResponse {
  const factory _SettingsHistoryResponse(
      {String result,
      String token,
      List<User> users}) = _$_SettingsHistoryResponse;
  const _SettingsHistoryResponse._() : super._();

  factory _SettingsHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$_SettingsHistoryResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  List<User> get users => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SettingsHistoryResponseCopyWith<_SettingsHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
