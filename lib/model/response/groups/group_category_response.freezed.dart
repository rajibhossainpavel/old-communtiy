// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupsCategoryResponse _$GroupsCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _GroupsCategoryResponse.fromJson(json);
}

/// @nodoc
class _$GroupsCategoryResponseTearOff {
  const _$GroupsCategoryResponseTearOff();

  _GroupsCategoryResponse call(
      {required String result,
      List<GroupCategory> categories = const <GroupCategory>[],
      required String token}) {
    return _GroupsCategoryResponse(
      result: result,
      categories: categories,
      token: token,
    );
  }

  GroupsCategoryResponse fromJson(Map<String, Object> json) {
    return GroupsCategoryResponse.fromJson(json);
  }
}

/// @nodoc
const $GroupsCategoryResponse = _$GroupsCategoryResponseTearOff();

/// @nodoc
mixin _$GroupsCategoryResponse {
  String get result => throw _privateConstructorUsedError;
  List<GroupCategory> get categories => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupsCategoryResponseCopyWith<GroupsCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsCategoryResponseCopyWith<$Res> {
  factory $GroupsCategoryResponseCopyWith(GroupsCategoryResponse value,
          $Res Function(GroupsCategoryResponse) then) =
      _$GroupsCategoryResponseCopyWithImpl<$Res>;
  $Res call({String result, List<GroupCategory> categories, String token});
}

/// @nodoc
class _$GroupsCategoryResponseCopyWithImpl<$Res>
    implements $GroupsCategoryResponseCopyWith<$Res> {
  _$GroupsCategoryResponseCopyWithImpl(this._value, this._then);

  final GroupsCategoryResponse _value;
  // ignore: unused_field
  final $Res Function(GroupsCategoryResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? categories = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<GroupCategory>,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GroupsCategoryResponseCopyWith<$Res>
    implements $GroupsCategoryResponseCopyWith<$Res> {
  factory _$GroupsCategoryResponseCopyWith(_GroupsCategoryResponse value,
          $Res Function(_GroupsCategoryResponse) then) =
      __$GroupsCategoryResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, List<GroupCategory> categories, String token});
}

/// @nodoc
class __$GroupsCategoryResponseCopyWithImpl<$Res>
    extends _$GroupsCategoryResponseCopyWithImpl<$Res>
    implements _$GroupsCategoryResponseCopyWith<$Res> {
  __$GroupsCategoryResponseCopyWithImpl(_GroupsCategoryResponse _value,
      $Res Function(_GroupsCategoryResponse) _then)
      : super(_value, (v) => _then(v as _GroupsCategoryResponse));

  @override
  _GroupsCategoryResponse get _value => super._value as _GroupsCategoryResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? categories = freezed,
    Object? token = freezed,
  }) {
    return _then(_GroupsCategoryResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<GroupCategory>,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupsCategoryResponse extends _GroupsCategoryResponse {
  const _$_GroupsCategoryResponse(
      {required this.result,
      this.categories = const <GroupCategory>[],
      required this.token})
      : super._();

  factory _$_GroupsCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_GroupsCategoryResponseFromJson(json);

  @override
  final String result;
  @JsonKey(defaultValue: const <GroupCategory>[])
  @override
  final List<GroupCategory> categories;
  @override
  final String token;

  @override
  String toString() {
    return 'GroupsCategoryResponse(result: $result, categories: $categories, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupsCategoryResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$GroupsCategoryResponseCopyWith<_GroupsCategoryResponse> get copyWith =>
      __$GroupsCategoryResponseCopyWithImpl<_GroupsCategoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroupsCategoryResponseToJson(this);
  }
}

abstract class _GroupsCategoryResponse extends GroupsCategoryResponse {
  const factory _GroupsCategoryResponse(
      {required String result,
      List<GroupCategory> categories,
      required String token}) = _$_GroupsCategoryResponse;
  const _GroupsCategoryResponse._() : super._();

  factory _GroupsCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$_GroupsCategoryResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  List<GroupCategory> get categories => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupsCategoryResponseCopyWith<_GroupsCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
