// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'groups_find_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupsFindResponse _$GroupsFindResponseFromJson(Map<String, dynamic> json) {
  return _GroupsFindResponse.fromJson(json);
}

/// @nodoc
class _$GroupsFindResponseTearOff {
  const _$GroupsFindResponseTearOff();

  _GroupsFindResponse call(
      {required String result,
      List<Group> groups = const <Group>[],
      required String token}) {
    return _GroupsFindResponse(
      result: result,
      groups: groups,
      token: token,
    );
  }

  GroupsFindResponse fromJson(Map<String, Object> json) {
    return GroupsFindResponse.fromJson(json);
  }
}

/// @nodoc
const $GroupsFindResponse = _$GroupsFindResponseTearOff();

/// @nodoc
mixin _$GroupsFindResponse {
  String get result => throw _privateConstructorUsedError;
  List<Group> get groups => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupsFindResponseCopyWith<GroupsFindResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsFindResponseCopyWith<$Res> {
  factory $GroupsFindResponseCopyWith(
          GroupsFindResponse value, $Res Function(GroupsFindResponse) then) =
      _$GroupsFindResponseCopyWithImpl<$Res>;
  $Res call({String result, List<Group> groups, String token});
}

/// @nodoc
class _$GroupsFindResponseCopyWithImpl<$Res>
    implements $GroupsFindResponseCopyWith<$Res> {
  _$GroupsFindResponseCopyWithImpl(this._value, this._then);

  final GroupsFindResponse _value;
  // ignore: unused_field
  final $Res Function(GroupsFindResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? groups = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GroupsFindResponseCopyWith<$Res>
    implements $GroupsFindResponseCopyWith<$Res> {
  factory _$GroupsFindResponseCopyWith(
          _GroupsFindResponse value, $Res Function(_GroupsFindResponse) then) =
      __$GroupsFindResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, List<Group> groups, String token});
}

/// @nodoc
class __$GroupsFindResponseCopyWithImpl<$Res>
    extends _$GroupsFindResponseCopyWithImpl<$Res>
    implements _$GroupsFindResponseCopyWith<$Res> {
  __$GroupsFindResponseCopyWithImpl(
      _GroupsFindResponse _value, $Res Function(_GroupsFindResponse) _then)
      : super(_value, (v) => _then(v as _GroupsFindResponse));

  @override
  _GroupsFindResponse get _value => super._value as _GroupsFindResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? groups = freezed,
    Object? token = freezed,
  }) {
    return _then(_GroupsFindResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupsFindResponse extends _GroupsFindResponse {
  const _$_GroupsFindResponse(
      {required this.result,
      this.groups = const <Group>[],
      required this.token})
      : super._();

  factory _$_GroupsFindResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_GroupsFindResponseFromJson(json);

  @override
  final String result;
  @JsonKey(defaultValue: const <Group>[])
  @override
  final List<Group> groups;
  @override
  final String token;

  @override
  String toString() {
    return 'GroupsFindResponse(result: $result, groups: $groups, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupsFindResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$GroupsFindResponseCopyWith<_GroupsFindResponse> get copyWith =>
      __$GroupsFindResponseCopyWithImpl<_GroupsFindResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroupsFindResponseToJson(this);
  }
}

abstract class _GroupsFindResponse extends GroupsFindResponse {
  const factory _GroupsFindResponse(
      {required String result,
      List<Group> groups,
      required String token}) = _$_GroupsFindResponse;
  const _GroupsFindResponse._() : super._();

  factory _GroupsFindResponse.fromJson(Map<String, dynamic> json) =
      _$_GroupsFindResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  List<Group> get groups => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupsFindResponseCopyWith<_GroupsFindResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
