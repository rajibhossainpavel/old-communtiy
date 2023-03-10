// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_create_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupCreateResponse _$GroupCreateResponseFromJson(Map<String, dynamic> json) {
  return _GroupCreateResponse.fromJson(json);
}

/// @nodoc
class _$GroupCreateResponseTearOff {
  const _$GroupCreateResponseTearOff();

  _GroupCreateResponse call(
      {required String result,
      required String groupID,
      required String token}) {
    return _GroupCreateResponse(
      result: result,
      groupID: groupID,
      token: token,
    );
  }

  GroupCreateResponse fromJson(Map<String, Object> json) {
    return GroupCreateResponse.fromJson(json);
  }
}

/// @nodoc
const $GroupCreateResponse = _$GroupCreateResponseTearOff();

/// @nodoc
mixin _$GroupCreateResponse {
  String get result => throw _privateConstructorUsedError;
  String get groupID => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupCreateResponseCopyWith<GroupCreateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCreateResponseCopyWith<$Res> {
  factory $GroupCreateResponseCopyWith(
          GroupCreateResponse value, $Res Function(GroupCreateResponse) then) =
      _$GroupCreateResponseCopyWithImpl<$Res>;
  $Res call({String result, String groupID, String token});
}

/// @nodoc
class _$GroupCreateResponseCopyWithImpl<$Res>
    implements $GroupCreateResponseCopyWith<$Res> {
  _$GroupCreateResponseCopyWithImpl(this._value, this._then);

  final GroupCreateResponse _value;
  // ignore: unused_field
  final $Res Function(GroupCreateResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? groupID = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      groupID: groupID == freezed
          ? _value.groupID
          : groupID // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GroupCreateResponseCopyWith<$Res>
    implements $GroupCreateResponseCopyWith<$Res> {
  factory _$GroupCreateResponseCopyWith(_GroupCreateResponse value,
          $Res Function(_GroupCreateResponse) then) =
      __$GroupCreateResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, String groupID, String token});
}

/// @nodoc
class __$GroupCreateResponseCopyWithImpl<$Res>
    extends _$GroupCreateResponseCopyWithImpl<$Res>
    implements _$GroupCreateResponseCopyWith<$Res> {
  __$GroupCreateResponseCopyWithImpl(
      _GroupCreateResponse _value, $Res Function(_GroupCreateResponse) _then)
      : super(_value, (v) => _then(v as _GroupCreateResponse));

  @override
  _GroupCreateResponse get _value => super._value as _GroupCreateResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? groupID = freezed,
    Object? token = freezed,
  }) {
    return _then(_GroupCreateResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      groupID: groupID == freezed
          ? _value.groupID
          : groupID // ignore: cast_nullable_to_non_nullable
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
class _$_GroupCreateResponse extends _GroupCreateResponse {
  const _$_GroupCreateResponse(
      {required this.result, required this.groupID, required this.token})
      : super._();

  factory _$_GroupCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_GroupCreateResponseFromJson(json);

  @override
  final String result;
  @override
  final String groupID;
  @override
  final String token;

  @override
  String toString() {
    return 'GroupCreateResponse(result: $result, groupID: $groupID, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupCreateResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.groupID, groupID) ||
                const DeepCollectionEquality()
                    .equals(other.groupID, groupID)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(groupID) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$GroupCreateResponseCopyWith<_GroupCreateResponse> get copyWith =>
      __$GroupCreateResponseCopyWithImpl<_GroupCreateResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroupCreateResponseToJson(this);
  }
}

abstract class _GroupCreateResponse extends GroupCreateResponse {
  const factory _GroupCreateResponse(
      {required String result,
      required String groupID,
      required String token}) = _$_GroupCreateResponse;
  const _GroupCreateResponse._() : super._();

  factory _GroupCreateResponse.fromJson(Map<String, dynamic> json) =
      _$_GroupCreateResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  String get groupID => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupCreateResponseCopyWith<_GroupCreateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
