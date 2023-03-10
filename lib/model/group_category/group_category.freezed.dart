// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupCategory _$GroupCategoryFromJson(Map<String, dynamic> json) {
  return _GroupCategory.fromJson(json);
}

/// @nodoc
class _$GroupCategoryTearOff {
  const _$GroupCategoryTearOff();

  _GroupCategory call({int groupCount = 0, String name = '', String id = ''}) {
    return _GroupCategory(
      groupCount: groupCount,
      name: name,
      id: id,
    );
  }

  GroupCategory fromJson(Map<String, Object> json) {
    return GroupCategory.fromJson(json);
  }
}

/// @nodoc
const $GroupCategory = _$GroupCategoryTearOff();

/// @nodoc
mixin _$GroupCategory {
  int get groupCount => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupCategoryCopyWith<GroupCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCategoryCopyWith<$Res> {
  factory $GroupCategoryCopyWith(
          GroupCategory value, $Res Function(GroupCategory) then) =
      _$GroupCategoryCopyWithImpl<$Res>;
  $Res call({int groupCount, String name, String id});
}

/// @nodoc
class _$GroupCategoryCopyWithImpl<$Res>
    implements $GroupCategoryCopyWith<$Res> {
  _$GroupCategoryCopyWithImpl(this._value, this._then);

  final GroupCategory _value;
  // ignore: unused_field
  final $Res Function(GroupCategory) _then;

  @override
  $Res call({
    Object? groupCount = freezed,
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      groupCount: groupCount == freezed
          ? _value.groupCount
          : groupCount // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GroupCategoryCopyWith<$Res>
    implements $GroupCategoryCopyWith<$Res> {
  factory _$GroupCategoryCopyWith(
          _GroupCategory value, $Res Function(_GroupCategory) then) =
      __$GroupCategoryCopyWithImpl<$Res>;
  @override
  $Res call({int groupCount, String name, String id});
}

/// @nodoc
class __$GroupCategoryCopyWithImpl<$Res>
    extends _$GroupCategoryCopyWithImpl<$Res>
    implements _$GroupCategoryCopyWith<$Res> {
  __$GroupCategoryCopyWithImpl(
      _GroupCategory _value, $Res Function(_GroupCategory) _then)
      : super(_value, (v) => _then(v as _GroupCategory));

  @override
  _GroupCategory get _value => super._value as _GroupCategory;

  @override
  $Res call({
    Object? groupCount = freezed,
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_GroupCategory(
      groupCount: groupCount == freezed
          ? _value.groupCount
          : groupCount // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupCategory extends _GroupCategory {
  const _$_GroupCategory({this.groupCount = 0, this.name = '', this.id = ''})
      : super._();

  factory _$_GroupCategory.fromJson(Map<String, dynamic> json) =>
      _$_$_GroupCategoryFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int groupCount;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String id;

  @override
  String toString() {
    return 'GroupCategory(groupCount: $groupCount, name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupCategory &&
            (identical(other.groupCount, groupCount) ||
                const DeepCollectionEquality()
                    .equals(other.groupCount, groupCount)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(groupCount) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$GroupCategoryCopyWith<_GroupCategory> get copyWith =>
      __$GroupCategoryCopyWithImpl<_GroupCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroupCategoryToJson(this);
  }
}

abstract class _GroupCategory extends GroupCategory {
  const factory _GroupCategory({int groupCount, String name, String id}) =
      _$_GroupCategory;
  const _GroupCategory._() : super._();

  factory _GroupCategory.fromJson(Map<String, dynamic> json) =
      _$_GroupCategory.fromJson;

  @override
  int get groupCount => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupCategoryCopyWith<_GroupCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
