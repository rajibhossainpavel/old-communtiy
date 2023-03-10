// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'communications_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommunicationsResponse _$CommunicationsResponseFromJson(
    Map<String, dynamic> json) {
  return _CommunicationsResponse.fromJson(json);
}

/// @nodoc
class _$CommunicationsResponseTearOff {
  const _$CommunicationsResponseTearOff();

  _CommunicationsResponse call(
      {required String result,
      required List<String> toLikedUUIDs,
      required List<String> matchedUUIDs,
      required List<String> blockUUIDs,
      required List<String> fromLikedUUIDs}) {
    return _CommunicationsResponse(
      result: result,
      toLikedUUIDs: toLikedUUIDs,
      matchedUUIDs: matchedUUIDs,
      blockUUIDs: blockUUIDs,
      fromLikedUUIDs: fromLikedUUIDs,
    );
  }

  CommunicationsResponse fromJson(Map<String, Object> json) {
    return CommunicationsResponse.fromJson(json);
  }
}

/// @nodoc
const $CommunicationsResponse = _$CommunicationsResponseTearOff();

/// @nodoc
mixin _$CommunicationsResponse {
  String get result => throw _privateConstructorUsedError;
  List<String> get toLikedUUIDs => throw _privateConstructorUsedError;
  List<String> get matchedUUIDs => throw _privateConstructorUsedError;
  List<String> get blockUUIDs => throw _privateConstructorUsedError;
  List<String> get fromLikedUUIDs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunicationsResponseCopyWith<CommunicationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunicationsResponseCopyWith<$Res> {
  factory $CommunicationsResponseCopyWith(CommunicationsResponse value,
          $Res Function(CommunicationsResponse) then) =
      _$CommunicationsResponseCopyWithImpl<$Res>;
  $Res call(
      {String result,
      List<String> toLikedUUIDs,
      List<String> matchedUUIDs,
      List<String> blockUUIDs,
      List<String> fromLikedUUIDs});
}

/// @nodoc
class _$CommunicationsResponseCopyWithImpl<$Res>
    implements $CommunicationsResponseCopyWith<$Res> {
  _$CommunicationsResponseCopyWithImpl(this._value, this._then);

  final CommunicationsResponse _value;
  // ignore: unused_field
  final $Res Function(CommunicationsResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? toLikedUUIDs = freezed,
    Object? matchedUUIDs = freezed,
    Object? blockUUIDs = freezed,
    Object? fromLikedUUIDs = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      toLikedUUIDs: toLikedUUIDs == freezed
          ? _value.toLikedUUIDs
          : toLikedUUIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      matchedUUIDs: matchedUUIDs == freezed
          ? _value.matchedUUIDs
          : matchedUUIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockUUIDs: blockUUIDs == freezed
          ? _value.blockUUIDs
          : blockUUIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fromLikedUUIDs: fromLikedUUIDs == freezed
          ? _value.fromLikedUUIDs
          : fromLikedUUIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$CommunicationsResponseCopyWith<$Res>
    implements $CommunicationsResponseCopyWith<$Res> {
  factory _$CommunicationsResponseCopyWith(_CommunicationsResponse value,
          $Res Function(_CommunicationsResponse) then) =
      __$CommunicationsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String result,
      List<String> toLikedUUIDs,
      List<String> matchedUUIDs,
      List<String> blockUUIDs,
      List<String> fromLikedUUIDs});
}

/// @nodoc
class __$CommunicationsResponseCopyWithImpl<$Res>
    extends _$CommunicationsResponseCopyWithImpl<$Res>
    implements _$CommunicationsResponseCopyWith<$Res> {
  __$CommunicationsResponseCopyWithImpl(_CommunicationsResponse _value,
      $Res Function(_CommunicationsResponse) _then)
      : super(_value, (v) => _then(v as _CommunicationsResponse));

  @override
  _CommunicationsResponse get _value => super._value as _CommunicationsResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? toLikedUUIDs = freezed,
    Object? matchedUUIDs = freezed,
    Object? blockUUIDs = freezed,
    Object? fromLikedUUIDs = freezed,
  }) {
    return _then(_CommunicationsResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      toLikedUUIDs: toLikedUUIDs == freezed
          ? _value.toLikedUUIDs
          : toLikedUUIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      matchedUUIDs: matchedUUIDs == freezed
          ? _value.matchedUUIDs
          : matchedUUIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blockUUIDs: blockUUIDs == freezed
          ? _value.blockUUIDs
          : blockUUIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fromLikedUUIDs: fromLikedUUIDs == freezed
          ? _value.fromLikedUUIDs
          : fromLikedUUIDs // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommunicationsResponse extends _CommunicationsResponse {
  const _$_CommunicationsResponse(
      {required this.result,
      required this.toLikedUUIDs,
      required this.matchedUUIDs,
      required this.blockUUIDs,
      required this.fromLikedUUIDs})
      : super._();

  factory _$_CommunicationsResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CommunicationsResponseFromJson(json);

  @override
  final String result;
  @override
  final List<String> toLikedUUIDs;
  @override
  final List<String> matchedUUIDs;
  @override
  final List<String> blockUUIDs;
  @override
  final List<String> fromLikedUUIDs;

  @override
  String toString() {
    return 'CommunicationsResponse(result: $result, toLikedUUIDs: $toLikedUUIDs, matchedUUIDs: $matchedUUIDs, blockUUIDs: $blockUUIDs, fromLikedUUIDs: $fromLikedUUIDs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommunicationsResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.toLikedUUIDs, toLikedUUIDs) ||
                const DeepCollectionEquality()
                    .equals(other.toLikedUUIDs, toLikedUUIDs)) &&
            (identical(other.matchedUUIDs, matchedUUIDs) ||
                const DeepCollectionEquality()
                    .equals(other.matchedUUIDs, matchedUUIDs)) &&
            (identical(other.blockUUIDs, blockUUIDs) ||
                const DeepCollectionEquality()
                    .equals(other.blockUUIDs, blockUUIDs)) &&
            (identical(other.fromLikedUUIDs, fromLikedUUIDs) ||
                const DeepCollectionEquality()
                    .equals(other.fromLikedUUIDs, fromLikedUUIDs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(toLikedUUIDs) ^
      const DeepCollectionEquality().hash(matchedUUIDs) ^
      const DeepCollectionEquality().hash(blockUUIDs) ^
      const DeepCollectionEquality().hash(fromLikedUUIDs);

  @JsonKey(ignore: true)
  @override
  _$CommunicationsResponseCopyWith<_CommunicationsResponse> get copyWith =>
      __$CommunicationsResponseCopyWithImpl<_CommunicationsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommunicationsResponseToJson(this);
  }
}

abstract class _CommunicationsResponse extends CommunicationsResponse {
  const factory _CommunicationsResponse(
      {required String result,
      required List<String> toLikedUUIDs,
      required List<String> matchedUUIDs,
      required List<String> blockUUIDs,
      required List<String> fromLikedUUIDs}) = _$_CommunicationsResponse;
  const _CommunicationsResponse._() : super._();

  factory _CommunicationsResponse.fromJson(Map<String, dynamic> json) =
      _$_CommunicationsResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  List<String> get toLikedUUIDs => throw _privateConstructorUsedError;
  @override
  List<String> get matchedUUIDs => throw _privateConstructorUsedError;
  @override
  List<String> get blockUUIDs => throw _privateConstructorUsedError;
  @override
  List<String> get fromLikedUUIDs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommunicationsResponseCopyWith<_CommunicationsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
