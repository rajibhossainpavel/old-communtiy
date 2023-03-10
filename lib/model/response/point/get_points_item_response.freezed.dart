// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_points_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPointsItemResponse _$GetPointsItemResponseFromJson(
    Map<String, dynamic> json) {
  return _GetPointsItemResponse.fromJson(json);
}

/// @nodoc
class _$GetPointsItemResponseTearOff {
  const _$GetPointsItemResponseTearOff();

  _GetPointsItemResponse call(
      {required String result,
      List<PointItem> products = const <PointItem>[],
      required String token}) {
    return _GetPointsItemResponse(
      result: result,
      products: products,
      token: token,
    );
  }

  GetPointsItemResponse fromJson(Map<String, Object> json) {
    return GetPointsItemResponse.fromJson(json);
  }
}

/// @nodoc
const $GetPointsItemResponse = _$GetPointsItemResponseTearOff();

/// @nodoc
mixin _$GetPointsItemResponse {
  String get result => throw _privateConstructorUsedError;
  List<PointItem> get products => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPointsItemResponseCopyWith<GetPointsItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPointsItemResponseCopyWith<$Res> {
  factory $GetPointsItemResponseCopyWith(GetPointsItemResponse value,
          $Res Function(GetPointsItemResponse) then) =
      _$GetPointsItemResponseCopyWithImpl<$Res>;
  $Res call({String result, List<PointItem> products, String token});
}

/// @nodoc
class _$GetPointsItemResponseCopyWithImpl<$Res>
    implements $GetPointsItemResponseCopyWith<$Res> {
  _$GetPointsItemResponseCopyWithImpl(this._value, this._then);

  final GetPointsItemResponse _value;
  // ignore: unused_field
  final $Res Function(GetPointsItemResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? products = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<PointItem>,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetPointsItemResponseCopyWith<$Res>
    implements $GetPointsItemResponseCopyWith<$Res> {
  factory _$GetPointsItemResponseCopyWith(_GetPointsItemResponse value,
          $Res Function(_GetPointsItemResponse) then) =
      __$GetPointsItemResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, List<PointItem> products, String token});
}

/// @nodoc
class __$GetPointsItemResponseCopyWithImpl<$Res>
    extends _$GetPointsItemResponseCopyWithImpl<$Res>
    implements _$GetPointsItemResponseCopyWith<$Res> {
  __$GetPointsItemResponseCopyWithImpl(_GetPointsItemResponse _value,
      $Res Function(_GetPointsItemResponse) _then)
      : super(_value, (v) => _then(v as _GetPointsItemResponse));

  @override
  _GetPointsItemResponse get _value => super._value as _GetPointsItemResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? products = freezed,
    Object? token = freezed,
  }) {
    return _then(_GetPointsItemResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<PointItem>,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPointsItemResponse extends _GetPointsItemResponse {
  const _$_GetPointsItemResponse(
      {required this.result,
      this.products = const <PointItem>[],
      required this.token})
      : super._();

  factory _$_GetPointsItemResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_GetPointsItemResponseFromJson(json);

  @override
  final String result;
  @JsonKey(defaultValue: const <PointItem>[])
  @override
  final List<PointItem> products;
  @override
  final String token;

  @override
  String toString() {
    return 'GetPointsItemResponse(result: $result, products: $products, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPointsItemResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(products) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$GetPointsItemResponseCopyWith<_GetPointsItemResponse> get copyWith =>
      __$GetPointsItemResponseCopyWithImpl<_GetPointsItemResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetPointsItemResponseToJson(this);
  }
}

abstract class _GetPointsItemResponse extends GetPointsItemResponse {
  const factory _GetPointsItemResponse(
      {required String result,
      List<PointItem> products,
      required String token}) = _$_GetPointsItemResponse;
  const _GetPointsItemResponse._() : super._();

  factory _GetPointsItemResponse.fromJson(Map<String, dynamic> json) =
      _$_GetPointsItemResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  List<PointItem> get products => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetPointsItemResponseCopyWith<_GetPointsItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
