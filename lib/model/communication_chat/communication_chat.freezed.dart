// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'communication_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommunicationChat _$CommunicationChatFromJson(Map<String, dynamic> json) {
  return _CommunicationChat.fromJson(json);
}

/// @nodoc
class _$CommunicationChatTearOff {
  const _$CommunicationChatTearOff();

  _CommunicationChat call(
      {String message = '',
      String photoPath = '',
      required Map<String, dynamic> roomID,
      @timestamp required DateTime postedAt,
      String uuid = '',
      String uid = '',
      bool isOwnChat = false}) {
    return _CommunicationChat(
      message: message,
      photoPath: photoPath,
      roomID: roomID,
      postedAt: postedAt,
      uuid: uuid,
      uid: uid,
      isOwnChat: isOwnChat,
    );
  }

  CommunicationChat fromJson(Map<String, Object> json) {
    return CommunicationChat.fromJson(json);
  }
}

/// @nodoc
const $CommunicationChat = _$CommunicationChatTearOff();

/// @nodoc
mixin _$CommunicationChat {
  String get message => throw _privateConstructorUsedError;
  String get photoPath => throw _privateConstructorUsedError;
  Map<String, dynamic> get roomID => throw _privateConstructorUsedError;
  @timestamp
  DateTime get postedAt => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  bool get isOwnChat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunicationChatCopyWith<CommunicationChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunicationChatCopyWith<$Res> {
  factory $CommunicationChatCopyWith(
          CommunicationChat value, $Res Function(CommunicationChat) then) =
      _$CommunicationChatCopyWithImpl<$Res>;
  $Res call(
      {String message,
      String photoPath,
      Map<String, dynamic> roomID,
      @timestamp DateTime postedAt,
      String uuid,
      String uid,
      bool isOwnChat});
}

/// @nodoc
class _$CommunicationChatCopyWithImpl<$Res>
    implements $CommunicationChatCopyWith<$Res> {
  _$CommunicationChatCopyWithImpl(this._value, this._then);

  final CommunicationChat _value;
  // ignore: unused_field
  final $Res Function(CommunicationChat) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? photoPath = freezed,
    Object? roomID = freezed,
    Object? postedAt = freezed,
    Object? uuid = freezed,
    Object? uid = freezed,
    Object? isOwnChat = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      photoPath: photoPath == freezed
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
      roomID: roomID == freezed
          ? _value.roomID
          : roomID // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      postedAt: postedAt == freezed
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      isOwnChat: isOwnChat == freezed
          ? _value.isOwnChat
          : isOwnChat // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CommunicationChatCopyWith<$Res>
    implements $CommunicationChatCopyWith<$Res> {
  factory _$CommunicationChatCopyWith(
          _CommunicationChat value, $Res Function(_CommunicationChat) then) =
      __$CommunicationChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String message,
      String photoPath,
      Map<String, dynamic> roomID,
      @timestamp DateTime postedAt,
      String uuid,
      String uid,
      bool isOwnChat});
}

/// @nodoc
class __$CommunicationChatCopyWithImpl<$Res>
    extends _$CommunicationChatCopyWithImpl<$Res>
    implements _$CommunicationChatCopyWith<$Res> {
  __$CommunicationChatCopyWithImpl(
      _CommunicationChat _value, $Res Function(_CommunicationChat) _then)
      : super(_value, (v) => _then(v as _CommunicationChat));

  @override
  _CommunicationChat get _value => super._value as _CommunicationChat;

  @override
  $Res call({
    Object? message = freezed,
    Object? photoPath = freezed,
    Object? roomID = freezed,
    Object? postedAt = freezed,
    Object? uuid = freezed,
    Object? uid = freezed,
    Object? isOwnChat = freezed,
  }) {
    return _then(_CommunicationChat(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      photoPath: photoPath == freezed
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
      roomID: roomID == freezed
          ? _value.roomID
          : roomID // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      postedAt: postedAt == freezed
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
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
class _$_CommunicationChat extends _CommunicationChat {
  const _$_CommunicationChat(
      {this.message = '',
      this.photoPath = '',
      required this.roomID,
      @timestamp required this.postedAt,
      this.uuid = '',
      this.uid = '',
      this.isOwnChat = false})
      : super._();

  factory _$_CommunicationChat.fromJson(Map<String, dynamic> json) =>
      _$_$_CommunicationChatFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String message;
  @JsonKey(defaultValue: '')
  @override
  final String photoPath;
  @override
  final Map<String, dynamic> roomID;
  @override
  @timestamp
  final DateTime postedAt;
  @JsonKey(defaultValue: '')
  @override
  final String uuid;
  @JsonKey(defaultValue: '')
  @override
  final String uid;
  @JsonKey(defaultValue: false)
  @override
  final bool isOwnChat;

  @override
  String toString() {
    return 'CommunicationChat(message: $message, photoPath: $photoPath, roomID: $roomID, postedAt: $postedAt, uuid: $uuid, uid: $uid, isOwnChat: $isOwnChat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommunicationChat &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.photoPath, photoPath) ||
                const DeepCollectionEquality()
                    .equals(other.photoPath, photoPath)) &&
            (identical(other.roomID, roomID) ||
                const DeepCollectionEquality().equals(other.roomID, roomID)) &&
            (identical(other.postedAt, postedAt) ||
                const DeepCollectionEquality()
                    .equals(other.postedAt, postedAt)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.isOwnChat, isOwnChat) ||
                const DeepCollectionEquality()
                    .equals(other.isOwnChat, isOwnChat)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(photoPath) ^
      const DeepCollectionEquality().hash(roomID) ^
      const DeepCollectionEquality().hash(postedAt) ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(isOwnChat);

  @JsonKey(ignore: true)
  @override
  _$CommunicationChatCopyWith<_CommunicationChat> get copyWith =>
      __$CommunicationChatCopyWithImpl<_CommunicationChat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommunicationChatToJson(this);
  }
}

abstract class _CommunicationChat extends CommunicationChat {
  const factory _CommunicationChat(
      {String message,
      String photoPath,
      required Map<String, dynamic> roomID,
      @timestamp required DateTime postedAt,
      String uuid,
      String uid,
      bool isOwnChat}) = _$_CommunicationChat;
  const _CommunicationChat._() : super._();

  factory _CommunicationChat.fromJson(Map<String, dynamic> json) =
      _$_CommunicationChat.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String get photoPath => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get roomID => throw _privateConstructorUsedError;
  @override
  @timestamp
  DateTime get postedAt => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  bool get isOwnChat => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommunicationChatCopyWith<_CommunicationChat> get copyWith =>
      throw _privateConstructorUsedError;
}
