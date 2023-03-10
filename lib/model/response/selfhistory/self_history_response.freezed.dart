// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'self_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SelfHistoryResponse _$SelfHistoryResponseFromJson(Map<String, dynamic> json) {
  return _SelfHistoryResponse.fromJson(json);
}

/// @nodoc
class _$SelfHistoryResponseTearOff {
  const _$SelfHistoryResponseTearOff();

  _SelfHistoryResponse call(
      {String result = '',
      String uid = '',
      String token = '',
      List<SelfHistory> selfHistory = const <SelfHistory>[],
      bool isPreview = false,
      bool isPublish = false}) {
    return _SelfHistoryResponse(
      result: result,
      uid: uid,
      token: token,
      selfHistory: selfHistory,
      isPreview: isPreview,
      isPublish: isPublish,
    );
  }

  SelfHistoryResponse fromJson(Map<String, Object> json) {
    return SelfHistoryResponse.fromJson(json);
  }
}

/// @nodoc
const $SelfHistoryResponse = _$SelfHistoryResponseTearOff();

/// @nodoc
mixin _$SelfHistoryResponse {
  String get result => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  List<SelfHistory> get selfHistory => throw _privateConstructorUsedError;
  bool get isPreview => throw _privateConstructorUsedError;
  bool get isPublish => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelfHistoryResponseCopyWith<SelfHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelfHistoryResponseCopyWith<$Res> {
  factory $SelfHistoryResponseCopyWith(
          SelfHistoryResponse value, $Res Function(SelfHistoryResponse) then) =
      _$SelfHistoryResponseCopyWithImpl<$Res>;
  $Res call(
      {String result,
      String uid,
      String token,
      List<SelfHistory> selfHistory,
      bool isPreview,
      bool isPublish});
}

/// @nodoc
class _$SelfHistoryResponseCopyWithImpl<$Res>
    implements $SelfHistoryResponseCopyWith<$Res> {
  _$SelfHistoryResponseCopyWithImpl(this._value, this._then);

  final SelfHistoryResponse _value;
  // ignore: unused_field
  final $Res Function(SelfHistoryResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? uid = freezed,
    Object? token = freezed,
    Object? selfHistory = freezed,
    Object? isPreview = freezed,
    Object? isPublish = freezed,
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
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      selfHistory: selfHistory == freezed
          ? _value.selfHistory
          : selfHistory // ignore: cast_nullable_to_non_nullable
              as List<SelfHistory>,
      isPreview: isPreview == freezed
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublish: isPublish == freezed
          ? _value.isPublish
          : isPublish // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SelfHistoryResponseCopyWith<$Res>
    implements $SelfHistoryResponseCopyWith<$Res> {
  factory _$SelfHistoryResponseCopyWith(_SelfHistoryResponse value,
          $Res Function(_SelfHistoryResponse) then) =
      __$SelfHistoryResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String result,
      String uid,
      String token,
      List<SelfHistory> selfHistory,
      bool isPreview,
      bool isPublish});
}

/// @nodoc
class __$SelfHistoryResponseCopyWithImpl<$Res>
    extends _$SelfHistoryResponseCopyWithImpl<$Res>
    implements _$SelfHistoryResponseCopyWith<$Res> {
  __$SelfHistoryResponseCopyWithImpl(
      _SelfHistoryResponse _value, $Res Function(_SelfHistoryResponse) _then)
      : super(_value, (v) => _then(v as _SelfHistoryResponse));

  @override
  _SelfHistoryResponse get _value => super._value as _SelfHistoryResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? uid = freezed,
    Object? token = freezed,
    Object? selfHistory = freezed,
    Object? isPreview = freezed,
    Object? isPublish = freezed,
  }) {
    return _then(_SelfHistoryResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      selfHistory: selfHistory == freezed
          ? _value.selfHistory
          : selfHistory // ignore: cast_nullable_to_non_nullable
              as List<SelfHistory>,
      isPreview: isPreview == freezed
          ? _value.isPreview
          : isPreview // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublish: isPublish == freezed
          ? _value.isPublish
          : isPublish // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SelfHistoryResponse extends _SelfHistoryResponse {
  const _$_SelfHistoryResponse(
      {this.result = '',
      this.uid = '',
      this.token = '',
      this.selfHistory = const <SelfHistory>[],
      this.isPreview = false,
      this.isPublish = false})
      : super._();

  factory _$_SelfHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SelfHistoryResponseFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String result;
  @JsonKey(defaultValue: '')
  @override
  final String uid;
  @JsonKey(defaultValue: '')
  @override
  final String token;
  @JsonKey(defaultValue: const <SelfHistory>[])
  @override
  final List<SelfHistory> selfHistory;
  @JsonKey(defaultValue: false)
  @override
  final bool isPreview;
  @JsonKey(defaultValue: false)
  @override
  final bool isPublish;

  @override
  String toString() {
    return 'SelfHistoryResponse(result: $result, uid: $uid, token: $token, selfHistory: $selfHistory, isPreview: $isPreview, isPublish: $isPublish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelfHistoryResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.selfHistory, selfHistory) ||
                const DeepCollectionEquality()
                    .equals(other.selfHistory, selfHistory)) &&
            (identical(other.isPreview, isPreview) ||
                const DeepCollectionEquality()
                    .equals(other.isPreview, isPreview)) &&
            (identical(other.isPublish, isPublish) ||
                const DeepCollectionEquality()
                    .equals(other.isPublish, isPublish)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(selfHistory) ^
      const DeepCollectionEquality().hash(isPreview) ^
      const DeepCollectionEquality().hash(isPublish);

  @JsonKey(ignore: true)
  @override
  _$SelfHistoryResponseCopyWith<_SelfHistoryResponse> get copyWith =>
      __$SelfHistoryResponseCopyWithImpl<_SelfHistoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SelfHistoryResponseToJson(this);
  }
}

abstract class _SelfHistoryResponse extends SelfHistoryResponse {
  const factory _SelfHistoryResponse(
      {String result,
      String uid,
      String token,
      List<SelfHistory> selfHistory,
      bool isPreview,
      bool isPublish}) = _$_SelfHistoryResponse;
  const _SelfHistoryResponse._() : super._();

  factory _SelfHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$_SelfHistoryResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  List<SelfHistory> get selfHistory => throw _privateConstructorUsedError;
  @override
  bool get isPreview => throw _privateConstructorUsedError;
  @override
  bool get isPublish => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelfHistoryResponseCopyWith<_SelfHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
