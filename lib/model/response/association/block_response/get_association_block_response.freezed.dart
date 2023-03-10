// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_association_block_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetAssociationBlockResponse _$GetAssociationBlockResponseFromJson(
    Map<String, dynamic> json) {
  return _GetAssociationBlockResponse.fromJson(json);
}

/// @nodoc
class _$GetAssociationBlockResponseTearOff {
  const _$GetAssociationBlockResponseTearOff();

  _GetAssociationBlockResponse call(
      {String result = '',
      String token = '',
      List<Block> blocks = const <Block>[]}) {
    return _GetAssociationBlockResponse(
      result: result,
      token: token,
      blocks: blocks,
    );
  }

  GetAssociationBlockResponse fromJson(Map<String, Object> json) {
    return GetAssociationBlockResponse.fromJson(json);
  }
}

/// @nodoc
const $GetAssociationBlockResponse = _$GetAssociationBlockResponseTearOff();

/// @nodoc
mixin _$GetAssociationBlockResponse {
  String get result => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  List<Block> get blocks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAssociationBlockResponseCopyWith<GetAssociationBlockResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAssociationBlockResponseCopyWith<$Res> {
  factory $GetAssociationBlockResponseCopyWith(
          GetAssociationBlockResponse value,
          $Res Function(GetAssociationBlockResponse) then) =
      _$GetAssociationBlockResponseCopyWithImpl<$Res>;
  $Res call({String result, String token, List<Block> blocks});
}

/// @nodoc
class _$GetAssociationBlockResponseCopyWithImpl<$Res>
    implements $GetAssociationBlockResponseCopyWith<$Res> {
  _$GetAssociationBlockResponseCopyWithImpl(this._value, this._then);

  final GetAssociationBlockResponse _value;
  // ignore: unused_field
  final $Res Function(GetAssociationBlockResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? token = freezed,
    Object? blocks = freezed,
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
      blocks: blocks == freezed
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<Block>,
    ));
  }
}

/// @nodoc
abstract class _$GetAssociationBlockResponseCopyWith<$Res>
    implements $GetAssociationBlockResponseCopyWith<$Res> {
  factory _$GetAssociationBlockResponseCopyWith(
          _GetAssociationBlockResponse value,
          $Res Function(_GetAssociationBlockResponse) then) =
      __$GetAssociationBlockResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, String token, List<Block> blocks});
}

/// @nodoc
class __$GetAssociationBlockResponseCopyWithImpl<$Res>
    extends _$GetAssociationBlockResponseCopyWithImpl<$Res>
    implements _$GetAssociationBlockResponseCopyWith<$Res> {
  __$GetAssociationBlockResponseCopyWithImpl(
      _GetAssociationBlockResponse _value,
      $Res Function(_GetAssociationBlockResponse) _then)
      : super(_value, (v) => _then(v as _GetAssociationBlockResponse));

  @override
  _GetAssociationBlockResponse get _value =>
      super._value as _GetAssociationBlockResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? token = freezed,
    Object? blocks = freezed,
  }) {
    return _then(_GetAssociationBlockResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      blocks: blocks == freezed
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<Block>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetAssociationBlockResponse extends _GetAssociationBlockResponse {
  const _$_GetAssociationBlockResponse(
      {this.result = '', this.token = '', this.blocks = const <Block>[]})
      : super._();

  factory _$_GetAssociationBlockResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_GetAssociationBlockResponseFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String result;
  @JsonKey(defaultValue: '')
  @override
  final String token;
  @JsonKey(defaultValue: const <Block>[])
  @override
  final List<Block> blocks;

  @override
  String toString() {
    return 'GetAssociationBlockResponse(result: $result, token: $token, blocks: $blocks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAssociationBlockResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.blocks, blocks) ||
                const DeepCollectionEquality().equals(other.blocks, blocks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(blocks);

  @JsonKey(ignore: true)
  @override
  _$GetAssociationBlockResponseCopyWith<_GetAssociationBlockResponse>
      get copyWith => __$GetAssociationBlockResponseCopyWithImpl<
          _GetAssociationBlockResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetAssociationBlockResponseToJson(this);
  }
}

abstract class _GetAssociationBlockResponse
    extends GetAssociationBlockResponse {
  const factory _GetAssociationBlockResponse(
      {String result,
      String token,
      List<Block> blocks}) = _$_GetAssociationBlockResponse;
  const _GetAssociationBlockResponse._() : super._();

  factory _GetAssociationBlockResponse.fromJson(Map<String, dynamic> json) =
      _$_GetAssociationBlockResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  List<Block> get blocks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetAssociationBlockResponseCopyWith<_GetAssociationBlockResponse>
      get copyWith => throw _privateConstructorUsedError;
}
