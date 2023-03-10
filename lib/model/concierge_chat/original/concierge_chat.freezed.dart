// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'concierge_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConciergeChat _$ConciergeChatFromJson(Map<String, dynamic> json) {
  return _ConciergeChat.fromJson(json);
}

/// @nodoc
class _$ConciergeChatTearOff {
  const _$ConciergeChatTearOff();

  _ConciergeChat call(
      {String message = '',
      String photoPath = '',
      @timestamp required DateTime postedAt,
      bool readState = false,
      required Map<String, dynamic> roomID,
      bool userStatus = false}) {
    return _ConciergeChat(
      message: message,
      photoPath: photoPath,
      postedAt: postedAt,
      readState: readState,
      roomID: roomID,
      userStatus: userStatus,
    );
  }

  ConciergeChat fromJson(Map<String, Object> json) {
    return ConciergeChat.fromJson(json);
  }
}

/// @nodoc
const $ConciergeChat = _$ConciergeChatTearOff();

/// @nodoc
mixin _$ConciergeChat {
  String get message => throw _privateConstructorUsedError;
  String get photoPath => throw _privateConstructorUsedError;
  @timestamp
  DateTime get postedAt => throw _privateConstructorUsedError;
  bool get readState => throw _privateConstructorUsedError;
  Map<String, dynamic> get roomID => throw _privateConstructorUsedError;
  bool get userStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConciergeChatCopyWith<ConciergeChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConciergeChatCopyWith<$Res> {
  factory $ConciergeChatCopyWith(
          ConciergeChat value, $Res Function(ConciergeChat) then) =
      _$ConciergeChatCopyWithImpl<$Res>;
  $Res call(
      {String message,
      String photoPath,
      @timestamp DateTime postedAt,
      bool readState,
      Map<String, dynamic> roomID,
      bool userStatus});
}

/// @nodoc
class _$ConciergeChatCopyWithImpl<$Res>
    implements $ConciergeChatCopyWith<$Res> {
  _$ConciergeChatCopyWithImpl(this._value, this._then);

  final ConciergeChat _value;
  // ignore: unused_field
  final $Res Function(ConciergeChat) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? photoPath = freezed,
    Object? postedAt = freezed,
    Object? readState = freezed,
    Object? roomID = freezed,
    Object? userStatus = freezed,
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
      postedAt: postedAt == freezed
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      readState: readState == freezed
          ? _value.readState
          : readState // ignore: cast_nullable_to_non_nullable
              as bool,
      roomID: roomID == freezed
          ? _value.roomID
          : roomID // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ConciergeChatCopyWith<$Res>
    implements $ConciergeChatCopyWith<$Res> {
  factory _$ConciergeChatCopyWith(
          _ConciergeChat value, $Res Function(_ConciergeChat) then) =
      __$ConciergeChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String message,
      String photoPath,
      @timestamp DateTime postedAt,
      bool readState,
      Map<String, dynamic> roomID,
      bool userStatus});
}

/// @nodoc
class __$ConciergeChatCopyWithImpl<$Res>
    extends _$ConciergeChatCopyWithImpl<$Res>
    implements _$ConciergeChatCopyWith<$Res> {
  __$ConciergeChatCopyWithImpl(
      _ConciergeChat _value, $Res Function(_ConciergeChat) _then)
      : super(_value, (v) => _then(v as _ConciergeChat));

  @override
  _ConciergeChat get _value => super._value as _ConciergeChat;

  @override
  $Res call({
    Object? message = freezed,
    Object? photoPath = freezed,
    Object? postedAt = freezed,
    Object? readState = freezed,
    Object? roomID = freezed,
    Object? userStatus = freezed,
  }) {
    return _then(_ConciergeChat(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      photoPath: photoPath == freezed
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
      postedAt: postedAt == freezed
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      readState: readState == freezed
          ? _value.readState
          : readState // ignore: cast_nullable_to_non_nullable
              as bool,
      roomID: roomID == freezed
          ? _value.roomID
          : roomID // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      userStatus: userStatus == freezed
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConciergeChat extends _ConciergeChat {
  const _$_ConciergeChat(
      {this.message = '',
      this.photoPath = '',
      @timestamp required this.postedAt,
      this.readState = false,
      required this.roomID,
      this.userStatus = false})
      : super._();

  factory _$_ConciergeChat.fromJson(Map<String, dynamic> json) =>
      _$_$_ConciergeChatFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String message;
  @JsonKey(defaultValue: '')
  @override
  final String photoPath;
  @override
  @timestamp
  final DateTime postedAt;
  @JsonKey(defaultValue: false)
  @override
  final bool readState;
  @override
  final Map<String, dynamic> roomID;
  @JsonKey(defaultValue: false)
  @override
  final bool userStatus;

  @override
  String toString() {
    return 'ConciergeChat(message: $message, photoPath: $photoPath, postedAt: $postedAt, readState: $readState, roomID: $roomID, userStatus: $userStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConciergeChat &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.photoPath, photoPath) ||
                const DeepCollectionEquality()
                    .equals(other.photoPath, photoPath)) &&
            (identical(other.postedAt, postedAt) ||
                const DeepCollectionEquality()
                    .equals(other.postedAt, postedAt)) &&
            (identical(other.readState, readState) ||
                const DeepCollectionEquality()
                    .equals(other.readState, readState)) &&
            (identical(other.roomID, roomID) ||
                const DeepCollectionEquality().equals(other.roomID, roomID)) &&
            (identical(other.userStatus, userStatus) ||
                const DeepCollectionEquality()
                    .equals(other.userStatus, userStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(photoPath) ^
      const DeepCollectionEquality().hash(postedAt) ^
      const DeepCollectionEquality().hash(readState) ^
      const DeepCollectionEquality().hash(roomID) ^
      const DeepCollectionEquality().hash(userStatus);

  @JsonKey(ignore: true)
  @override
  _$ConciergeChatCopyWith<_ConciergeChat> get copyWith =>
      __$ConciergeChatCopyWithImpl<_ConciergeChat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConciergeChatToJson(this);
  }
}

abstract class _ConciergeChat extends ConciergeChat {
  const factory _ConciergeChat(
      {String message,
      String photoPath,
      @timestamp required DateTime postedAt,
      bool readState,
      required Map<String, dynamic> roomID,
      bool userStatus}) = _$_ConciergeChat;
  const _ConciergeChat._() : super._();

  factory _ConciergeChat.fromJson(Map<String, dynamic> json) =
      _$_ConciergeChat.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String get photoPath => throw _privateConstructorUsedError;
  @override
  @timestamp
  DateTime get postedAt => throw _privateConstructorUsedError;
  @override
  bool get readState => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get roomID => throw _privateConstructorUsedError;
  @override
  bool get userStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConciergeChatCopyWith<_ConciergeChat> get copyWith =>
      throw _privateConstructorUsedError;
}
