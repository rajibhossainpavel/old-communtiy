// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notifications_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationsResponse _$NotificationsResponseFromJson(
    Map<String, dynamic> json) {
  return _NotificationsResponse.fromJson(json);
}

/// @nodoc
class _$NotificationsResponseTearOff {
  const _$NotificationsResponseTearOff();

  _NotificationsResponse call(
      {String result = '', String token = '', bool isClose = false}) {
    return _NotificationsResponse(
      result: result,
      token: token,
      isClose: isClose,
    );
  }

  NotificationsResponse fromJson(Map<String, Object> json) {
    return NotificationsResponse.fromJson(json);
  }
}

/// @nodoc
const $NotificationsResponse = _$NotificationsResponseTearOff();

/// @nodoc
mixin _$NotificationsResponse {
  String get result => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  bool get isClose => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationsResponseCopyWith<NotificationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsResponseCopyWith<$Res> {
  factory $NotificationsResponseCopyWith(NotificationsResponse value,
          $Res Function(NotificationsResponse) then) =
      _$NotificationsResponseCopyWithImpl<$Res>;
  $Res call({String result, String token, bool isClose});
}

/// @nodoc
class _$NotificationsResponseCopyWithImpl<$Res>
    implements $NotificationsResponseCopyWith<$Res> {
  _$NotificationsResponseCopyWithImpl(this._value, this._then);

  final NotificationsResponse _value;
  // ignore: unused_field
  final $Res Function(NotificationsResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? token = freezed,
    Object? isClose = freezed,
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
      isClose: isClose == freezed
          ? _value.isClose
          : isClose // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$NotificationsResponseCopyWith<$Res>
    implements $NotificationsResponseCopyWith<$Res> {
  factory _$NotificationsResponseCopyWith(_NotificationsResponse value,
          $Res Function(_NotificationsResponse) then) =
      __$NotificationsResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, String token, bool isClose});
}

/// @nodoc
class __$NotificationsResponseCopyWithImpl<$Res>
    extends _$NotificationsResponseCopyWithImpl<$Res>
    implements _$NotificationsResponseCopyWith<$Res> {
  __$NotificationsResponseCopyWithImpl(_NotificationsResponse _value,
      $Res Function(_NotificationsResponse) _then)
      : super(_value, (v) => _then(v as _NotificationsResponse));

  @override
  _NotificationsResponse get _value => super._value as _NotificationsResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? token = freezed,
    Object? isClose = freezed,
  }) {
    return _then(_NotificationsResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isClose: isClose == freezed
          ? _value.isClose
          : isClose // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationsResponse implements _NotificationsResponse {
  const _$_NotificationsResponse(
      {this.result = '', this.token = '', this.isClose = false});

  factory _$_NotificationsResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_NotificationsResponseFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String result;
  @JsonKey(defaultValue: '')
  @override
  final String token;
  @JsonKey(defaultValue: false)
  @override
  final bool isClose;

  @override
  String toString() {
    return 'NotificationsResponse(result: $result, token: $token, isClose: $isClose)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationsResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.isClose, isClose) ||
                const DeepCollectionEquality().equals(other.isClose, isClose)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(isClose);

  @JsonKey(ignore: true)
  @override
  _$NotificationsResponseCopyWith<_NotificationsResponse> get copyWith =>
      __$NotificationsResponseCopyWithImpl<_NotificationsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationsResponseToJson(this);
  }
}

abstract class _NotificationsResponse implements NotificationsResponse {
  const factory _NotificationsResponse(
      {String result, String token, bool isClose}) = _$_NotificationsResponse;

  factory _NotificationsResponse.fromJson(Map<String, dynamic> json) =
      _$_NotificationsResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  bool get isClose => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationsResponseCopyWith<_NotificationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
