// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'visit_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VisitHistoryResponse _$VisitHistoryResponseFromJson(Map<String, dynamic> json) {
  return _VisitHistoryResponse.fromJson(json);
}

/// @nodoc
class _$VisitHistoryResponseTearOff {
  const _$VisitHistoryResponseTearOff();

  _VisitHistoryResponse call(
      {String result = '',
      String token = '',
      List<User> users = const <User>[]}) {
    return _VisitHistoryResponse(
      result: result,
      token: token,
      users: users,
    );
  }

  VisitHistoryResponse fromJson(Map<String, Object> json) {
    return VisitHistoryResponse.fromJson(json);
  }
}

/// @nodoc
const $VisitHistoryResponse = _$VisitHistoryResponseTearOff();

/// @nodoc
mixin _$VisitHistoryResponse {
  String get result => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VisitHistoryResponseCopyWith<VisitHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitHistoryResponseCopyWith<$Res> {
  factory $VisitHistoryResponseCopyWith(VisitHistoryResponse value,
          $Res Function(VisitHistoryResponse) then) =
      _$VisitHistoryResponseCopyWithImpl<$Res>;
  $Res call({String result, String token, List<User> users});
}

/// @nodoc
class _$VisitHistoryResponseCopyWithImpl<$Res>
    implements $VisitHistoryResponseCopyWith<$Res> {
  _$VisitHistoryResponseCopyWithImpl(this._value, this._then);

  final VisitHistoryResponse _value;
  // ignore: unused_field
  final $Res Function(VisitHistoryResponse) _then;

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
abstract class _$VisitHistoryResponseCopyWith<$Res>
    implements $VisitHistoryResponseCopyWith<$Res> {
  factory _$VisitHistoryResponseCopyWith(_VisitHistoryResponse value,
          $Res Function(_VisitHistoryResponse) then) =
      __$VisitHistoryResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, String token, List<User> users});
}

/// @nodoc
class __$VisitHistoryResponseCopyWithImpl<$Res>
    extends _$VisitHistoryResponseCopyWithImpl<$Res>
    implements _$VisitHistoryResponseCopyWith<$Res> {
  __$VisitHistoryResponseCopyWithImpl(
      _VisitHistoryResponse _value, $Res Function(_VisitHistoryResponse) _then)
      : super(_value, (v) => _then(v as _VisitHistoryResponse));

  @override
  _VisitHistoryResponse get _value => super._value as _VisitHistoryResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? token = freezed,
    Object? users = freezed,
  }) {
    return _then(_VisitHistoryResponse(
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
class _$_VisitHistoryResponse extends _VisitHistoryResponse {
  const _$_VisitHistoryResponse(
      {this.result = '', this.token = '', this.users = const <User>[]})
      : super._();

  factory _$_VisitHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_VisitHistoryResponseFromJson(json);

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
    return 'VisitHistoryResponse(result: $result, token: $token, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VisitHistoryResponse &&
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
  _$VisitHistoryResponseCopyWith<_VisitHistoryResponse> get copyWith =>
      __$VisitHistoryResponseCopyWithImpl<_VisitHistoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VisitHistoryResponseToJson(this);
  }
}

abstract class _VisitHistoryResponse extends VisitHistoryResponse {
  const factory _VisitHistoryResponse(
      {String result,
      String token,
      List<User> users}) = _$_VisitHistoryResponse;
  const _VisitHistoryResponse._() : super._();

  factory _VisitHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$_VisitHistoryResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  List<User> get users => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VisitHistoryResponseCopyWith<_VisitHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
