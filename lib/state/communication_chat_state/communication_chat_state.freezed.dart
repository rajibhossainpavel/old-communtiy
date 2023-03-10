// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'communication_chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommunicationChatStateTearOff {
  const _$CommunicationChatStateTearOff();

  _CommunicationChatState call(
      {User? otherUser,
      User? ownUser,
      DatingChatRoom? room,
      int currentMaximumTimeStamp = 0,
      int currentMinimumTimestamp = 0,
      bool isLoading = false,
      bool isLastPage = false,
      List<CommunicationChat> chats = const <CommunicationChat>[]}) {
    return _CommunicationChatState(
      otherUser: otherUser,
      ownUser: ownUser,
      room: room,
      currentMaximumTimeStamp: currentMaximumTimeStamp,
      currentMinimumTimestamp: currentMinimumTimestamp,
      isLoading: isLoading,
      isLastPage: isLastPage,
      chats: chats,
    );
  }
}

/// @nodoc
const $CommunicationChatState = _$CommunicationChatStateTearOff();

/// @nodoc
mixin _$CommunicationChatState {
  User? get otherUser => throw _privateConstructorUsedError;
  User? get ownUser => throw _privateConstructorUsedError;
  DatingChatRoom? get room => throw _privateConstructorUsedError;
  int get currentMaximumTimeStamp => throw _privateConstructorUsedError;
  int get currentMinimumTimestamp => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  List<CommunicationChat> get chats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommunicationChatStateCopyWith<CommunicationChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunicationChatStateCopyWith<$Res> {
  factory $CommunicationChatStateCopyWith(CommunicationChatState value,
          $Res Function(CommunicationChatState) then) =
      _$CommunicationChatStateCopyWithImpl<$Res>;
  $Res call(
      {User? otherUser,
      User? ownUser,
      DatingChatRoom? room,
      int currentMaximumTimeStamp,
      int currentMinimumTimestamp,
      bool isLoading,
      bool isLastPage,
      List<CommunicationChat> chats});

  $UserCopyWith<$Res>? get otherUser;
  $UserCopyWith<$Res>? get ownUser;
  $DatingChatRoomCopyWith<$Res>? get room;
}

/// @nodoc
class _$CommunicationChatStateCopyWithImpl<$Res>
    implements $CommunicationChatStateCopyWith<$Res> {
  _$CommunicationChatStateCopyWithImpl(this._value, this._then);

  final CommunicationChatState _value;
  // ignore: unused_field
  final $Res Function(CommunicationChatState) _then;

  @override
  $Res call({
    Object? otherUser = freezed,
    Object? ownUser = freezed,
    Object? room = freezed,
    Object? currentMaximumTimeStamp = freezed,
    Object? currentMinimumTimestamp = freezed,
    Object? isLoading = freezed,
    Object? isLastPage = freezed,
    Object? chats = freezed,
  }) {
    return _then(_value.copyWith(
      otherUser: otherUser == freezed
          ? _value.otherUser
          : otherUser // ignore: cast_nullable_to_non_nullable
              as User?,
      ownUser: ownUser == freezed
          ? _value.ownUser
          : ownUser // ignore: cast_nullable_to_non_nullable
              as User?,
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as DatingChatRoom?,
      currentMaximumTimeStamp: currentMaximumTimeStamp == freezed
          ? _value.currentMaximumTimeStamp
          : currentMaximumTimeStamp // ignore: cast_nullable_to_non_nullable
              as int,
      currentMinimumTimestamp: currentMinimumTimestamp == freezed
          ? _value.currentMinimumTimestamp
          : currentMinimumTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      chats: chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<CommunicationChat>,
    ));
  }

  @override
  $UserCopyWith<$Res>? get otherUser {
    if (_value.otherUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.otherUser!, (value) {
      return _then(_value.copyWith(otherUser: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get ownUser {
    if (_value.ownUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.ownUser!, (value) {
      return _then(_value.copyWith(ownUser: value));
    });
  }

  @override
  $DatingChatRoomCopyWith<$Res>? get room {
    if (_value.room == null) {
      return null;
    }

    return $DatingChatRoomCopyWith<$Res>(_value.room!, (value) {
      return _then(_value.copyWith(room: value));
    });
  }
}

/// @nodoc
abstract class _$CommunicationChatStateCopyWith<$Res>
    implements $CommunicationChatStateCopyWith<$Res> {
  factory _$CommunicationChatStateCopyWith(_CommunicationChatState value,
          $Res Function(_CommunicationChatState) then) =
      __$CommunicationChatStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User? otherUser,
      User? ownUser,
      DatingChatRoom? room,
      int currentMaximumTimeStamp,
      int currentMinimumTimestamp,
      bool isLoading,
      bool isLastPage,
      List<CommunicationChat> chats});

  @override
  $UserCopyWith<$Res>? get otherUser;
  @override
  $UserCopyWith<$Res>? get ownUser;
  @override
  $DatingChatRoomCopyWith<$Res>? get room;
}

/// @nodoc
class __$CommunicationChatStateCopyWithImpl<$Res>
    extends _$CommunicationChatStateCopyWithImpl<$Res>
    implements _$CommunicationChatStateCopyWith<$Res> {
  __$CommunicationChatStateCopyWithImpl(_CommunicationChatState _value,
      $Res Function(_CommunicationChatState) _then)
      : super(_value, (v) => _then(v as _CommunicationChatState));

  @override
  _CommunicationChatState get _value => super._value as _CommunicationChatState;

  @override
  $Res call({
    Object? otherUser = freezed,
    Object? ownUser = freezed,
    Object? room = freezed,
    Object? currentMaximumTimeStamp = freezed,
    Object? currentMinimumTimestamp = freezed,
    Object? isLoading = freezed,
    Object? isLastPage = freezed,
    Object? chats = freezed,
  }) {
    return _then(_CommunicationChatState(
      otherUser: otherUser == freezed
          ? _value.otherUser
          : otherUser // ignore: cast_nullable_to_non_nullable
              as User?,
      ownUser: ownUser == freezed
          ? _value.ownUser
          : ownUser // ignore: cast_nullable_to_non_nullable
              as User?,
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as DatingChatRoom?,
      currentMaximumTimeStamp: currentMaximumTimeStamp == freezed
          ? _value.currentMaximumTimeStamp
          : currentMaximumTimeStamp // ignore: cast_nullable_to_non_nullable
              as int,
      currentMinimumTimestamp: currentMinimumTimestamp == freezed
          ? _value.currentMinimumTimestamp
          : currentMinimumTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      chats: chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<CommunicationChat>,
    ));
  }
}

/// @nodoc

class _$_CommunicationChatState extends _CommunicationChatState {
  const _$_CommunicationChatState(
      {this.otherUser,
      this.ownUser,
      this.room,
      this.currentMaximumTimeStamp = 0,
      this.currentMinimumTimestamp = 0,
      this.isLoading = false,
      this.isLastPage = false,
      this.chats = const <CommunicationChat>[]})
      : super._();

  @override
  final User? otherUser;
  @override
  final User? ownUser;
  @override
  final DatingChatRoom? room;
  @JsonKey(defaultValue: 0)
  @override
  final int currentMaximumTimeStamp;
  @JsonKey(defaultValue: 0)
  @override
  final int currentMinimumTimestamp;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isLastPage;
  @JsonKey(defaultValue: const <CommunicationChat>[])
  @override
  final List<CommunicationChat> chats;

  @override
  String toString() {
    return 'CommunicationChatState(otherUser: $otherUser, ownUser: $ownUser, room: $room, currentMaximumTimeStamp: $currentMaximumTimeStamp, currentMinimumTimestamp: $currentMinimumTimestamp, isLoading: $isLoading, isLastPage: $isLastPage, chats: $chats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommunicationChatState &&
            (identical(other.otherUser, otherUser) ||
                const DeepCollectionEquality()
                    .equals(other.otherUser, otherUser)) &&
            (identical(other.ownUser, ownUser) ||
                const DeepCollectionEquality()
                    .equals(other.ownUser, ownUser)) &&
            (identical(other.room, room) ||
                const DeepCollectionEquality().equals(other.room, room)) &&
            (identical(
                    other.currentMaximumTimeStamp, currentMaximumTimeStamp) ||
                const DeepCollectionEquality().equals(
                    other.currentMaximumTimeStamp, currentMaximumTimeStamp)) &&
            (identical(
                    other.currentMinimumTimestamp, currentMinimumTimestamp) ||
                const DeepCollectionEquality().equals(
                    other.currentMinimumTimestamp, currentMinimumTimestamp)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isLastPage, isLastPage) ||
                const DeepCollectionEquality()
                    .equals(other.isLastPage, isLastPage)) &&
            (identical(other.chats, chats) ||
                const DeepCollectionEquality().equals(other.chats, chats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(otherUser) ^
      const DeepCollectionEquality().hash(ownUser) ^
      const DeepCollectionEquality().hash(room) ^
      const DeepCollectionEquality().hash(currentMaximumTimeStamp) ^
      const DeepCollectionEquality().hash(currentMinimumTimestamp) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isLastPage) ^
      const DeepCollectionEquality().hash(chats);

  @JsonKey(ignore: true)
  @override
  _$CommunicationChatStateCopyWith<_CommunicationChatState> get copyWith =>
      __$CommunicationChatStateCopyWithImpl<_CommunicationChatState>(
          this, _$identity);
}

abstract class _CommunicationChatState extends CommunicationChatState {
  const factory _CommunicationChatState(
      {User? otherUser,
      User? ownUser,
      DatingChatRoom? room,
      int currentMaximumTimeStamp,
      int currentMinimumTimestamp,
      bool isLoading,
      bool isLastPage,
      List<CommunicationChat> chats}) = _$_CommunicationChatState;
  const _CommunicationChatState._() : super._();

  @override
  User? get otherUser => throw _privateConstructorUsedError;
  @override
  User? get ownUser => throw _privateConstructorUsedError;
  @override
  DatingChatRoom? get room => throw _privateConstructorUsedError;
  @override
  int get currentMaximumTimeStamp => throw _privateConstructorUsedError;
  @override
  int get currentMinimumTimestamp => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isLastPage => throw _privateConstructorUsedError;
  @override
  List<CommunicationChat> get chats => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommunicationChatStateCopyWith<_CommunicationChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
