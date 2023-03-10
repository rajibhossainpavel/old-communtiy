// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_association_favorite_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetAssociationFavoriteResponse _$GetAssociationFavoriteResponseFromJson(
    Map<String, dynamic> json) {
  return _GetAssociationFavoriteResponse.fromJson(json);
}

/// @nodoc
class _$GetAssociationFavoriteResponseTearOff {
  const _$GetAssociationFavoriteResponseTearOff();

  _GetAssociationFavoriteResponse call(
      {String result = '',
      String token = '',
      List<Favorite> favorites = const <Favorite>[]}) {
    return _GetAssociationFavoriteResponse(
      result: result,
      token: token,
      favorites: favorites,
    );
  }

  GetAssociationFavoriteResponse fromJson(Map<String, Object> json) {
    return GetAssociationFavoriteResponse.fromJson(json);
  }
}

/// @nodoc
const $GetAssociationFavoriteResponse =
    _$GetAssociationFavoriteResponseTearOff();

/// @nodoc
mixin _$GetAssociationFavoriteResponse {
  String get result => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  List<Favorite> get favorites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAssociationFavoriteResponseCopyWith<GetAssociationFavoriteResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAssociationFavoriteResponseCopyWith<$Res> {
  factory $GetAssociationFavoriteResponseCopyWith(
          GetAssociationFavoriteResponse value,
          $Res Function(GetAssociationFavoriteResponse) then) =
      _$GetAssociationFavoriteResponseCopyWithImpl<$Res>;
  $Res call({String result, String token, List<Favorite> favorites});
}

/// @nodoc
class _$GetAssociationFavoriteResponseCopyWithImpl<$Res>
    implements $GetAssociationFavoriteResponseCopyWith<$Res> {
  _$GetAssociationFavoriteResponseCopyWithImpl(this._value, this._then);

  final GetAssociationFavoriteResponse _value;
  // ignore: unused_field
  final $Res Function(GetAssociationFavoriteResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? token = freezed,
    Object? favorites = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Favorite>,
    ));
  }
}

/// @nodoc
abstract class _$GetAssociationFavoriteResponseCopyWith<$Res>
    implements $GetAssociationFavoriteResponseCopyWith<$Res> {
  factory _$GetAssociationFavoriteResponseCopyWith(
          _GetAssociationFavoriteResponse value,
          $Res Function(_GetAssociationFavoriteResponse) then) =
      __$GetAssociationFavoriteResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, String token, List<Favorite> favorites});
}

/// @nodoc
class __$GetAssociationFavoriteResponseCopyWithImpl<$Res>
    extends _$GetAssociationFavoriteResponseCopyWithImpl<$Res>
    implements _$GetAssociationFavoriteResponseCopyWith<$Res> {
  __$GetAssociationFavoriteResponseCopyWithImpl(
      _GetAssociationFavoriteResponse _value,
      $Res Function(_GetAssociationFavoriteResponse) _then)
      : super(_value, (v) => _then(v as _GetAssociationFavoriteResponse));

  @override
  _GetAssociationFavoriteResponse get _value =>
      super._value as _GetAssociationFavoriteResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? token = freezed,
    Object? favorites = freezed,
  }) {
    return _then(_GetAssociationFavoriteResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Favorite>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetAssociationFavoriteResponse
    extends _GetAssociationFavoriteResponse {
  const _$_GetAssociationFavoriteResponse(
      {this.result = '', this.token = '', this.favorites = const <Favorite>[]})
      : super._();

  factory _$_GetAssociationFavoriteResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_GetAssociationFavoriteResponseFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String result;
  @JsonKey(defaultValue: '')
  @override
  final String token;
  @JsonKey(defaultValue: const <Favorite>[])
  @override
  final List<Favorite> favorites;

  @override
  String toString() {
    return 'GetAssociationFavoriteResponse(result: $result, token: $token, favorites: $favorites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAssociationFavoriteResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.favorites, favorites) ||
                const DeepCollectionEquality()
                    .equals(other.favorites, favorites)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(favorites);

  @JsonKey(ignore: true)
  @override
  _$GetAssociationFavoriteResponseCopyWith<_GetAssociationFavoriteResponse>
      get copyWith => __$GetAssociationFavoriteResponseCopyWithImpl<
          _GetAssociationFavoriteResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetAssociationFavoriteResponseToJson(this);
  }
}

abstract class _GetAssociationFavoriteResponse
    extends GetAssociationFavoriteResponse {
  const factory _GetAssociationFavoriteResponse(
      {String result,
      String token,
      List<Favorite> favorites}) = _$_GetAssociationFavoriteResponse;
  const _GetAssociationFavoriteResponse._() : super._();

  factory _GetAssociationFavoriteResponse.fromJson(Map<String, dynamic> json) =
      _$_GetAssociationFavoriteResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  List<Favorite> get favorites => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetAssociationFavoriteResponseCopyWith<_GetAssociationFavoriteResponse>
      get copyWith => throw _privateConstructorUsedError;
}
