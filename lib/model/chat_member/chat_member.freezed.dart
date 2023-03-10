// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatMember _$ChatMemberFromJson(Map<String, dynamic> json) {
  return _ChatMember.fromJson(json);
}

/// @nodoc
class _$ChatMemberTearOff {
  const _$ChatMemberTearOff();

  _ChatMember call(
      {bool readState = false,
      bool responseState = false,
      String userName = '',
      String uuid = ''}) {
    return _ChatMember(
      readState: readState,
      responseState: responseState,
      userName: userName,
      uuid: uuid,
    );
  }

  ChatMember fromJson(Map<String, Object> json) {
    return ChatMember.fromJson(json);
  }
}

/// @nodoc
const $ChatMember = _$ChatMemberTearOff();

/// @nodoc
mixin _$ChatMember {
  bool get readState => throw _privateConstructorUsedError;
  bool get responseState => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMemberCopyWith<ChatMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMemberCopyWith<$Res> {
  factory $ChatMemberCopyWith(
          ChatMember value, $Res Function(ChatMember) then) =
      _$ChatMemberCopyWithImpl<$Res>;
  $Res call({bool readState, bool responseState, String userName, String uuid});
}

/// @nodoc
class _$ChatMemberCopyWithImpl<$Res> implements $ChatMemberCopyWith<$Res> {
  _$ChatMemberCopyWithImpl(this._value, this._then);

  final ChatMember _value;
  // ignore: unused_field
  final $Res Function(ChatMember) _then;

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
abstract class _$ChatMemberCopyWith<$Res> implements $ChatMemberCopyWith<$Res> {
  factory _$ChatMemberCopyWith(
          _ChatMember value, $Res Function(_ChatMember) then) =
      __$ChatMemberCopyWithImpl<$Res>;
  @override
  $Res call({bool readState, bool responseState, String userName, String uuid});
}

/// @nodoc
class __$ChatMemberCopyWithImpl<$Res> extends _$ChatMemberCopyWithImpl<$Res>
    implements _$ChatMemberCopyWith<$Res> {
  __$ChatMemberCopyWithImpl(
      _ChatMember _value, $Res Function(_ChatMember) _then)
      : super(_value, (v) => _then(v as _ChatMember));

  @override
  _ChatMember get _value => super._value as _ChatMember;

  @override
  $Res call({
    Object? readState = freezed,
    Object? responseState = freezed,
    Object? userName = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_ChatMember(
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
class _$_ChatMember extends _ChatMember {
  const _$_ChatMember(
      {this.readState = false,
      this.responseState = false,
      this.userName = '',
      this.uuid = ''})
      : super._();

  factory _$_ChatMember.fromJson(Map<String, dynamic> json) =>
      _$_$_ChatMemberFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool readState;
  @JsonKey(defaultValue: false)
  @override
  final bool responseState;
  @JsonKey(defaultValue: '')
  @override
  final String userName;
  @JsonKey(defaultValue: '')
  @override
  final String uuid;

  @override
  String toString() {
    return 'ChatMember(readState: $readState, responseState: $responseState, userName: $userName, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatMember &&
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
  _$ChatMemberCopyWith<_ChatMember> get copyWith =>
      __$ChatMemberCopyWithImpl<_ChatMember>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChatMemberToJson(this);
  }
}

abstract class _ChatMember extends ChatMember {
  const factory _ChatMember(
      {bool readState,
      bool responseState,
      String userName,
      String uuid}) = _$_ChatMember;
  const _ChatMember._() : super._();

  factory _ChatMember.fromJson(Map<String, dynamic> json) =
      _$_ChatMember.fromJson;

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
  _$ChatMemberCopyWith<_ChatMember> get copyWith =>
      throw _privateConstructorUsedError;
}
