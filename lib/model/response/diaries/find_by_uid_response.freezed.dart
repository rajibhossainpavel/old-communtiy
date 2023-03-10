// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'find_by_uid_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiariesFindByUidResponse _$DiariesFindByUidResponseFromJson(
    Map<String, dynamic> json) {
  return _DiariesFindByUidResponse.fromJson(json);
}

/// @nodoc
class _$DiariesFindByUidResponseTearOff {
  const _$DiariesFindByUidResponseTearOff();

  _DiariesFindByUidResponse call(
      {required String result,
      List<Diary> diaries = const <Diary>[],
      required String token}) {
    return _DiariesFindByUidResponse(
      result: result,
      diaries: diaries,
      token: token,
    );
  }

  DiariesFindByUidResponse fromJson(Map<String, Object> json) {
    return DiariesFindByUidResponse.fromJson(json);
  }
}

/// @nodoc
const $DiariesFindByUidResponse = _$DiariesFindByUidResponseTearOff();

/// @nodoc
mixin _$DiariesFindByUidResponse {
  String get result => throw _privateConstructorUsedError;
  List<Diary> get diaries => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiariesFindByUidResponseCopyWith<DiariesFindByUidResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiariesFindByUidResponseCopyWith<$Res> {
  factory $DiariesFindByUidResponseCopyWith(DiariesFindByUidResponse value,
          $Res Function(DiariesFindByUidResponse) then) =
      _$DiariesFindByUidResponseCopyWithImpl<$Res>;
  $Res call({String result, List<Diary> diaries, String token});
}

/// @nodoc
class _$DiariesFindByUidResponseCopyWithImpl<$Res>
    implements $DiariesFindByUidResponseCopyWith<$Res> {
  _$DiariesFindByUidResponseCopyWithImpl(this._value, this._then);

  final DiariesFindByUidResponse _value;
  // ignore: unused_field
  final $Res Function(DiariesFindByUidResponse) _then;

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
abstract class _$DiariesFindByUidResponseCopyWith<$Res>
    implements $DiariesFindByUidResponseCopyWith<$Res> {
  factory _$DiariesFindByUidResponseCopyWith(_DiariesFindByUidResponse value,
          $Res Function(_DiariesFindByUidResponse) then) =
      __$DiariesFindByUidResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, List<Diary> diaries, String token});
}

/// @nodoc
class __$DiariesFindByUidResponseCopyWithImpl<$Res>
    extends _$DiariesFindByUidResponseCopyWithImpl<$Res>
    implements _$DiariesFindByUidResponseCopyWith<$Res> {
  __$DiariesFindByUidResponseCopyWithImpl(_DiariesFindByUidResponse _value,
      $Res Function(_DiariesFindByUidResponse) _then)
      : super(_value, (v) => _then(v as _DiariesFindByUidResponse));

  @override
  _DiariesFindByUidResponse get _value =>
      super._value as _DiariesFindByUidResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? diaries = freezed,
    Object? token = freezed,
  }) {
    return _then(_DiariesFindByUidResponse(
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
class _$_DiariesFindByUidResponse extends _DiariesFindByUidResponse {
  const _$_DiariesFindByUidResponse(
      {required this.result,
      this.diaries = const <Diary>[],
      required this.token})
      : super._();

  factory _$_DiariesFindByUidResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DiariesFindByUidResponseFromJson(json);

  @override
  final String result;
  @JsonKey(defaultValue: const <Diary>[])
  @override
  final List<Diary> diaries;
  @override
  final String token;

  @override
  String toString() {
    return 'DiariesFindByUidResponse(result: $result, diaries: $diaries, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiariesFindByUidResponse &&
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
  _$DiariesFindByUidResponseCopyWith<_DiariesFindByUidResponse> get copyWith =>
      __$DiariesFindByUidResponseCopyWithImpl<_DiariesFindByUidResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiariesFindByUidResponseToJson(this);
  }
}

abstract class _DiariesFindByUidResponse extends DiariesFindByUidResponse {
  const factory _DiariesFindByUidResponse(
      {required String result,
      List<Diary> diaries,
      required String token}) = _$_DiariesFindByUidResponse;
  const _DiariesFindByUidResponse._() : super._();

  factory _DiariesFindByUidResponse.fromJson(Map<String, dynamic> json) =
      _$_DiariesFindByUidResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  List<Diary> get diaries => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiariesFindByUidResponseCopyWith<_DiariesFindByUidResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
