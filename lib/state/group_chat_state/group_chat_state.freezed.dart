// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupChatStateTearOff {
  const _$GroupChatStateTearOff();

  _GroupChatState call(
      {Map<String, GroupUser> uuidUsersMapper = const <String, GroupUser>{},
      GroupDetail? group,
      List<GroupChat> chats = const <GroupChat>[],
      int currentMinimumTimestamp = 0,
      int currentMaximumTimeStamp = 0,
      bool isLoading = false,
      bool isLastPage = false,
      bool isShowUnread = false,
      GroupChat? lastLatestChat}) {
    return _GroupChatState(
      uuidUsersMapper: uuidUsersMapper,
      group: group,
      chats: chats,
      currentMinimumTimestamp: currentMinimumTimestamp,
      currentMaximumTimeStamp: currentMaximumTimeStamp,
      isLoading: isLoading,
      isLastPage: isLastPage,
      isShowUnread: isShowUnread,
      lastLatestChat: lastLatestChat,
    );
  }
}

/// @nodoc
const $GroupChatState = _$GroupChatStateTearOff();

/// @nodoc
mixin _$GroupChatState {
  Map<String, GroupUser> get uuidUsersMapper =>
      throw _privateConstructorUsedError;
  GroupDetail? get group => throw _privateConstructorUsedError;
  List<GroupChat> get chats => throw _privateConstructorUsedError;
  int get currentMinimumTimestamp => throw _privateConstructorUsedError;
  int get currentMaximumTimeStamp => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  bool get isShowUnread => throw _privateConstructorUsedError;
  GroupChat? get lastLatestChat => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupChatStateCopyWith<GroupChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupChatStateCopyWith<$Res> {
  factory $GroupChatStateCopyWith(
          GroupChatState value, $Res Function(GroupChatState) then) =
      _$GroupChatStateCopyWithImpl<$Res>;
  $Res call(
      {Map<String, GroupUser> uuidUsersMapper,
      GroupDetail? group,
      List<GroupChat> chats,
      int currentMinimumTimestamp,
      int currentMaximumTimeStamp,
      bool isLoading,
      bool isLastPage,
      bool isShowUnread,
      GroupChat? lastLatestChat});

  $GroupDetailCopyWith<$Res>? get group;
  $GroupChatCopyWith<$Res>? get lastLatestChat;
}

/// @nodoc
class _$GroupChatStateCopyWithImpl<$Res>
    implements $GroupChatStateCopyWith<$Res> {
  _$GroupChatStateCopyWithImpl(this._value, this._then);

  final GroupChatState _value;
  // ignore: unused_field
  final $Res Function(GroupChatState) _then;

  @override
  $Res call({
    Object? uuidUsersMapper = freezed,
    Object? group = freezed,
    Object? chats = freezed,
    Object? currentMinimumTimestamp = freezed,
    Object? currentMaximumTimeStamp = freezed,
    Object? isLoading = freezed,
    Object? isLastPage = freezed,
    Object? isShowUnread = freezed,
    Object? lastLatestChat = freezed,
  }) {
    return _then(_value.copyWith(
      uuidUsersMapper: uuidUsersMapper == freezed
          ? _value.uuidUsersMapper
          : uuidUsersMapper // ignore: cast_nullable_to_non_nullable
              as Map<String, GroupUser>,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupDetail?,
      chats: chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<GroupChat>,
      currentMinimumTimestamp: currentMinimumTimestamp == freezed
          ? _value.currentMinimumTimestamp
          : currentMinimumTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      currentMaximumTimeStamp: currentMaximumTimeStamp == freezed
          ? _value.currentMaximumTimeStamp
          : currentMaximumTimeStamp // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowUnread: isShowUnread == freezed
          ? _value.isShowUnread
          : isShowUnread // ignore: cast_nullable_to_non_nullable
              as bool,
      lastLatestChat: lastLatestChat == freezed
          ? _value.lastLatestChat
          : lastLatestChat // ignore: cast_nullable_to_non_nullable
              as GroupChat?,
    ));
  }

  @override
  $GroupDetailCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $GroupDetailCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value));
    });
  }

  @override
  $GroupChatCopyWith<$Res>? get lastLatestChat {
    if (_value.lastLatestChat == null) {
      return null;
    }

    return $GroupChatCopyWith<$Res>(_value.lastLatestChat!, (value) {
      return _then(_value.copyWith(lastLatestChat: value));
    });
  }
}

/// @nodoc
abstract class _$GroupChatStateCopyWith<$Res>
    implements $GroupChatStateCopyWith<$Res> {
  factory _$GroupChatStateCopyWith(
          _GroupChatState value, $Res Function(_GroupChatState) then) =
      __$GroupChatStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, GroupUser> uuidUsersMapper,
      GroupDetail? group,
      List<GroupChat> chats,
      int currentMinimumTimestamp,
      int currentMaximumTimeStamp,
      bool isLoading,
      bool isLastPage,
      bool isShowUnread,
      GroupChat? lastLatestChat});

  @override
  $GroupDetailCopyWith<$Res>? get group;
  @override
  $GroupChatCopyWith<$Res>? get lastLatestChat;
}

/// @nodoc
class __$GroupChatStateCopyWithImpl<$Res>
    extends _$GroupChatStateCopyWithImpl<$Res>
    implements _$GroupChatStateCopyWith<$Res> {
  __$GroupChatStateCopyWithImpl(
      _GroupChatState _value, $Res Function(_GroupChatState) _then)
      : super(_value, (v) => _then(v as _GroupChatState));

  @override
  _GroupChatState get _value => super._value as _GroupChatState;

  @override
  $Res call({
    Object? uuidUsersMapper = freezed,
    Object? group = freezed,
    Object? chats = freezed,
    Object? currentMinimumTimestamp = freezed,
    Object? currentMaximumTimeStamp = freezed,
    Object? isLoading = freezed,
    Object? isLastPage = freezed,
    Object? isShowUnread = freezed,
    Object? lastLatestChat = freezed,
  }) {
    return _then(_GroupChatState(
      uuidUsersMapper: uuidUsersMapper == freezed
          ? _value.uuidUsersMapper
          : uuidUsersMapper // ignore: cast_nullable_to_non_nullable
              as Map<String, GroupUser>,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupDetail?,
      chats: chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<GroupChat>,
      currentMinimumTimestamp: currentMinimumTimestamp == freezed
          ? _value.currentMinimumTimestamp
          : currentMinimumTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      currentMaximumTimeStamp: currentMaximumTimeStamp == freezed
          ? _value.currentMaximumTimeStamp
          : currentMaximumTimeStamp // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowUnread: isShowUnread == freezed
          ? _value.isShowUnread
          : isShowUnread // ignore: cast_nullable_to_non_nullable
              as bool,
      lastLatestChat: lastLatestChat == freezed
          ? _value.lastLatestChat
          : lastLatestChat // ignore: cast_nullable_to_non_nullable
              as GroupChat?,
    ));
  }
}

/// @nodoc

class _$_GroupChatState extends _GroupChatState {
  const _$_GroupChatState(
      {this.uuidUsersMapper = const <String, GroupUser>{},
      this.group,
      this.chats = const <GroupChat>[],
      this.currentMinimumTimestamp = 0,
      this.currentMaximumTimeStamp = 0,
      this.isLoading = false,
      this.isLastPage = false,
      this.isShowUnread = false,
      this.lastLatestChat})
      : super._();

  @JsonKey(defaultValue: const <String, GroupUser>{})
  @override
  final Map<String, GroupUser> uuidUsersMapper;
  @override
  final GroupDetail? group;
  @JsonKey(defaultValue: const <GroupChat>[])
  @override
  final List<GroupChat> chats;
  @JsonKey(defaultValue: 0)
  @override
  final int currentMinimumTimestamp;
  @JsonKey(defaultValue: 0)
  @override
  final int currentMaximumTimeStamp;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isLastPage;
  @JsonKey(defaultValue: false)
  @override
  final bool isShowUnread;
  @override
  final GroupChat? lastLatestChat;

  @override
  String toString() {
    return 'GroupChatState(uuidUsersMapper: $uuidUsersMapper, group: $group, chats: $chats, currentMinimumTimestamp: $currentMinimumTimestamp, currentMaximumTimeStamp: $currentMaximumTimeStamp, isLoading: $isLoading, isLastPage: $isLastPage, isShowUnread: $isShowUnread, lastLatestChat: $lastLatestChat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupChatState &&
            (identical(other.uuidUsersMapper, uuidUsersMapper) ||
                const DeepCollectionEquality()
                    .equals(other.uuidUsersMapper, uuidUsersMapper)) &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)) &&
            (identical(other.chats, chats) ||
                const DeepCollectionEquality().equals(other.chats, chats)) &&
            (identical(
                    other.currentMinimumTimestamp, currentMinimumTimestamp) ||
                const DeepCollectionEquality().equals(
                    other.currentMinimumTimestamp, currentMinimumTimestamp)) &&
            (identical(
                    other.currentMaximumTimeStamp, currentMaximumTimeStamp) ||
                const DeepCollectionEquality().equals(
                    other.currentMaximumTimeStamp, currentMaximumTimeStamp)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isLastPage, isLastPage) ||
                const DeepCollectionEquality()
                    .equals(other.isLastPage, isLastPage)) &&
            (identical(other.isShowUnread, isShowUnread) ||
                const DeepCollectionEquality()
                    .equals(other.isShowUnread, isShowUnread)) &&
            (identical(other.lastLatestChat, lastLatestChat) ||
                const DeepCollectionEquality()
                    .equals(other.lastLatestChat, lastLatestChat)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuidUsersMapper) ^
      const DeepCollectionEquality().hash(group) ^
      const DeepCollectionEquality().hash(chats) ^
      const DeepCollectionEquality().hash(currentMinimumTimestamp) ^
      const DeepCollectionEquality().hash(currentMaximumTimeStamp) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isLastPage) ^
      const DeepCollectionEquality().hash(isShowUnread) ^
      const DeepCollectionEquality().hash(lastLatestChat);

  @JsonKey(ignore: true)
  @override
  _$GroupChatStateCopyWith<_GroupChatState> get copyWith =>
      __$GroupChatStateCopyWithImpl<_GroupChatState>(this, _$identity);
}

abstract class _GroupChatState extends GroupChatState {
  const factory _GroupChatState(
      {Map<String, GroupUser> uuidUsersMapper,
      GroupDetail? group,
      List<GroupChat> chats,
      int currentMinimumTimestamp,
      int currentMaximumTimeStamp,
      bool isLoading,
      bool isLastPage,
      bool isShowUnread,
      GroupChat? lastLatestChat}) = _$_GroupChatState;
  const _GroupChatState._() : super._();

  @override
  Map<String, GroupUser> get uuidUsersMapper =>
      throw _privateConstructorUsedError;
  @override
  GroupDetail? get group => throw _privateConstructorUsedError;
  @override
  List<GroupChat> get chats => throw _privateConstructorUsedError;
  @override
  int get currentMinimumTimestamp => throw _privateConstructorUsedError;
  @override
  int get currentMaximumTimeStamp => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isLastPage => throw _privateConstructorUsedError;
  @override
  bool get isShowUnread => throw _privateConstructorUsedError;
  @override
  GroupChat? get lastLatestChat => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupChatStateCopyWith<_GroupChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
