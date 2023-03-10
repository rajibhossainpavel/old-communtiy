// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'like_to_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssociationLikeToUserResponse _$AssociationLikeToUserResponseFromJson(
    Map<String, dynamic> json) {
  return _AssociationLikeToUserResponse.fromJson(json);
}

/// @nodoc
class _$AssociationLikeToUserResponseTearOff {
  const _$AssociationLikeToUserResponseTearOff();

  _AssociationLikeToUserResponse call(
      {String result = '',
      bool isMatching = false,
      String token = '',
      int likes = 0}) {
    return _AssociationLikeToUserResponse(
      result: result,
      isMatching: isMatching,
      token: token,
      likes: likes,
    );
  }

  AssociationLikeToUserResponse fromJson(Map<String, Object> json) {
    return AssociationLikeToUserResponse.fromJson(json);
  }
}

/// @nodoc
const $AssociationLikeToUserResponse = _$AssociationLikeToUserResponseTearOff();

/// @nodoc
mixin _$AssociationLikeToUserResponse {
  String get result => throw _privateConstructorUsedError;
  bool get isMatching => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssociationLikeToUserResponseCopyWith<AssociationLikeToUserResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssociationLikeToUserResponseCopyWith<$Res> {
  factory $AssociationLikeToUserResponseCopyWith(
          AssociationLikeToUserResponse value,
          $Res Function(AssociationLikeToUserResponse) then) =
      _$AssociationLikeToUserResponseCopyWithImpl<$Res>;
  $Res call({String result, bool isMatching, String token, int likes});
}

/// @nodoc
class _$AssociationLikeToUserResponseCopyWithImpl<$Res>
    implements $AssociationLikeToUserResponseCopyWith<$Res> {
  _$AssociationLikeToUserResponseCopyWithImpl(this._value, this._then);

  final AssociationLikeToUserResponse _value;
  // ignore: unused_field
  final $Res Function(AssociationLikeToUserResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? isMatching = freezed,
    Object? token = freezed,
    Object? likes = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      isMatching: isMatching == freezed
          ? _value.isMatching
          : isMatching // ignore: cast_nullable_to_non_nullable
              as bool,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AssociationLikeToUserResponseCopyWith<$Res>
    implements $AssociationLikeToUserResponseCopyWith<$Res> {
  factory _$AssociationLikeToUserResponseCopyWith(
          _AssociationLikeToUserResponse value,
          $Res Function(_AssociationLikeToUserResponse) then) =
      __$AssociationLikeToUserResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, bool isMatching, String token, int likes});
}

/// @nodoc
class __$AssociationLikeToUserResponseCopyWithImpl<$Res>
    extends _$AssociationLikeToUserResponseCopyWithImpl<$Res>
    implements _$AssociationLikeToUserResponseCopyWith<$Res> {
  __$AssociationLikeToUserResponseCopyWithImpl(
      _AssociationLikeToUserResponse _value,
      $Res Function(_AssociationLikeToUserResponse) _then)
      : super(_value, (v) => _then(v as _AssociationLikeToUserResponse));

  @override
  _AssociationLikeToUserResponse get _value =>
      super._value as _AssociationLikeToUserResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? isMatching = freezed,
    Object? token = freezed,
    Object? likes = freezed,
  }) {
    return _then(_AssociationLikeToUserResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      isMatching: isMatching == freezed
          ? _value.isMatching
          : isMatching // ignore: cast_nullable_to_non_nullable
              as bool,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssociationLikeToUserResponse extends _AssociationLikeToUserResponse {
  const _$_AssociationLikeToUserResponse(
      {this.result = '',
      this.isMatching = false,
      this.token = '',
      this.likes = 0})
      : super._();

  factory _$_AssociationLikeToUserResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_AssociationLikeToUserResponseFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String result;
  @JsonKey(defaultValue: false)
  @override
  final bool isMatching;
  @JsonKey(defaultValue: '')
  @override
  final String token;
  @JsonKey(defaultValue: 0)
  @override
  final int likes;

  @override
  String toString() {
    return 'AssociationLikeToUserResponse(result: $result, isMatching: $isMatching, token: $token, likes: $likes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AssociationLikeToUserResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.isMatching, isMatching) ||
                const DeepCollectionEquality()
                    .equals(other.isMatching, isMatching)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.likes, likes) ||
                const DeepCollectionEquality().equals(other.likes, likes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(isMatching) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(likes);

  @JsonKey(ignore: true)
  @override
  _$AssociationLikeToUserResponseCopyWith<_AssociationLikeToUserResponse>
      get copyWith => __$AssociationLikeToUserResponseCopyWithImpl<
          _AssociationLikeToUserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AssociationLikeToUserResponseToJson(this);
  }
}

abstract class _AssociationLikeToUserResponse
    extends AssociationLikeToUserResponse {
  const factory _AssociationLikeToUserResponse(
      {String result,
      bool isMatching,
      String token,
      int likes}) = _$_AssociationLikeToUserResponse;
  const _AssociationLikeToUserResponse._() : super._();

  factory _AssociationLikeToUserResponse.fromJson(Map<String, dynamic> json) =
      _$_AssociationLikeToUserResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  bool get isMatching => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  int get likes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AssociationLikeToUserResponseCopyWith<_AssociationLikeToUserResponse>
      get copyWith => throw _privateConstructorUsedError;
}
