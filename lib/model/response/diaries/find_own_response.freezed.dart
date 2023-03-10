// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'find_own_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiariesFindOwnResponse _$DiariesFindOwnResponseFromJson(
    Map<String, dynamic> json) {
  return _DiariesFindOwnResponse.fromJson(json);
}

/// @nodoc
class _$DiariesFindOwnResponseTearOff {
  const _$DiariesFindOwnResponseTearOff();

  _DiariesFindOwnResponse call(
      {required String result,
      List<Diary> diaries = const <Diary>[],
      required String token}) {
    return _DiariesFindOwnResponse(
      result: result,
      diaries: diaries,
      token: token,
    );
  }

  DiariesFindOwnResponse fromJson(Map<String, Object> json) {
    return DiariesFindOwnResponse.fromJson(json);
  }
}

/// @nodoc
const $DiariesFindOwnResponse = _$DiariesFindOwnResponseTearOff();

/// @nodoc
mixin _$DiariesFindOwnResponse {
  String get result => throw _privateConstructorUsedError;
  List<Diary> get diaries => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiariesFindOwnResponseCopyWith<DiariesFindOwnResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiariesFindOwnResponseCopyWith<$Res> {
  factory $DiariesFindOwnResponseCopyWith(DiariesFindOwnResponse value,
          $Res Function(DiariesFindOwnResponse) then) =
      _$DiariesFindOwnResponseCopyWithImpl<$Res>;
  $Res call({String result, List<Diary> diaries, String token});
}

/// @nodoc
class _$DiariesFindOwnResponseCopyWithImpl<$Res>
    implements $DiariesFindOwnResponseCopyWith<$Res> {
  _$DiariesFindOwnResponseCopyWithImpl(this._value, this._then);

  final DiariesFindOwnResponse _value;
  // ignore: unused_field
  final $Res Function(DiariesFindOwnResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? diaries = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
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
abstract class _$DiariesFindOwnResponseCopyWith<$Res>
    implements $DiariesFindOwnResponseCopyWith<$Res> {
  factory _$DiariesFindOwnResponseCopyWith(_DiariesFindOwnResponse value,
          $Res Function(_DiariesFindOwnResponse) then) =
      __$DiariesFindOwnResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, List<Diary> diaries, String token});
}

/// @nodoc
class __$DiariesFindOwnResponseCopyWithImpl<$Res>
    extends _$DiariesFindOwnResponseCopyWithImpl<$Res>
    implements _$DiariesFindOwnResponseCopyWith<$Res> {
  __$DiariesFindOwnResponseCopyWithImpl(_DiariesFindOwnResponse _value,
      $Res Function(_DiariesFindOwnResponse) _then)
      : super(_value, (v) => _then(v as _DiariesFindOwnResponse));

  @override
  _DiariesFindOwnResponse get _value => super._value as _DiariesFindOwnResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? diaries = freezed,
    Object? token = freezed,
  }) {
    return _then(_DiariesFindOwnResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
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
class _$_DiariesFindOwnResponse extends _DiariesFindOwnResponse {
  const _$_DiariesFindOwnResponse(
      {required this.result,
      this.diaries = const <Diary>[],
      required this.token})
      : super._();

  factory _$_DiariesFindOwnResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DiariesFindOwnResponseFromJson(json);

  @override
  final String result;
  @JsonKey(defaultValue: const <Diary>[])
  @override
  final List<Diary> diaries;
  @override
  final String token;

  @override
  String toString() {
    return 'DiariesFindOwnResponse(result: $result, diaries: $diaries, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiariesFindOwnResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
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
      const DeepCollectionEquality().hash(diaries) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$DiariesFindOwnResponseCopyWith<_DiariesFindOwnResponse> get copyWith =>
      __$DiariesFindOwnResponseCopyWithImpl<_DiariesFindOwnResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiariesFindOwnResponseToJson(this);
  }
}

abstract class _DiariesFindOwnResponse extends DiariesFindOwnResponse {
  const factory _DiariesFindOwnResponse(
      {required String result,
      List<Diary> diaries,
      required String token}) = _$_DiariesFindOwnResponse;
  const _DiariesFindOwnResponse._() : super._();

  factory _DiariesFindOwnResponse.fromJson(Map<String, dynamic> json) =
      _$_DiariesFindOwnResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  List<Diary> get diaries => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiariesFindOwnResponseCopyWith<_DiariesFindOwnResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
