// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'find_by_type_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiariesFindByTypeResponse _$DiariesFindByTypeResponseFromJson(
    Map<String, dynamic> json) {
  return _DiariesFindByTypeResponse.fromJson(json);
}

/// @nodoc
class _$DiariesFindByTypeResponseTearOff {
  const _$DiariesFindByTypeResponseTearOff();

  _DiariesFindByTypeResponse call(
      {required String result,
      String message = "",
      List<Diary> diaries = const <Diary>[],
      required String token}) {
    return _DiariesFindByTypeResponse(
      result: result,
      message: message,
      diaries: diaries,
      token: token,
    );
  }

  DiariesFindByTypeResponse fromJson(Map<String, Object> json) {
    return DiariesFindByTypeResponse.fromJson(json);
  }
}

/// @nodoc
const $DiariesFindByTypeResponse = _$DiariesFindByTypeResponseTearOff();

/// @nodoc
mixin _$DiariesFindByTypeResponse {
  String get result => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<Diary> get diaries => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiariesFindByTypeResponseCopyWith<DiariesFindByTypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiariesFindByTypeResponseCopyWith<$Res> {
  factory $DiariesFindByTypeResponseCopyWith(DiariesFindByTypeResponse value,
          $Res Function(DiariesFindByTypeResponse) then) =
      _$DiariesFindByTypeResponseCopyWithImpl<$Res>;
  $Res call({String result, String message, List<Diary> diaries, String token});
}

/// @nodoc
class _$DiariesFindByTypeResponseCopyWithImpl<$Res>
    implements $DiariesFindByTypeResponseCopyWith<$Res> {
  _$DiariesFindByTypeResponseCopyWithImpl(this._value, this._then);

  final DiariesFindByTypeResponse _value;
  // ignore: unused_field
  final $Res Function(DiariesFindByTypeResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? diaries = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      diaries: diaries == freezed
          ? _value.diaries
          : diaries // ignore: cast_nullable_to_non_nullable
              as List<Diary>,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DiariesFindByTypeResponseCopyWith<$Res>
    implements $DiariesFindByTypeResponseCopyWith<$Res> {
  factory _$DiariesFindByTypeResponseCopyWith(_DiariesFindByTypeResponse value,
          $Res Function(_DiariesFindByTypeResponse) then) =
      __$DiariesFindByTypeResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, String message, List<Diary> diaries, String token});
}

/// @nodoc
class __$DiariesFindByTypeResponseCopyWithImpl<$Res>
    extends _$DiariesFindByTypeResponseCopyWithImpl<$Res>
    implements _$DiariesFindByTypeResponseCopyWith<$Res> {
  __$DiariesFindByTypeResponseCopyWithImpl(_DiariesFindByTypeResponse _value,
      $Res Function(_DiariesFindByTypeResponse) _then)
      : super(_value, (v) => _then(v as _DiariesFindByTypeResponse));

  @override
  _DiariesFindByTypeResponse get _value =>
      super._value as _DiariesFindByTypeResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? diaries = freezed,
    Object? token = freezed,
  }) {
    return _then(_DiariesFindByTypeResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      diaries: diaries == freezed
          ? _value.diaries
          : diaries // ignore: cast_nullable_to_non_nullable
              as List<Diary>,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiariesFindByTypeResponse extends _DiariesFindByTypeResponse {
  const _$_DiariesFindByTypeResponse(
      {required this.result,
      this.message = "",
      this.diaries = const <Diary>[],
      required this.token})
      : super._();

  factory _$_DiariesFindByTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DiariesFindByTypeResponseFromJson(json);

  @override
  final String result;
  @JsonKey(defaultValue: "")
  @override
  final String message;
  @JsonKey(defaultValue: const <Diary>[])
  @override
  final List<Diary> diaries;
  @override
  final String token;

  @override
  String toString() {
    return 'DiariesFindByTypeResponse(result: $result, message: $message, diaries: $diaries, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiariesFindByTypeResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.diaries, diaries) ||
                const DeepCollectionEquality()
                    .equals(other.diaries, diaries)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(diaries) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$DiariesFindByTypeResponseCopyWith<_DiariesFindByTypeResponse>
      get copyWith =>
          __$DiariesFindByTypeResponseCopyWithImpl<_DiariesFindByTypeResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiariesFindByTypeResponseToJson(this);
  }
}

abstract class _DiariesFindByTypeResponse extends DiariesFindByTypeResponse {
  const factory _DiariesFindByTypeResponse(
      {required String result,
      String message,
      List<Diary> diaries,
      required String token}) = _$_DiariesFindByTypeResponse;
  const _DiariesFindByTypeResponse._() : super._();

  factory _DiariesFindByTypeResponse.fromJson(Map<String, dynamic> json) =
      _$_DiariesFindByTypeResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  List<Diary> get diaries => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiariesFindByTypeResponseCopyWith<_DiariesFindByTypeResponse>
      get copyWith => throw _privateConstructorUsedError;
}
