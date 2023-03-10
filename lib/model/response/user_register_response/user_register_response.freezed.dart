// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_register_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRegisterResponse _$UserRegisterResponseFromJson(Map<String, dynamic> json) {
  return _UserRegisterResponse.fromJson(json);
}

/// @nodoc
class _$UserRegisterResponseTearOff {
  const _$UserRegisterResponseTearOff();

  _UserRegisterResponse call(
      {required String result,
      Supporter? supporter,
      required String token,
      required int points,
      required bool hasVerified,
      required bool eliminated}) {
    return _UserRegisterResponse(
      result: result,
      supporter: supporter,
      token: token,
      points: points,
      hasVerified: hasVerified,
      eliminated: eliminated,
    );
  }

  UserRegisterResponse fromJson(Map<String, Object> json) {
    return UserRegisterResponse.fromJson(json);
  }
}

/// @nodoc
const $UserRegisterResponse = _$UserRegisterResponseTearOff();

/// @nodoc
mixin _$UserRegisterResponse {
  String get result => throw _privateConstructorUsedError;
  Supporter? get supporter => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  bool get hasVerified => throw _privateConstructorUsedError;
  bool get eliminated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegisterResponseCopyWith<UserRegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterResponseCopyWith<$Res> {
  factory $UserRegisterResponseCopyWith(UserRegisterResponse value,
          $Res Function(UserRegisterResponse) then) =
      _$UserRegisterResponseCopyWithImpl<$Res>;
  $Res call(
      {String result,
      Supporter? supporter,
      String token,
      int points,
      bool hasVerified,
      bool eliminated});

  $SupporterCopyWith<$Res>? get supporter;
}

/// @nodoc
class _$UserRegisterResponseCopyWithImpl<$Res>
    implements $UserRegisterResponseCopyWith<$Res> {
  _$UserRegisterResponseCopyWithImpl(this._value, this._then);

  final UserRegisterResponse _value;
  // ignore: unused_field
  final $Res Function(UserRegisterResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? supporter = freezed,
    Object? token = freezed,
    Object? points = freezed,
    Object? hasVerified = freezed,
    Object? eliminated = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      supporter: supporter == freezed
          ? _value.supporter
          : supporter // ignore: cast_nullable_to_non_nullable
              as Supporter?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      hasVerified: hasVerified == freezed
          ? _value.hasVerified
          : hasVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      eliminated: eliminated == freezed
          ? _value.eliminated
          : eliminated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $SupporterCopyWith<$Res>? get supporter {
    if (_value.supporter == null) {
      return null;
    }

    return $SupporterCopyWith<$Res>(_value.supporter!, (value) {
      return _then(_value.copyWith(supporter: value));
    });
  }
}

/// @nodoc
abstract class _$UserRegisterResponseCopyWith<$Res>
    implements $UserRegisterResponseCopyWith<$Res> {
  factory _$UserRegisterResponseCopyWith(_UserRegisterResponse value,
          $Res Function(_UserRegisterResponse) then) =
      __$UserRegisterResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String result,
      Supporter? supporter,
      String token,
      int points,
      bool hasVerified,
      bool eliminated});

  @override
  $SupporterCopyWith<$Res>? get supporter;
}

/// @nodoc
class __$UserRegisterResponseCopyWithImpl<$Res>
    extends _$UserRegisterResponseCopyWithImpl<$Res>
    implements _$UserRegisterResponseCopyWith<$Res> {
  __$UserRegisterResponseCopyWithImpl(
      _UserRegisterResponse _value, $Res Function(_UserRegisterResponse) _then)
      : super(_value, (v) => _then(v as _UserRegisterResponse));

  @override
  _UserRegisterResponse get _value => super._value as _UserRegisterResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? supporter = freezed,
    Object? token = freezed,
    Object? points = freezed,
    Object? hasVerified = freezed,
    Object? eliminated = freezed,
  }) {
    return _then(_UserRegisterResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      supporter: supporter == freezed
          ? _value.supporter
          : supporter // ignore: cast_nullable_to_non_nullable
              as Supporter?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      hasVerified: hasVerified == freezed
          ? _value.hasVerified
          : hasVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      eliminated: eliminated == freezed
          ? _value.eliminated
          : eliminated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRegisterResponse extends _UserRegisterResponse {
  const _$_UserRegisterResponse(
      {required this.result,
      this.supporter,
      required this.token,
      required this.points,
      required this.hasVerified,
      required this.eliminated})
      : super._();

  factory _$_UserRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UserRegisterResponseFromJson(json);

  @override
  final String result;
  @override
  final Supporter? supporter;
  @override
  final String token;
  @override
  final int points;
  @override
  final bool hasVerified;
  @override
  final bool eliminated;

  @override
  String toString() {
    return 'UserRegisterResponse(result: $result, supporter: $supporter, token: $token, points: $points, hasVerified: $hasVerified, eliminated: $eliminated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserRegisterResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.supporter, supporter) ||
                const DeepCollectionEquality()
                    .equals(other.supporter, supporter)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)) &&
            (identical(other.hasVerified, hasVerified) ||
                const DeepCollectionEquality()
                    .equals(other.hasVerified, hasVerified)) &&
            (identical(other.eliminated, eliminated) ||
                const DeepCollectionEquality()
                    .equals(other.eliminated, eliminated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(supporter) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(hasVerified) ^
      const DeepCollectionEquality().hash(eliminated);

  @JsonKey(ignore: true)
  @override
  _$UserRegisterResponseCopyWith<_UserRegisterResponse> get copyWith =>
      __$UserRegisterResponseCopyWithImpl<_UserRegisterResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserRegisterResponseToJson(this);
  }
}

abstract class _UserRegisterResponse extends UserRegisterResponse {
  const factory _UserRegisterResponse(
      {required String result,
      Supporter? supporter,
      required String token,
      required int points,
      required bool hasVerified,
      required bool eliminated}) = _$_UserRegisterResponse;
  const _UserRegisterResponse._() : super._();

  factory _UserRegisterResponse.fromJson(Map<String, dynamic> json) =
      _$_UserRegisterResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  Supporter? get supporter => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  int get points => throw _privateConstructorUsedError;
  @override
  bool get hasVerified => throw _privateConstructorUsedError;
  @override
  bool get eliminated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserRegisterResponseCopyWith<_UserRegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
