// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'updated_points_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdatedPointsResponse _$UpdatedPointsResponseFromJson(
    Map<String, dynamic> json) {
  return _UpdatedPointsResponse.fromJson(json);
}

/// @nodoc
class _$UpdatedPointsResponseTearOff {
  const _$UpdatedPointsResponseTearOff();

  _UpdatedPointsResponse call({int remaining = 0, int likes = 0}) {
    return _UpdatedPointsResponse(
      remaining: remaining,
      likes: likes,
    );
  }

  UpdatedPointsResponse fromJson(Map<String, Object> json) {
    return UpdatedPointsResponse.fromJson(json);
  }
}

/// @nodoc
const $UpdatedPointsResponse = _$UpdatedPointsResponseTearOff();

/// @nodoc
mixin _$UpdatedPointsResponse {
  int get remaining => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatedPointsResponseCopyWith<UpdatedPointsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatedPointsResponseCopyWith<$Res> {
  factory $UpdatedPointsResponseCopyWith(UpdatedPointsResponse value,
          $Res Function(UpdatedPointsResponse) then) =
      _$UpdatedPointsResponseCopyWithImpl<$Res>;
  $Res call({int remaining, int likes});
}

/// @nodoc
class _$UpdatedPointsResponseCopyWithImpl<$Res>
    implements $UpdatedPointsResponseCopyWith<$Res> {
  _$UpdatedPointsResponseCopyWithImpl(this._value, this._then);

  final UpdatedPointsResponse _value;
  // ignore: unused_field
  final $Res Function(UpdatedPointsResponse) _then;

  @override
  $Res call({
    Object? remaining = freezed,
    Object? likes = freezed,
  }) {
    return _then(_value.copyWith(
      remaining: remaining == freezed
          ? _value.remaining
          : remaining // ignore: cast_nullable_to_non_nullable
              as int,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$UpdatedPointsResponseCopyWith<$Res>
    implements $UpdatedPointsResponseCopyWith<$Res> {
  factory _$UpdatedPointsResponseCopyWith(_UpdatedPointsResponse value,
          $Res Function(_UpdatedPointsResponse) then) =
      __$UpdatedPointsResponseCopyWithImpl<$Res>;
  @override
  $Res call({int remaining, int likes});
}

/// @nodoc
class __$UpdatedPointsResponseCopyWithImpl<$Res>
    extends _$UpdatedPointsResponseCopyWithImpl<$Res>
    implements _$UpdatedPointsResponseCopyWith<$Res> {
  __$UpdatedPointsResponseCopyWithImpl(_UpdatedPointsResponse _value,
      $Res Function(_UpdatedPointsResponse) _then)
      : super(_value, (v) => _then(v as _UpdatedPointsResponse));

  @override
  _UpdatedPointsResponse get _value => super._value as _UpdatedPointsResponse;

  @override
  $Res call({
    Object? remaining = freezed,
    Object? likes = freezed,
  }) {
    return _then(_UpdatedPointsResponse(
      remaining: remaining == freezed
          ? _value.remaining
          : remaining // ignore: cast_nullable_to_non_nullable
              as int,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdatedPointsResponse extends _UpdatedPointsResponse {
  const _$_UpdatedPointsResponse({this.remaining = 0, this.likes = 0})
      : super._();

  factory _$_UpdatedPointsResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdatedPointsResponseFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int remaining;
  @JsonKey(defaultValue: 0)
  @override
  final int likes;

  @override
  String toString() {
    return 'UpdatedPointsResponse(remaining: $remaining, likes: $likes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdatedPointsResponse &&
            (identical(other.remaining, remaining) ||
                const DeepCollectionEquality()
                    .equals(other.remaining, remaining)) &&
            (identical(other.likes, likes) ||
                const DeepCollectionEquality().equals(other.likes, likes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(remaining) ^
      const DeepCollectionEquality().hash(likes);

  @JsonKey(ignore: true)
  @override
  _$UpdatedPointsResponseCopyWith<_UpdatedPointsResponse> get copyWith =>
      __$UpdatedPointsResponseCopyWithImpl<_UpdatedPointsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdatedPointsResponseToJson(this);
  }
}

abstract class _UpdatedPointsResponse extends UpdatedPointsResponse {
  const factory _UpdatedPointsResponse({int remaining, int likes}) =
      _$_UpdatedPointsResponse;
  const _UpdatedPointsResponse._() : super._();

  factory _UpdatedPointsResponse.fromJson(Map<String, dynamic> json) =
      _$_UpdatedPointsResponse.fromJson;

  @override
  int get remaining => throw _privateConstructorUsedError;
  @override
  int get likes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdatedPointsResponseCopyWith<_UpdatedPointsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
