// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'smile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiariesSmileResponse _$DiariesSmileResponseFromJson(Map<String, dynamic> json) {
  return _DiariesSmileResponse.fromJson(json);
}

/// @nodoc
class _$DiariesSmileResponseTearOff {
  const _$DiariesSmileResponseTearOff();

  _DiariesSmileResponse call(
      {required String result, int smile = 0, required String token}) {
    return _DiariesSmileResponse(
      result: result,
      smile: smile,
      token: token,
    );
  }

  DiariesSmileResponse fromJson(Map<String, Object> json) {
    return DiariesSmileResponse.fromJson(json);
  }
}

/// @nodoc
const $DiariesSmileResponse = _$DiariesSmileResponseTearOff();

/// @nodoc
mixin _$DiariesSmileResponse {
  String get result => throw _privateConstructorUsedError;
  int get smile => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiariesSmileResponseCopyWith<DiariesSmileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiariesSmileResponseCopyWith<$Res> {
  factory $DiariesSmileResponseCopyWith(DiariesSmileResponse value,
          $Res Function(DiariesSmileResponse) then) =
      _$DiariesSmileResponseCopyWithImpl<$Res>;
  $Res call({String result, int smile, String token});
}

/// @nodoc
class _$DiariesSmileResponseCopyWithImpl<$Res>
    implements $DiariesSmileResponseCopyWith<$Res> {
  _$DiariesSmileResponseCopyWithImpl(this._value, this._then);

  final DiariesSmileResponse _value;
  // ignore: unused_field
  final $Res Function(DiariesSmileResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? smile = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      smile: smile == freezed
          ? _value.smile
          : smile // ignore: cast_nullable_to_non_nullable
              as int,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DiariesSmileResponseCopyWith<$Res>
    implements $DiariesSmileResponseCopyWith<$Res> {
  factory _$DiariesSmileResponseCopyWith(_DiariesSmileResponse value,
          $Res Function(_DiariesSmileResponse) then) =
      __$DiariesSmileResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, int smile, String token});
}

/// @nodoc
class __$DiariesSmileResponseCopyWithImpl<$Res>
    extends _$DiariesSmileResponseCopyWithImpl<$Res>
    implements _$DiariesSmileResponseCopyWith<$Res> {
  __$DiariesSmileResponseCopyWithImpl(
      _DiariesSmileResponse _value, $Res Function(_DiariesSmileResponse) _then)
      : super(_value, (v) => _then(v as _DiariesSmileResponse));

  @override
  _DiariesSmileResponse get _value => super._value as _DiariesSmileResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? smile = freezed,
    Object? token = freezed,
  }) {
    return _then(_DiariesSmileResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      smile: smile == freezed
          ? _value.smile
          : smile // ignore: cast_nullable_to_non_nullable
              as int,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiariesSmileResponse extends _DiariesSmileResponse {
  const _$_DiariesSmileResponse(
      {required this.result, this.smile = 0, required this.token})
      : super._();

  factory _$_DiariesSmileResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DiariesSmileResponseFromJson(json);

  @override
  final String result;
  @JsonKey(defaultValue: 0)
  @override
  final int smile;
  @override
  final String token;

  @override
  String toString() {
    return 'DiariesSmileResponse(result: $result, smile: $smile, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiariesSmileResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.smile, smile) ||
                const DeepCollectionEquality().equals(other.smile, smile)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(smile) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$DiariesSmileResponseCopyWith<_DiariesSmileResponse> get copyWith =>
      __$DiariesSmileResponseCopyWithImpl<_DiariesSmileResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiariesSmileResponseToJson(this);
  }
}

abstract class _DiariesSmileResponse extends DiariesSmileResponse {
  const factory _DiariesSmileResponse(
      {required String result,
      int smile,
      required String token}) = _$_DiariesSmileResponse;
  const _DiariesSmileResponse._() : super._();

  factory _DiariesSmileResponse.fromJson(Map<String, dynamic> json) =
      _$_DiariesSmileResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  int get smile => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiariesSmileResponseCopyWith<_DiariesSmileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
