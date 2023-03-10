// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'find_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FindGroup _$FindGroupFromJson(Map<String, dynamic> json) {
  return _FindGroup.fromJson(json);
}

/// @nodoc
class _$FindGroupTearOff {
  const _$FindGroupTearOff();

  _FindGroup call({required String title, required List<Group> groups}) {
    return _FindGroup(
      title: title,
      groups: groups,
    );
  }

  FindGroup fromJson(Map<String, Object> json) {
    return FindGroup.fromJson(json);
  }
}

/// @nodoc
const $FindGroup = _$FindGroupTearOff();

/// @nodoc
mixin _$FindGroup {
  String get title => throw _privateConstructorUsedError;
  List<Group> get groups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindGroupCopyWith<FindGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindGroupCopyWith<$Res> {
  factory $FindGroupCopyWith(FindGroup value, $Res Function(FindGroup) then) =
      _$FindGroupCopyWithImpl<$Res>;
  $Res call({String title, List<Group> groups});
}

/// @nodoc
class _$FindGroupCopyWithImpl<$Res> implements $FindGroupCopyWith<$Res> {
  _$FindGroupCopyWithImpl(this._value, this._then);

  final FindGroup _value;
  // ignore: unused_field
  final $Res Function(FindGroup) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? groups = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc
abstract class _$FindGroupCopyWith<$Res> implements $FindGroupCopyWith<$Res> {
  factory _$FindGroupCopyWith(
          _FindGroup value, $Res Function(_FindGroup) then) =
      __$FindGroupCopyWithImpl<$Res>;
  @override
  $Res call({String title, List<Group> groups});
}

/// @nodoc
class __$FindGroupCopyWithImpl<$Res> extends _$FindGroupCopyWithImpl<$Res>
    implements _$FindGroupCopyWith<$Res> {
  __$FindGroupCopyWithImpl(_FindGroup _value, $Res Function(_FindGroup) _then)
      : super(_value, (v) => _then(v as _FindGroup));

  @override
  _FindGroup get _value => super._value as _FindGroup;

  @override
  $Res call({
    Object? title = freezed,
    Object? groups = freezed,
  }) {
    return _then(_FindGroup(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FindGroup extends _FindGroup {
  const _$_FindGroup({required this.title, required this.groups}) : super._();

  factory _$_FindGroup.fromJson(Map<String, dynamic> json) =>
      _$_$_FindGroupFromJson(json);

  @override
  final String title;
  @override
  final List<Group> groups;

  @override
  String toString() {
    return 'FindGroup(title: $title, groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindGroup &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(groups);

  @JsonKey(ignore: true)
  @override
  _$FindGroupCopyWith<_FindGroup> get copyWith =>
      __$FindGroupCopyWithImpl<_FindGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FindGroupToJson(this);
  }
}

abstract class _FindGroup extends FindGroup {
  const factory _FindGroup(
      {required String title, required List<Group> groups}) = _$_FindGroup;
  const _FindGroup._() : super._();

  factory _FindGroup.fromJson(Map<String, dynamic> json) =
      _$_FindGroup.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  List<Group> get groups => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FindGroupCopyWith<_FindGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
