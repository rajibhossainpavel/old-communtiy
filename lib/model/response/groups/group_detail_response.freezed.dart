// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupDetailResponse _$GroupDetailResponseFromJson(Map<String, dynamic> json) {
  return _GroupDetailResponse.fromJson(json);
}

/// @nodoc
class _$GroupDetailResponseTearOff {
  const _$GroupDetailResponseTearOff();

  _GroupDetailResponse call(
      {required String result,
      required String token,
      GroupDetail? group,
      bool blocked = false}) {
    return _GroupDetailResponse(
      result: result,
      token: token,
      group: group,
      blocked: blocked,
    );
  }

  GroupDetailResponse fromJson(Map<String, Object> json) {
    return GroupDetailResponse.fromJson(json);
  }
}

/// @nodoc
const $GroupDetailResponse = _$GroupDetailResponseTearOff();

/// @nodoc
mixin _$GroupDetailResponse {
  String get result => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  GroupDetail? get group => throw _privateConstructorUsedError;
  bool get blocked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupDetailResponseCopyWith<GroupDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupDetailResponseCopyWith<$Res> {
  factory $GroupDetailResponseCopyWith(
          GroupDetailResponse value, $Res Function(GroupDetailResponse) then) =
      _$GroupDetailResponseCopyWithImpl<$Res>;
  $Res call({String result, String token, GroupDetail? group, bool blocked});

  $GroupDetailCopyWith<$Res>? get group;
}

/// @nodoc
class _$GroupDetailResponseCopyWithImpl<$Res>
    implements $GroupDetailResponseCopyWith<$Res> {
  _$GroupDetailResponseCopyWithImpl(this._value, this._then);

  final GroupDetailResponse _value;
  // ignore: unused_field
  final $Res Function(GroupDetailResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? token = freezed,
    Object? group = freezed,
    Object? blocked = freezed,
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
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupDetail?,
      blocked: blocked == freezed
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $GroupDetailCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $GroupDetailCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc
abstract class _$GroupDetailResponseCopyWith<$Res>
    implements $GroupDetailResponseCopyWith<$Res> {
  factory _$GroupDetailResponseCopyWith(_GroupDetailResponse value,
          $Res Function(_GroupDetailResponse) then) =
      __$GroupDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, String token, GroupDetail? group, bool blocked});

  @override
  $GroupDetailCopyWith<$Res>? get group;
}

/// @nodoc
class __$GroupDetailResponseCopyWithImpl<$Res>
    extends _$GroupDetailResponseCopyWithImpl<$Res>
    implements _$GroupDetailResponseCopyWith<$Res> {
  __$GroupDetailResponseCopyWithImpl(
      _GroupDetailResponse _value, $Res Function(_GroupDetailResponse) _then)
      : super(_value, (v) => _then(v as _GroupDetailResponse));

  @override
  _GroupDetailResponse get _value => super._value as _GroupDetailResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? token = freezed,
    Object? group = freezed,
    Object? blocked = freezed,
  }) {
    return _then(_GroupDetailResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupDetail?,
      blocked: blocked == freezed
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupDetailResponse extends _GroupDetailResponse {
  const _$_GroupDetailResponse(
      {required this.result,
      required this.token,
      this.group,
      this.blocked = false})
      : super._();

  factory _$_GroupDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_GroupDetailResponseFromJson(json);

  @override
  final String result;
  @override
  final String token;
  @override
  final GroupDetail? group;
  @JsonKey(defaultValue: false)
  @override
  final bool blocked;

  @override
  String toString() {
    return 'GroupDetailResponse(result: $result, token: $token, group: $group, blocked: $blocked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupDetailResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)) &&
            (identical(other.blocked, blocked) ||
                const DeepCollectionEquality().equals(other.blocked, blocked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(group) ^
      const DeepCollectionEquality().hash(blocked);

  @JsonKey(ignore: true)
  @override
  _$GroupDetailResponseCopyWith<_GroupDetailResponse> get copyWith =>
      __$GroupDetailResponseCopyWithImpl<_GroupDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroupDetailResponseToJson(this);
  }
}

abstract class _GroupDetailResponse extends GroupDetailResponse {
  const factory _GroupDetailResponse(
      {required String result,
      required String token,
      GroupDetail? group,
      bool blocked}) = _$_GroupDetailResponse;
  const _GroupDetailResponse._() : super._();

  factory _GroupDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_GroupDetailResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  GroupDetail? get group => throw _privateConstructorUsedError;
  @override
  bool get blocked => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupDetailResponseCopyWith<_GroupDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
