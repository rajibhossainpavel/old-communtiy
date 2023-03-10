// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_find_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupFindResponse _$GroupFindResponseFromJson(Map<String, dynamic> json) {
  return _GroupFindResponse.fromJson(json);
}

/// @nodoc
class _$GroupFindResponseTearOff {
  const _$GroupFindResponseTearOff();

  _GroupFindResponse call(
      {List<FindGroup> findGroups = const <FindGroup>[],
      List<GroupCategory> categories = const <GroupCategory>[]}) {
    return _GroupFindResponse(
      findGroups: findGroups,
      categories: categories,
    );
  }

  GroupFindResponse fromJson(Map<String, Object> json) {
    return GroupFindResponse.fromJson(json);
  }
}

/// @nodoc
const $GroupFindResponse = _$GroupFindResponseTearOff();

/// @nodoc
mixin _$GroupFindResponse {
  List<FindGroup> get findGroups => throw _privateConstructorUsedError;
  List<GroupCategory> get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupFindResponseCopyWith<GroupFindResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupFindResponseCopyWith<$Res> {
  factory $GroupFindResponseCopyWith(
          GroupFindResponse value, $Res Function(GroupFindResponse) then) =
      _$GroupFindResponseCopyWithImpl<$Res>;
  $Res call({List<FindGroup> findGroups, List<GroupCategory> categories});
}

/// @nodoc
class _$GroupFindResponseCopyWithImpl<$Res>
    implements $GroupFindResponseCopyWith<$Res> {
  _$GroupFindResponseCopyWithImpl(this._value, this._then);

  final GroupFindResponse _value;
  // ignore: unused_field
  final $Res Function(GroupFindResponse) _then;

  @override
  $Res call({
    Object? findGroups = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      findGroups: findGroups == freezed
          ? _value.findGroups
          : findGroups // ignore: cast_nullable_to_non_nullable
              as List<FindGroup>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<GroupCategory>,
    ));
  }
}

/// @nodoc
abstract class _$GroupFindResponseCopyWith<$Res>
    implements $GroupFindResponseCopyWith<$Res> {
  factory _$GroupFindResponseCopyWith(
          _GroupFindResponse value, $Res Function(_GroupFindResponse) then) =
      __$GroupFindResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<FindGroup> findGroups, List<GroupCategory> categories});
}

/// @nodoc
class __$GroupFindResponseCopyWithImpl<$Res>
    extends _$GroupFindResponseCopyWithImpl<$Res>
    implements _$GroupFindResponseCopyWith<$Res> {
  __$GroupFindResponseCopyWithImpl(
      _GroupFindResponse _value, $Res Function(_GroupFindResponse) _then)
      : super(_value, (v) => _then(v as _GroupFindResponse));

  @override
  _GroupFindResponse get _value => super._value as _GroupFindResponse;

  @override
  $Res call({
    Object? findGroups = freezed,
    Object? categories = freezed,
  }) {
    return _then(_GroupFindResponse(
      findGroups: findGroups == freezed
          ? _value.findGroups
          : findGroups // ignore: cast_nullable_to_non_nullable
              as List<FindGroup>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<GroupCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupFindResponse extends _GroupFindResponse {
  const _$_GroupFindResponse(
      {this.findGroups = const <FindGroup>[],
      this.categories = const <GroupCategory>[]})
      : super._();

  factory _$_GroupFindResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_GroupFindResponseFromJson(json);

  @JsonKey(defaultValue: const <FindGroup>[])
  @override
  final List<FindGroup> findGroups;
  @JsonKey(defaultValue: const <GroupCategory>[])
  @override
  final List<GroupCategory> categories;

  @override
  String toString() {
    return 'GroupFindResponse(findGroups: $findGroups, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupFindResponse &&
            (identical(other.findGroups, findGroups) ||
                const DeepCollectionEquality()
                    .equals(other.findGroups, findGroups)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(findGroups) ^
      const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$GroupFindResponseCopyWith<_GroupFindResponse> get copyWith =>
      __$GroupFindResponseCopyWithImpl<_GroupFindResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroupFindResponseToJson(this);
  }
}

abstract class _GroupFindResponse extends GroupFindResponse {
  const factory _GroupFindResponse(
      {List<FindGroup> findGroups,
      List<GroupCategory> categories}) = _$_GroupFindResponse;
  const _GroupFindResponse._() : super._();

  factory _GroupFindResponse.fromJson(Map<String, dynamic> json) =
      _$_GroupFindResponse.fromJson;

  @override
  List<FindGroup> get findGroups => throw _privateConstructorUsedError;
  @override
  List<GroupCategory> get categories => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupFindResponseCopyWith<_GroupFindResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
