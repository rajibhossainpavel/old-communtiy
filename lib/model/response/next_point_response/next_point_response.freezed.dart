// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'next_point_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NextPointResponse _$NextPointResponseFromJson(Map<String, dynamic> json) {
  return _NextPointResponse.fromJson(json);
}

/// @nodoc
class _$NextPointResponseTearOff {
  const _$NextPointResponseTearOff();

  _NextPointResponse call(
      {required String result,
      int selectableJobCount = 0,
      int subscriptionCount = 0,
      required int nextPoint,
      required String nextPointTime,
      required String token}) {
    return _NextPointResponse(
      result: result,
      selectableJobCount: selectableJobCount,
      subscriptionCount: subscriptionCount,
      nextPoint: nextPoint,
      nextPointTime: nextPointTime,
      token: token,
    );
  }

  NextPointResponse fromJson(Map<String, Object> json) {
    return NextPointResponse.fromJson(json);
  }
}

/// @nodoc
const $NextPointResponse = _$NextPointResponseTearOff();

/// @nodoc
mixin _$NextPointResponse {
  String get result => throw _privateConstructorUsedError;
  int get selectableJobCount => throw _privateConstructorUsedError;
  int get subscriptionCount => throw _privateConstructorUsedError;
  int get nextPoint => throw _privateConstructorUsedError;
  String get nextPointTime => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NextPointResponseCopyWith<NextPointResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextPointResponseCopyWith<$Res> {
  factory $NextPointResponseCopyWith(
          NextPointResponse value, $Res Function(NextPointResponse) then) =
      _$NextPointResponseCopyWithImpl<$Res>;
  $Res call(
      {String result,
      int selectableJobCount,
      int subscriptionCount,
      int nextPoint,
      String nextPointTime,
      String token});
}

/// @nodoc
class _$NextPointResponseCopyWithImpl<$Res>
    implements $NextPointResponseCopyWith<$Res> {
  _$NextPointResponseCopyWithImpl(this._value, this._then);

  final NextPointResponse _value;
  // ignore: unused_field
  final $Res Function(NextPointResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? selectableJobCount = freezed,
    Object? subscriptionCount = freezed,
    Object? nextPoint = freezed,
    Object? nextPointTime = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      selectableJobCount: selectableJobCount == freezed
          ? _value.selectableJobCount
          : selectableJobCount // ignore: cast_nullable_to_non_nullable
              as int,
      subscriptionCount: subscriptionCount == freezed
          ? _value.subscriptionCount
          : subscriptionCount // ignore: cast_nullable_to_non_nullable
              as int,
      nextPoint: nextPoint == freezed
          ? _value.nextPoint
          : nextPoint // ignore: cast_nullable_to_non_nullable
              as int,
      nextPointTime: nextPointTime == freezed
          ? _value.nextPointTime
          : nextPointTime // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NextPointResponseCopyWith<$Res>
    implements $NextPointResponseCopyWith<$Res> {
  factory _$NextPointResponseCopyWith(
          _NextPointResponse value, $Res Function(_NextPointResponse) then) =
      __$NextPointResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String result,
      int selectableJobCount,
      int subscriptionCount,
      int nextPoint,
      String nextPointTime,
      String token});
}

/// @nodoc
class __$NextPointResponseCopyWithImpl<$Res>
    extends _$NextPointResponseCopyWithImpl<$Res>
    implements _$NextPointResponseCopyWith<$Res> {
  __$NextPointResponseCopyWithImpl(
      _NextPointResponse _value, $Res Function(_NextPointResponse) _then)
      : super(_value, (v) => _then(v as _NextPointResponse));

  @override
  _NextPointResponse get _value => super._value as _NextPointResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? selectableJobCount = freezed,
    Object? subscriptionCount = freezed,
    Object? nextPoint = freezed,
    Object? nextPointTime = freezed,
    Object? token = freezed,
  }) {
    return _then(_NextPointResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      selectableJobCount: selectableJobCount == freezed
          ? _value.selectableJobCount
          : selectableJobCount // ignore: cast_nullable_to_non_nullable
              as int,
      subscriptionCount: subscriptionCount == freezed
          ? _value.subscriptionCount
          : subscriptionCount // ignore: cast_nullable_to_non_nullable
              as int,
      nextPoint: nextPoint == freezed
          ? _value.nextPoint
          : nextPoint // ignore: cast_nullable_to_non_nullable
              as int,
      nextPointTime: nextPointTime == freezed
          ? _value.nextPointTime
          : nextPointTime // ignore: cast_nullable_to_non_nullable
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
class _$_NextPointResponse extends _NextPointResponse {
  const _$_NextPointResponse(
      {required this.result,
      this.selectableJobCount = 0,
      this.subscriptionCount = 0,
      required this.nextPoint,
      required this.nextPointTime,
      required this.token})
      : super._();

  factory _$_NextPointResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_NextPointResponseFromJson(json);

  @override
  final String result;
  @JsonKey(defaultValue: 0)
  @override
  final int selectableJobCount;
  @JsonKey(defaultValue: 0)
  @override
  final int subscriptionCount;
  @override
  final int nextPoint;
  @override
  final String nextPointTime;
  @override
  final String token;

  @override
  String toString() {
    return 'NextPointResponse(result: $result, selectableJobCount: $selectableJobCount, subscriptionCount: $subscriptionCount, nextPoint: $nextPoint, nextPointTime: $nextPointTime, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NextPointResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.selectableJobCount, selectableJobCount) ||
                const DeepCollectionEquality()
                    .equals(other.selectableJobCount, selectableJobCount)) &&
            (identical(other.subscriptionCount, subscriptionCount) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptionCount, subscriptionCount)) &&
            (identical(other.nextPoint, nextPoint) ||
                const DeepCollectionEquality()
                    .equals(other.nextPoint, nextPoint)) &&
            (identical(other.nextPointTime, nextPointTime) ||
                const DeepCollectionEquality()
                    .equals(other.nextPointTime, nextPointTime)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(selectableJobCount) ^
      const DeepCollectionEquality().hash(subscriptionCount) ^
      const DeepCollectionEquality().hash(nextPoint) ^
      const DeepCollectionEquality().hash(nextPointTime) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$NextPointResponseCopyWith<_NextPointResponse> get copyWith =>
      __$NextPointResponseCopyWithImpl<_NextPointResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NextPointResponseToJson(this);
  }
}

abstract class _NextPointResponse extends NextPointResponse {
  const factory _NextPointResponse(
      {required String result,
      int selectableJobCount,
      int subscriptionCount,
      required int nextPoint,
      required String nextPointTime,
      required String token}) = _$_NextPointResponse;
  const _NextPointResponse._() : super._();

  factory _NextPointResponse.fromJson(Map<String, dynamic> json) =
      _$_NextPointResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  int get selectableJobCount => throw _privateConstructorUsedError;
  @override
  int get subscriptionCount => throw _privateConstructorUsedError;
  @override
  int get nextPoint => throw _privateConstructorUsedError;
  @override
  String get nextPointTime => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NextPointResponseCopyWith<_NextPointResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
