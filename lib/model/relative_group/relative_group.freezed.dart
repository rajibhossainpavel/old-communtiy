// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'relative_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RelativeGroup _$RelativeGroupFromJson(Map<String, dynamic> json) {
  return _RelativeGroup.fromJson(json);
}

/// @nodoc
class _$RelativeGroupTearOff {
  const _$RelativeGroupTearOff();

  _RelativeGroup call({String groupName = '', String groupID = ''}) {
    return _RelativeGroup(
      groupName: groupName,
      groupID: groupID,
    );
  }

  RelativeGroup fromJson(Map<String, Object> json) {
    return RelativeGroup.fromJson(json);
  }
}

/// @nodoc
const $RelativeGroup = _$RelativeGroupTearOff();

/// @nodoc
mixin _$RelativeGroup {
  String get groupName => throw _privateConstructorUsedError;
  String get groupID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelativeGroupCopyWith<RelativeGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelativeGroupCopyWith<$Res> {
  factory $RelativeGroupCopyWith(
          RelativeGroup value, $Res Function(RelativeGroup) then) =
      _$RelativeGroupCopyWithImpl<$Res>;
  $Res call({String groupName, String groupID});
}

/// @nodoc
class _$RelativeGroupCopyWithImpl<$Res>
    implements $RelativeGroupCopyWith<$Res> {
  _$RelativeGroupCopyWithImpl(this._value, this._then);

  final RelativeGroup _value;
  // ignore: unused_field
  final $Res Function(RelativeGroup) _then;

  @override
  $Res call({
    Object? groupName = freezed,
    Object? groupID = freezed,
  }) {
    return _then(_value.copyWith(
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      groupID: groupID == freezed
          ? _value.groupID
          : groupID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RelativeGroupCopyWith<$Res>
    implements $RelativeGroupCopyWith<$Res> {
  factory _$RelativeGroupCopyWith(
          _RelativeGroup value, $Res Function(_RelativeGroup) then) =
      __$RelativeGroupCopyWithImpl<$Res>;
  @override
  $Res call({String groupName, String groupID});
}

/// @nodoc
class __$RelativeGroupCopyWithImpl<$Res>
    extends _$RelativeGroupCopyWithImpl<$Res>
    implements _$RelativeGroupCopyWith<$Res> {
  __$RelativeGroupCopyWithImpl(
      _RelativeGroup _value, $Res Function(_RelativeGroup) _then)
      : super(_value, (v) => _then(v as _RelativeGroup));

  @override
  _RelativeGroup get _value => super._value as _RelativeGroup;

  @override
  $Res call({
    Object? groupName = freezed,
    Object? groupID = freezed,
  }) {
    return _then(_RelativeGroup(
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      groupID: groupID == freezed
          ? _value.groupID
          : groupID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelativeGroup extends _RelativeGroup {
  const _$_RelativeGroup({this.groupName = '', this.groupID = ''}) : super._();

  factory _$_RelativeGroup.fromJson(Map<String, dynamic> json) =>
      _$_$_RelativeGroupFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String groupName;
  @JsonKey(defaultValue: '')
  @override
  final String groupID;

  @override
  String toString() {
    return 'RelativeGroup(groupName: $groupName, groupID: $groupID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RelativeGroup &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.groupID, groupID) ||
                const DeepCollectionEquality().equals(other.groupID, groupID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(groupID);

  @JsonKey(ignore: true)
  @override
  _$RelativeGroupCopyWith<_RelativeGroup> get copyWith =>
      __$RelativeGroupCopyWithImpl<_RelativeGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RelativeGroupToJson(this);
  }
}

abstract class _RelativeGroup extends RelativeGroup {
  const factory _RelativeGroup({String groupName, String groupID}) =
      _$_RelativeGroup;
  const _RelativeGroup._() : super._();

  factory _RelativeGroup.fromJson(Map<String, dynamic> json) =
      _$_RelativeGroup.fromJson;

  @override
  String get groupName => throw _privateConstructorUsedError;
  @override
  String get groupID => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RelativeGroupCopyWith<_RelativeGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
