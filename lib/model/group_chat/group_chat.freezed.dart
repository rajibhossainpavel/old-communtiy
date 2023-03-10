// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupChat _$GroupChatFromJson(Map<String, dynamic> json) {
  return _GroupChat.fromJson(json);
}

/// @nodoc
class _$GroupChatTearOff {
  const _$GroupChatTearOff();

  _GroupChat call(
      {String photoPath = '',
      String message = '',
      required Map<String, dynamic> groupID,
      @timestamp required DateTime postedAt,
      String uid = '',
      String uuid = '',
      bool isOwnChat = false}) {
    return _GroupChat(
      photoPath: photoPath,
      message: message,
      groupID: groupID,
      postedAt: postedAt,
      uid: uid,
      uuid: uuid,
      isOwnChat: isOwnChat,
    );
  }

  GroupChat fromJson(Map<String, Object> json) {
    return GroupChat.fromJson(json);
  }
}

/// @nodoc
const $GroupChat = _$GroupChatTearOff();

/// @nodoc
mixin _$GroupChat {
  String get photoPath => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Map<String, dynamic> get groupID => throw _privateConstructorUsedError;
  @timestamp
  DateTime get postedAt => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  bool get isOwnChat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupChatCopyWith<GroupChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupChatCopyWith<$Res> {
  factory $GroupChatCopyWith(GroupChat value, $Res Function(GroupChat) then) =
      _$GroupChatCopyWithImpl<$Res>;
  $Res call(
      {String photoPath,
      String message,
      Map<String, dynamic> groupID,
      @timestamp DateTime postedAt,
      String uid,
      String uuid,
      bool isOwnChat});
}

/// @nodoc
class _$GroupChatCopyWithImpl<$Res> implements $GroupChatCopyWith<$Res> {
  _$GroupChatCopyWithImpl(this._value, this._then);

  final GroupChat _value;
  // ignore: unused_field
  final $Res Function(GroupChat) _then;

  @override
  $Res call({
    Object? photoPath = freezed,
    Object? message = freezed,
    Object? groupID = freezed,
    Object? postedAt = freezed,
    Object? uid = freezed,
    Object? uuid = freezed,
    Object? isOwnChat = freezed,
  }) {
    return _then(_value.copyWith(
      photoPath: photoPath == freezed
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      groupID: groupID == freezed
          ? _value.groupID
          : groupID // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      postedAt: postedAt == freezed
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      isOwnChat: isOwnChat == freezed
          ? _value.isOwnChat
          : isOwnChat // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$GroupChatCopyWith<$Res> implements $GroupChatCopyWith<$Res> {
  factory _$GroupChatCopyWith(
          _GroupChat value, $Res Function(_GroupChat) then) =
      __$GroupChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String photoPath,
      String message,
      Map<String, dynamic> groupID,
      @timestamp DateTime postedAt,
      String uid,
      String uuid,
      bool isOwnChat});
}

/// @nodoc
class __$GroupChatCopyWithImpl<$Res> extends _$GroupChatCopyWithImpl<$Res>
    implements _$GroupChatCopyWith<$Res> {
  __$GroupChatCopyWithImpl(_GroupChat _value, $Res Function(_GroupChat) _then)
      : super(_value, (v) => _then(v as _GroupChat));

  @override
  _GroupChat get _value => super._value as _GroupChat;

  @override
  $Res call({
    Object? photoPath = freezed,
    Object? message = freezed,
    Object? groupID = freezed,
    Object? postedAt = freezed,
    Object? uid = freezed,
    Object? uuid = freezed,
    Object? isOwnChat = freezed,
  }) {
    return _then(_GroupChat(
      photoPath: photoPath == freezed
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      groupID: groupID == freezed
          ? _value.groupID
          : groupID // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      postedAt: postedAt == freezed
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      isOwnChat: isOwnChat == freezed
          ? _value.isOwnChat
          : isOwnChat // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupChat extends _GroupChat {
  const _$_GroupChat(
      {this.photoPath = '',
      this.message = '',
      required this.groupID,
      @timestamp required this.postedAt,
      this.uid = '',
      this.uuid = '',
      this.isOwnChat = false})
      : super._();

  factory _$_GroupChat.fromJson(Map<String, dynamic> json) =>
      _$_$_GroupChatFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String photoPath;
  @JsonKey(defaultValue: '')
  @override
  final String message;
  @override
  final Map<String, dynamic> groupID;
  @override
  @timestamp
  final DateTime postedAt;
  @JsonKey(defaultValue: '')
  @override
  final String uid;
  @JsonKey(defaultValue: '')
  @override
  final String uuid;
  @JsonKey(defaultValue: false)
  @override
  final bool isOwnChat;

  @override
  String toString() {
    return 'GroupChat(photoPath: $photoPath, message: $message, groupID: $groupID, postedAt: $postedAt, uid: $uid, uuid: $uuid, isOwnChat: $isOwnChat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupChat &&
            (identical(other.photoPath, photoPath) ||
                const DeepCollectionEquality()
                    .equals(other.photoPath, photoPath)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.groupID, groupID) ||
                const DeepCollectionEquality()
                    .equals(other.groupID, groupID)) &&
            (identical(other.postedAt, postedAt) ||
                const DeepCollectionEquality()
                    .equals(other.postedAt, postedAt)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.isOwnChat, isOwnChat) ||
                const DeepCollectionEquality()
                    .equals(other.isOwnChat, isOwnChat)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photoPath) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(groupID) ^
      const DeepCollectionEquality().hash(postedAt) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(isOwnChat);

  @JsonKey(ignore: true)
  @override
  _$GroupChatCopyWith<_GroupChat> get copyWith =>
      __$GroupChatCopyWithImpl<_GroupChat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GroupChatToJson(this);
  }
}

abstract class _GroupChat extends GroupChat {
  const factory _GroupChat(
      {String photoPath,
      String message,
      required Map<String, dynamic> groupID,
      @timestamp required DateTime postedAt,
      String uid,
      String uuid,
      bool isOwnChat}) = _$_GroupChat;
  const _GroupChat._() : super._();

  factory _GroupChat.fromJson(Map<String, dynamic> json) =
      _$_GroupChat.fromJson;

  @override
  String get photoPath => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get groupID => throw _privateConstructorUsedError;
  @override
  @timestamp
  DateTime get postedAt => throw _privateConstructorUsedError;
  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  bool get isOwnChat => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupChatCopyWith<_GroupChat> get copyWith =>
      throw _privateConstructorUsedError;
}
