// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'header.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Header _$HeaderFromJson(Map<String, dynamic> json) {
  return _Header.fromJson(json);
}

/// @nodoc
class _$HeaderTearOff {
  const _$HeaderTearOff();

  _Header call(
      {String users = '',
      String groups = '',
      String friends = '',
      String diaries = '',
      String experts = ''}) {
    return _Header(
      users: users,
      groups: groups,
      friends: friends,
      diaries: diaries,
      experts: experts,
    );
  }

  Header fromJson(Map<String, Object> json) {
    return Header.fromJson(json);
  }
}

/// @nodoc
const $Header = _$HeaderTearOff();

/// @nodoc
mixin _$Header {
  String get users => throw _privateConstructorUsedError;
  String get groups => throw _privateConstructorUsedError;
  String get friends => throw _privateConstructorUsedError;
  String get diaries => throw _privateConstructorUsedError;
  String get experts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeaderCopyWith<Header> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderCopyWith<$Res> {
  factory $HeaderCopyWith(Header value, $Res Function(Header) then) =
      _$HeaderCopyWithImpl<$Res>;
  $Res call(
      {String users,
      String groups,
      String friends,
      String diaries,
      String experts});
}

/// @nodoc
class _$HeaderCopyWithImpl<$Res> implements $HeaderCopyWith<$Res> {
  _$HeaderCopyWithImpl(this._value, this._then);

  final Header _value;
  // ignore: unused_field
  final $Res Function(Header) _then;

  @override
  $Res call({
    Object? users = freezed,
    Object? groups = freezed,
    Object? friends = freezed,
    Object? diaries = freezed,
    Object? experts = freezed,
  }) {
    return _then(_value.copyWith(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as String,
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as String,
      friends: friends == freezed
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as String,
      diaries: diaries == freezed
          ? _value.diaries
          : diaries // ignore: cast_nullable_to_non_nullable
              as String,
      experts: experts == freezed
          ? _value.experts
          : experts // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HeaderCopyWith<$Res> implements $HeaderCopyWith<$Res> {
  factory _$HeaderCopyWith(_Header value, $Res Function(_Header) then) =
      __$HeaderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String users,
      String groups,
      String friends,
      String diaries,
      String experts});
}

/// @nodoc
class __$HeaderCopyWithImpl<$Res> extends _$HeaderCopyWithImpl<$Res>
    implements _$HeaderCopyWith<$Res> {
  __$HeaderCopyWithImpl(_Header _value, $Res Function(_Header) _then)
      : super(_value, (v) => _then(v as _Header));

  @override
  _Header get _value => super._value as _Header;

  @override
  $Res call({
    Object? users = freezed,
    Object? groups = freezed,
    Object? friends = freezed,
    Object? diaries = freezed,
    Object? experts = freezed,
  }) {
    return _then(_Header(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as String,
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as String,
      friends: friends == freezed
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as String,
      diaries: diaries == freezed
          ? _value.diaries
          : diaries // ignore: cast_nullable_to_non_nullable
              as String,
      experts: experts == freezed
          ? _value.experts
          : experts // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Header extends _Header {
  const _$_Header(
      {this.users = '',
      this.groups = '',
      this.friends = '',
      this.diaries = '',
      this.experts = ''})
      : super._();

  factory _$_Header.fromJson(Map<String, dynamic> json) =>
      _$_$_HeaderFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String users;
  @JsonKey(defaultValue: '')
  @override
  final String groups;
  @JsonKey(defaultValue: '')
  @override
  final String friends;
  @JsonKey(defaultValue: '')
  @override
  final String diaries;
  @JsonKey(defaultValue: '')
  @override
  final String experts;

  @override
  String toString() {
    return 'Header(users: $users, groups: $groups, friends: $friends, diaries: $diaries, experts: $experts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Header &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)) &&
            (identical(other.friends, friends) ||
                const DeepCollectionEquality()
                    .equals(other.friends, friends)) &&
            (identical(other.diaries, diaries) ||
                const DeepCollectionEquality()
                    .equals(other.diaries, diaries)) &&
            (identical(other.experts, experts) ||
                const DeepCollectionEquality().equals(other.experts, experts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(groups) ^
      const DeepCollectionEquality().hash(friends) ^
      const DeepCollectionEquality().hash(diaries) ^
      const DeepCollectionEquality().hash(experts);

  @JsonKey(ignore: true)
  @override
  _$HeaderCopyWith<_Header> get copyWith =>
      __$HeaderCopyWithImpl<_Header>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HeaderToJson(this);
  }
}

abstract class _Header extends Header {
  const factory _Header(
      {String users,
      String groups,
      String friends,
      String diaries,
      String experts}) = _$_Header;
  const _Header._() : super._();

  factory _Header.fromJson(Map<String, dynamic> json) = _$_Header.fromJson;

  @override
  String get users => throw _privateConstructorUsedError;
  @override
  String get groups => throw _privateConstructorUsedError;
  @override
  String get friends => throw _privateConstructorUsedError;
  @override
  String get diaries => throw _privateConstructorUsedError;
  @override
  String get experts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HeaderCopyWith<_Header> get copyWith => throw _privateConstructorUsedError;
}
