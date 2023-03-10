// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'point_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PointItem _$PointItemFromJson(Map<String, dynamic> json) {
  return _PointItem.fromJson(json);
}

/// @nodoc
class _$PointItemTearOff {
  const _$PointItemTearOff();

  _PointItem call(
      {required String productID,
      required String productName,
      required String productType,
      required int point}) {
    return _PointItem(
      productID: productID,
      productName: productName,
      productType: productType,
      point: point,
    );
  }

  PointItem fromJson(Map<String, Object> json) {
    return PointItem.fromJson(json);
  }
}

/// @nodoc
const $PointItem = _$PointItemTearOff();

/// @nodoc
mixin _$PointItem {
  String get productID => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get productType => throw _privateConstructorUsedError;
  int get point => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointItemCopyWith<PointItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointItemCopyWith<$Res> {
  factory $PointItemCopyWith(PointItem value, $Res Function(PointItem) then) =
      _$PointItemCopyWithImpl<$Res>;
  $Res call(
      {String productID, String productName, String productType, int point});
}

/// @nodoc
class _$PointItemCopyWithImpl<$Res> implements $PointItemCopyWith<$Res> {
  _$PointItemCopyWithImpl(this._value, this._then);

  final PointItem _value;
  // ignore: unused_field
  final $Res Function(PointItem) _then;

  @override
  $Res call({
    Object? productID = freezed,
    Object? productName = freezed,
    Object? productType = freezed,
    Object? point = freezed,
  }) {
    return _then(_value.copyWith(
      productID: productID == freezed
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as String,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productType: productType == freezed
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PointItemCopyWith<$Res> implements $PointItemCopyWith<$Res> {
  factory _$PointItemCopyWith(
          _PointItem value, $Res Function(_PointItem) then) =
      __$PointItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String productID, String productName, String productType, int point});
}

/// @nodoc
class __$PointItemCopyWithImpl<$Res> extends _$PointItemCopyWithImpl<$Res>
    implements _$PointItemCopyWith<$Res> {
  __$PointItemCopyWithImpl(_PointItem _value, $Res Function(_PointItem) _then)
      : super(_value, (v) => _then(v as _PointItem));

  @override
  _PointItem get _value => super._value as _PointItem;

  @override
  $Res call({
    Object? productID = freezed,
    Object? productName = freezed,
    Object? productType = freezed,
    Object? point = freezed,
  }) {
    return _then(_PointItem(
      productID: productID == freezed
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as String,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productType: productType == freezed
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointItem extends _PointItem {
  const _$_PointItem(
      {required this.productID,
      required this.productName,
      required this.productType,
      required this.point})
      : super._();

  factory _$_PointItem.fromJson(Map<String, dynamic> json) =>
      _$_$_PointItemFromJson(json);

  @override
  final String productID;
  @override
  final String productName;
  @override
  final String productType;
  @override
  final int point;

  @override
  String toString() {
    return 'PointItem(productID: $productID, productName: $productName, productType: $productType, point: $point)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PointItem &&
            (identical(other.productID, productID) ||
                const DeepCollectionEquality()
                    .equals(other.productID, productID)) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality()
                    .equals(other.productName, productName)) &&
            (identical(other.productType, productType) ||
                const DeepCollectionEquality()
                    .equals(other.productType, productType)) &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productID) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(productType) ^
      const DeepCollectionEquality().hash(point);

  @JsonKey(ignore: true)
  @override
  _$PointItemCopyWith<_PointItem> get copyWith =>
      __$PointItemCopyWithImpl<_PointItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PointItemToJson(this);
  }
}

abstract class _PointItem extends PointItem {
  const factory _PointItem(
      {required String productID,
      required String productName,
      required String productType,
      required int point}) = _$_PointItem;
  const _PointItem._() : super._();

  factory _PointItem.fromJson(Map<String, dynamic> json) =
      _$_PointItem.fromJson;

  @override
  String get productID => throw _privateConstructorUsedError;
  @override
  String get productName => throw _privateConstructorUsedError;
  @override
  String get productType => throw _privateConstructorUsedError;
  @override
  int get point => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PointItemCopyWith<_PointItem> get copyWith =>
      throw _privateConstructorUsedError;
}
