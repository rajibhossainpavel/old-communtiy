// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'concierge_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConciergeChat _$ConciergeChatFromJson(Map<String, dynamic> json) {
  return _ConciergeChat.fromJson(json);
}

/// @nodoc
mixin _$ConciergeChat {
  String get id => throw _privateConstructorUsedError;
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
      {String id,
      String message,
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
    Object? id = freezed,
    Object? message = freezed,
    Object? photoPath = freezed,
    Object? postedAt = freezed,
    Object? readState = freezed,
    Object? roomID = freezed,
    Object? userStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_ConciergeChatCopyWith<$Res>
    implements $ConciergeChatCopyWith<$Res> {
  factory _$$_ConciergeChatCopyWith(
          _$_ConciergeChat value, $Res Function(_$_ConciergeChat) then) =
      __$$_ConciergeChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String message,
      String photoPath,
      @timestamp DateTime postedAt,
      bool readState,
      Map<String, dynamic> roomID,
      bool userStatus});
}

/// @nodoc
class __$$_ConciergeChatCopyWithImpl<$Res>
    extends _$ConciergeChatCopyWithImpl<$Res>
    implements _$$_ConciergeChatCopyWith<$Res> {
  __$$_ConciergeChatCopyWithImpl(
      _$_ConciergeChat _value, $Res Function(_$_ConciergeChat) _then)
      : super(_value, (v) => _then(v as _$_ConciergeChat));

  @override
  _$_ConciergeChat get _value => super._value as _$_ConciergeChat;

  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? photoPath = freezed,
    Object? postedAt = freezed,
    Object? readState = freezed,
    Object? roomID = freezed,
    Object? userStatus = freezed,
  }) {
    return _then(_$_ConciergeChat(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
          ? _value._roomID
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
      {this.id = '',
      this.message = '',
      this.photoPath = '',
      @timestamp required this.postedAt,
      this.readState = false,
      required final Map<String, dynamic> roomID,
      this.userStatus = false})
      : _roomID = roomID,
        super._();

  factory _$_ConciergeChat.fromJson(Map<String, dynamic> json) =>
      _$$_ConciergeChatFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final String photoPath;
  @override
  @timestamp
  final DateTime postedAt;
  @override
  @JsonKey()
  final bool readState;
  final Map<String, dynamic> _roomID;
  @override
  Map<String, dynamic> get roomID {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_roomID);
  }

  @override
  @JsonKey()
  final bool userStatus;

  @override
  String toString() {
    return 'ConciergeChat(id: $id, message: $message, photoPath: $photoPath, postedAt: $postedAt, readState: $readState, roomID: $roomID, userStatus: $userStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConciergeChat &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.photoPath, photoPath) &&
            const DeepCollectionEquality().equals(other.postedAt, postedAt) &&
            const DeepCollectionEquality().equals(other.readState, readState) &&
            const DeepCollectionEquality().equals(other._roomID, _roomID) &&
            const DeepCollectionEquality()
                .equals(other.userStatus, userStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(photoPath),
      const DeepCollectionEquality().hash(postedAt),
      const DeepCollectionEquality().hash(readState),
      const DeepCollectionEquality().hash(_roomID),
      const DeepCollectionEquality().hash(userStatus));

  @JsonKey(ignore: true)
  @override
  _$$_ConciergeChatCopyWith<_$_ConciergeChat> get copyWith =>
      __$$_ConciergeChatCopyWithImpl<_$_ConciergeChat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConciergeChatToJson(
      this,
    );
  }
}

abstract class _ConciergeChat extends ConciergeChat {
  const factory _ConciergeChat(
      {final String id,
      final String message,
      final String photoPath,
      @timestamp required final DateTime postedAt,
      final bool readState,
      required final Map<String, dynamic> roomID,
      final bool userStatus}) = _$_ConciergeChat;
  const _ConciergeChat._() : super._();

  factory _ConciergeChat.fromJson(Map<String, dynamic> json) =
      _$_ConciergeChat.fromJson;

  @override
  String get id;
  @override
  String get message;
  @override
  String get photoPath;
  @override
  @timestamp
  DateTime get postedAt;
  @override
  bool get readState;
  @override
  Map<String, dynamic> get roomID;
  @override
  bool get userStatus;
  @override
  @JsonKey(ignore: true)
  _$$_ConciergeChatCopyWith<_$_ConciergeChat> get copyWith =>
      throw _privateConstructorUsedError;
}
