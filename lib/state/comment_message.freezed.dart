// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comment_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentMessageTearOff {
  const _$CommentMessageTearOff();

  _CommentMessage call(
      {String commentUserUuid = '',
      String diaryID = '',
      String photoPath = '',
      DateTime? postedAt,
      String message = '',
      User? user,
      bool isOwn = false}) {
    return _CommentMessage(
      commentUserUuid: commentUserUuid,
      diaryID: diaryID,
      photoPath: photoPath,
      postedAt: postedAt,
      message: message,
      user: user,
      isOwn: isOwn,
    );
  }
}

/// @nodoc
const $CommentMessage = _$CommentMessageTearOff();

/// @nodoc
mixin _$CommentMessage {
  String get commentUserUuid => throw _privateConstructorUsedError;
  String get diaryID => throw _privateConstructorUsedError;
  String get photoPath => throw _privateConstructorUsedError;
  DateTime? get postedAt => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  bool get isOwn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentMessageCopyWith<CommentMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentMessageCopyWith<$Res> {
  factory $CommentMessageCopyWith(
          CommentMessage value, $Res Function(CommentMessage) then) =
      _$CommentMessageCopyWithImpl<$Res>;
  $Res call(
      {String commentUserUuid,
      String diaryID,
      String photoPath,
      DateTime? postedAt,
      String message,
      User? user,
      bool isOwn});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$CommentMessageCopyWithImpl<$Res>
    implements $CommentMessageCopyWith<$Res> {
  _$CommentMessageCopyWithImpl(this._value, this._then);

  final CommentMessage _value;
  // ignore: unused_field
  final $Res Function(CommentMessage) _then;

  @override
  $Res call({
    Object? commentUserUuid = freezed,
    Object? diaryID = freezed,
    Object? photoPath = freezed,
    Object? postedAt = freezed,
    Object? message = freezed,
    Object? user = freezed,
    Object? isOwn = freezed,
  }) {
    return _then(_value.copyWith(
      commentUserUuid: commentUserUuid == freezed
          ? _value.commentUserUuid
          : commentUserUuid // ignore: cast_nullable_to_non_nullable
              as String,
      diaryID: diaryID == freezed
          ? _value.diaryID
          : diaryID // ignore: cast_nullable_to_non_nullable
              as String,
      photoPath: photoPath == freezed
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
      postedAt: postedAt == freezed
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isOwn: isOwn == freezed
          ? _value.isOwn
          : isOwn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$CommentMessageCopyWith<$Res>
    implements $CommentMessageCopyWith<$Res> {
  factory _$CommentMessageCopyWith(
          _CommentMessage value, $Res Function(_CommentMessage) then) =
      __$CommentMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String commentUserUuid,
      String diaryID,
      String photoPath,
      DateTime? postedAt,
      String message,
      User? user,
      bool isOwn});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$CommentMessageCopyWithImpl<$Res>
    extends _$CommentMessageCopyWithImpl<$Res>
    implements _$CommentMessageCopyWith<$Res> {
  __$CommentMessageCopyWithImpl(
      _CommentMessage _value, $Res Function(_CommentMessage) _then)
      : super(_value, (v) => _then(v as _CommentMessage));

  @override
  _CommentMessage get _value => super._value as _CommentMessage;

  @override
  $Res call({
    Object? commentUserUuid = freezed,
    Object? diaryID = freezed,
    Object? photoPath = freezed,
    Object? postedAt = freezed,
    Object? message = freezed,
    Object? user = freezed,
    Object? isOwn = freezed,
  }) {
    return _then(_CommentMessage(
      commentUserUuid: commentUserUuid == freezed
          ? _value.commentUserUuid
          : commentUserUuid // ignore: cast_nullable_to_non_nullable
              as String,
      diaryID: diaryID == freezed
          ? _value.diaryID
          : diaryID // ignore: cast_nullable_to_non_nullable
              as String,
      photoPath: photoPath == freezed
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
      postedAt: postedAt == freezed
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isOwn: isOwn == freezed
          ? _value.isOwn
          : isOwn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CommentMessage extends _CommentMessage {
  const _$_CommentMessage(
      {this.commentUserUuid = '',
      this.diaryID = '',
      this.photoPath = '',
      this.postedAt,
      this.message = '',
      this.user,
      this.isOwn = false})
      : super._();

  @JsonKey(defaultValue: '')
  @override
  final String commentUserUuid;
  @JsonKey(defaultValue: '')
  @override
  final String diaryID;
  @JsonKey(defaultValue: '')
  @override
  final String photoPath;
  @override
  final DateTime? postedAt;
  @JsonKey(defaultValue: '')
  @override
  final String message;
  @override
  final User? user;
  @JsonKey(defaultValue: false)
  @override
  final bool isOwn;

  @override
  String toString() {
    return 'CommentMessage(commentUserUuid: $commentUserUuid, diaryID: $diaryID, photoPath: $photoPath, postedAt: $postedAt, message: $message, user: $user, isOwn: $isOwn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentMessage &&
            (identical(other.commentUserUuid, commentUserUuid) ||
                const DeepCollectionEquality()
                    .equals(other.commentUserUuid, commentUserUuid)) &&
            (identical(other.diaryID, diaryID) ||
                const DeepCollectionEquality()
                    .equals(other.diaryID, diaryID)) &&
            (identical(other.photoPath, photoPath) ||
                const DeepCollectionEquality()
                    .equals(other.photoPath, photoPath)) &&
            (identical(other.postedAt, postedAt) ||
                const DeepCollectionEquality()
                    .equals(other.postedAt, postedAt)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.isOwn, isOwn) ||
                const DeepCollectionEquality().equals(other.isOwn, isOwn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(commentUserUuid) ^
      const DeepCollectionEquality().hash(diaryID) ^
      const DeepCollectionEquality().hash(photoPath) ^
      const DeepCollectionEquality().hash(postedAt) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(isOwn);

  @JsonKey(ignore: true)
  @override
  _$CommentMessageCopyWith<_CommentMessage> get copyWith =>
      __$CommentMessageCopyWithImpl<_CommentMessage>(this, _$identity);
}

abstract class _CommentMessage extends CommentMessage {
  const factory _CommentMessage(
      {String commentUserUuid,
      String diaryID,
      String photoPath,
      DateTime? postedAt,
      String message,
      User? user,
      bool isOwn}) = _$_CommentMessage;
  const _CommentMessage._() : super._();

  @override
  String get commentUserUuid => throw _privateConstructorUsedError;
  @override
  String get diaryID => throw _privateConstructorUsedError;
  @override
  String get photoPath => throw _privateConstructorUsedError;
  @override
  DateTime? get postedAt => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  bool get isOwn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommentMessageCopyWith<_CommentMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
