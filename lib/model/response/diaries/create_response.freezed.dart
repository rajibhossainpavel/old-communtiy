// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiariesCreateResponse _$DiariesCreateResponseFromJson(
    Map<String, dynamic> json) {
  return _DiariesCreateResponse.fromJson(json);
}

/// @nodoc
class _$DiariesCreateResponseTearOff {
  const _$DiariesCreateResponseTearOff();

  _DiariesCreateResponse call({required String result, required String token}) {
    return _DiariesCreateResponse(
      result: result,
      token: token,
    );
  }

  DiariesCreateResponse fromJson(Map<String, Object> json) {
    return DiariesCreateResponse.fromJson(json);
  }
}

/// @nodoc
const $DiariesCreateResponse = _$DiariesCreateResponseTearOff();

/// @nodoc
mixin _$DiariesCreateResponse {
  String get result => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiariesCreateResponseCopyWith<DiariesCreateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiariesCreateResponseCopyWith<$Res> {
  factory $DiariesCreateResponseCopyWith(DiariesCreateResponse value,
          $Res Function(DiariesCreateResponse) then) =
      _$DiariesCreateResponseCopyWithImpl<$Res>;
  $Res call({String result, String token});
}

/// @nodoc
class _$DiariesCreateResponseCopyWithImpl<$Res>
    implements $DiariesCreateResponseCopyWith<$Res> {
  _$DiariesCreateResponseCopyWithImpl(this._value, this._then);

  final DiariesCreateResponse _value;
  // ignore: unused_field
  final $Res Function(DiariesCreateResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? token = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$DiariesCreateResponseCopyWith<$Res>
    implements $DiariesCreateResponseCopyWith<$Res> {
  factory _$DiariesCreateResponseCopyWith(_DiariesCreateResponse value,
          $Res Function(_DiariesCreateResponse) then) =
      __$DiariesCreateResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, String token});
}

/// @nodoc
class __$DiariesCreateResponseCopyWithImpl<$Res>
    extends _$DiariesCreateResponseCopyWithImpl<$Res>
    implements _$DiariesCreateResponseCopyWith<$Res> {
  __$DiariesCreateResponseCopyWithImpl(_DiariesCreateResponse _value,
      $Res Function(_DiariesCreateResponse) _then)
      : super(_value, (v) => _then(v as _DiariesCreateResponse));

  @override
  _DiariesCreateResponse get _value => super._value as _DiariesCreateResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? token = freezed,
  }) {
    return _then(_DiariesCreateResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiariesCreateResponse extends _DiariesCreateResponse {
  const _$_DiariesCreateResponse({required this.result, required this.token})
      : super._();

  factory _$_DiariesCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DiariesCreateResponseFromJson(json);

  @override
  final String result;
  @override
  final String token;

  @override
  String toString() {
    return 'DiariesCreateResponse(result: $result, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiariesCreateResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$DiariesCreateResponseCopyWith<_DiariesCreateResponse> get copyWith =>
      __$DiariesCreateResponseCopyWithImpl<_DiariesCreateResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiariesCreateResponseToJson(this);
  }
}

abstract class _DiariesCreateResponse extends DiariesCreateResponse {
  const factory _DiariesCreateResponse(
      {required String result,
      required String token}) = _$_DiariesCreateResponse;
  const _DiariesCreateResponse._() : super._();

  factory _DiariesCreateResponse.fromJson(Map<String, dynamic> json) =
      _$_DiariesCreateResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiariesCreateResponseCopyWith<_DiariesCreateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
