// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dating_chat_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DatingChatMember _$DatingChatMemberFromJson(Map<String, dynamic> json) {
  return _DatingChatMember.fromJson(json);
}

/// @nodoc
class _$DatingChatMemberTearOff {
  const _$DatingChatMemberTearOff();

  _DatingChatMember call(
      {bool readState = false,
      bool responseState = false,
      required String userName,
      required String uuid}) {
    return _DatingChatMember(
      readState: readState,
      responseState: responseState,
      userName: userName,
      uuid: uuid,
    );
  }

  DatingChatMember fromJson(Map<String, Object> json) {
    return DatingChatMember.fromJson(json);
  }
}

/// @nodoc
const $DatingChatMember = _$DatingChatMemberTearOff();

/// @nodoc
mixin _$DatingChatMember {
  bool get readState => throw _privateConstructorUsedError;
  bool get responseState => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatingChatMemberCopyWith<DatingChatMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatingChatMemberCopyWith<$Res> {
  factory $DatingChatMemberCopyWith(
          DatingChatMember value, $Res Function(DatingChatMember) then) =
      _$DatingChatMemberCopyWithImpl<$Res>;
  $Res call({bool readState, bool responseState, String userName, String uuid});
}

/// @nodoc
class _$DatingChatMemberCopyWithImpl<$Res>
    implements $DatingChatMemberCopyWith<$Res> {
  _$DatingChatMemberCopyWithImpl(this._value, this._then);

  final DatingChatMember _value;
  // ignore: unused_field
  final $Res Function(DatingChatMember) _then;

  @override
  $Res call({
    Object? readState = freezed,
    Object? responseState = freezed,
    Object? userName = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_value.copyWith(
      readState: readState == freezed
          ? _value.readState
          : readState // ignore: cast_nullable_to_non_nullable
              as bool,
      responseState: responseState == freezed
          ? _value.responseState
          : responseState // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DatingChatMemberCopyWith<$Res>
    implements $DatingChatMemberCopyWith<$Res> {
  factory _$DatingChatMemberCopyWith(
          _DatingChatMember value, $Res Function(_DatingChatMember) then) =
      __$DatingChatMemberCopyWithImpl<$Res>;
  @override
  $Res call({bool readState, bool responseState, String userName, String uuid});
}

/// @nodoc
class __$DatingChatMemberCopyWithImpl<$Res>
    extends _$DatingChatMemberCopyWithImpl<$Res>
    implements _$DatingChatMemberCopyWith<$Res> {
  __$DatingChatMemberCopyWithImpl(
      _DatingChatMember _value, $Res Function(_DatingChatMember) _then)
      : super(_value, (v) => _then(v as _DatingChatMember));

  @override
  _DatingChatMember get _value => super._value as _DatingChatMember;

  @override
  $Res call({
    Object? readState = freezed,
    Object? responseState = freezed,
    Object? userName = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_DatingChatMember(
      readState: readState == freezed
          ? _value.readState
          : readState // ignore: cast_nullable_to_non_nullable
              as bool,
      responseState: responseState == freezed
          ? _value.responseState
          : responseState // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DatingChatMember implements _DatingChatMember {
  const _$_DatingChatMember(
      {this.readState = false,
      this.responseState = false,
      required this.userName,
      required this.uuid});

  factory _$_DatingChatMember.fromJson(Map<String, dynamic> json) =>
      _$_$_DatingChatMemberFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool readState;
  @JsonKey(defaultValue: false)
  @override
  final bool responseState;
  @override
  final String userName;
  @override
  final String uuid;

  @override
  String toString() {
    return 'DatingChatMember(readState: $readState, responseState: $responseState, userName: $userName, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DatingChatMember &&
            (identical(other.readState, readState) ||
                const DeepCollectionEquality()
                    .equals(other.readState, readState)) &&
            (identical(other.responseState, responseState) ||
                const DeepCollectionEquality()
                    .equals(other.responseState, responseState)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(readState) ^
      const DeepCollectionEquality().hash(responseState) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(uuid);

  @JsonKey(ignore: true)
  @override
  _$DatingChatMemberCopyWith<_DatingChatMember> get copyWith =>
      __$DatingChatMemberCopyWithImpl<_DatingChatMember>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DatingChatMemberToJson(this);
  }
}

abstract class _DatingChatMember implements DatingChatMember {
  const factory _DatingChatMember(
      {bool readState,
      bool responseState,
      required String userName,
      required String uuid}) = _$_DatingChatMember;

  factory _DatingChatMember.fromJson(Map<String, dynamic> json) =
      _$_DatingChatMember.fromJson;

  @override
  bool get readState => throw _privateConstructorUsedError;
  @override
  bool get responseState => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DatingChatMemberCopyWith<_DatingChatMember> get copyWith =>
      throw _privateConstructorUsedError;
}
