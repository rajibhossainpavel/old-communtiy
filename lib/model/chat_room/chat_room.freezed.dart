// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatRoom _$ChatRoomFromJson(Map<String, dynamic> json) {
  return _ChatRoom.fromJson(json);
}

/// @nodoc
class _$ChatRoomTearOff {
  const _$ChatRoomTearOff();

  _ChatRoom call(
      {bool initialState = false,
      required Map<String, dynamic> members,
      List<ChatMember> membersData = const <ChatMember>[],
      String recentMessage = '',
      @timestamp required DateTime recentPosted}) {
    return _ChatRoom(
      initialState: initialState,
      members: members,
      membersData: membersData,
      recentMessage: recentMessage,
      recentPosted: recentPosted,
    );
  }

  ChatRoom fromJson(Map<String, Object> json) {
    return ChatRoom.fromJson(json);
  }
}

/// @nodoc
const $ChatRoom = _$ChatRoomTearOff();

/// @nodoc
mixin _$ChatRoom {
  bool get initialState => throw _privateConstructorUsedError;
  Map<String, dynamic> get members => throw _privateConstructorUsedError;
  List<ChatMember> get membersData => throw _privateConstructorUsedError;
  String get recentMessage => throw _privateConstructorUsedError;
  @timestamp
  DateTime get recentPosted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRoomCopyWith<ChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomCopyWith<$Res> {
  factory $ChatRoomCopyWith(ChatRoom value, $Res Function(ChatRoom) then) =
      _$ChatRoomCopyWithImpl<$Res>;
  $Res call(
      {bool initialState,
      Map<String, dynamic> members,
      List<ChatMember> membersData,
      String recentMessage,
      @timestamp DateTime recentPosted});
}

/// @nodoc
class _$ChatRoomCopyWithImpl<$Res> implements $ChatRoomCopyWith<$Res> {
  _$ChatRoomCopyWithImpl(this._value, this._then);

  final ChatRoom _value;
  // ignore: unused_field
  final $Res Function(ChatRoom) _then;

  @override
  $Res call({
    Object? initialState = freezed,
    Object? members = freezed,
    Object? membersData = freezed,
    Object? recentMessage = freezed,
    Object? recentPosted = freezed,
  }) {
    return _then(_value.copyWith(
      initialState: initialState == freezed
          ? _value.initialState
          : initialState // ignore: cast_nullable_to_non_nullable
              as bool,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      membersData: membersData == freezed
          ? _value.membersData
          : membersData // ignore: cast_nullable_to_non_nullable
              as List<ChatMember>,
      recentMessage: recentMessage == freezed
          ? _value.recentMessage
          : recentMessage // ignore: cast_nullable_to_non_nullable
              as String,
      recentPosted: recentPosted == freezed
          ? _value.recentPosted
          : recentPosted // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ChatRoomCopyWith<$Res> implements $ChatRoomCopyWith<$Res> {
  factory _$ChatRoomCopyWith(_ChatRoom value, $Res Function(_ChatRoom) then) =
      __$ChatRoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool initialState,
      Map<String, dynamic> members,
      List<ChatMember> membersData,
      String recentMessage,
      @timestamp DateTime recentPosted});
}

/// @nodoc
class __$ChatRoomCopyWithImpl<$Res> extends _$ChatRoomCopyWithImpl<$Res>
    implements _$ChatRoomCopyWith<$Res> {
  __$ChatRoomCopyWithImpl(_ChatRoom _value, $Res Function(_ChatRoom) _then)
      : super(_value, (v) => _then(v as _ChatRoom));

  @override
  _ChatRoom get _value => super._value as _ChatRoom;

  @override
  $Res call({
    Object? initialState = freezed,
    Object? members = freezed,
    Object? membersData = freezed,
    Object? recentMessage = freezed,
    Object? recentPosted = freezed,
  }) {
    return _then(_ChatRoom(
      initialState: initialState == freezed
          ? _value.initialState
          : initialState // ignore: cast_nullable_to_non_nullable
              as bool,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      membersData: membersData == freezed
          ? _value.membersData
          : membersData // ignore: cast_nullable_to_non_nullable
              as List<ChatMember>,
      recentMessage: recentMessage == freezed
          ? _value.recentMessage
          : recentMessage // ignore: cast_nullable_to_non_nullable
              as String,
      recentPosted: recentPosted == freezed
          ? _value.recentPosted
          : recentPosted // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatRoom extends _ChatRoom {
  const _$_ChatRoom(
      {this.initialState = false,
      required this.members,
      this.membersData = const <ChatMember>[],
      this.recentMessage = '',
      @timestamp required this.recentPosted})
      : super._();

  factory _$_ChatRoom.fromJson(Map<String, dynamic> json) =>
      _$_$_ChatRoomFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool initialState;
  @override
  final Map<String, dynamic> members;
  @JsonKey(defaultValue: const <ChatMember>[])
  @override
  final List<ChatMember> membersData;
  @JsonKey(defaultValue: '')
  @override
  final String recentMessage;
  @override
  @timestamp
  final DateTime recentPosted;

  @override
  String toString() {
    return 'ChatRoom(initialState: $initialState, members: $members, membersData: $membersData, recentMessage: $recentMessage, recentPosted: $recentPosted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatRoom &&
            (identical(other.initialState, initialState) ||
                const DeepCollectionEquality()
                    .equals(other.initialState, initialState)) &&
            (identical(other.members, members) ||
                const DeepCollectionEquality()
                    .equals(other.members, members)) &&
            (identical(other.membersData, membersData) ||
                const DeepCollectionEquality()
                    .equals(other.membersData, membersData)) &&
            (identical(other.recentMessage, recentMessage) ||
                const DeepCollectionEquality()
                    .equals(other.recentMessage, recentMessage)) &&
            (identical(other.recentPosted, recentPosted) ||
                const DeepCollectionEquality()
                    .equals(other.recentPosted, recentPosted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialState) ^
      const DeepCollectionEquality().hash(members) ^
      const DeepCollectionEquality().hash(membersData) ^
      const DeepCollectionEquality().hash(recentMessage) ^
      const DeepCollectionEquality().hash(recentPosted);

  @JsonKey(ignore: true)
  @override
  _$ChatRoomCopyWith<_ChatRoom> get copyWith =>
      __$ChatRoomCopyWithImpl<_ChatRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChatRoomToJson(this);
  }
}

abstract class _ChatRoom extends ChatRoom {
  const factory _ChatRoom(
      {bool initialState,
      required Map<String, dynamic> members,
      List<ChatMember> membersData,
      String recentMessage,
      @timestamp required DateTime recentPosted}) = _$_ChatRoom;
  const _ChatRoom._() : super._();

  factory _ChatRoom.fromJson(Map<String, dynamic> json) = _$_ChatRoom.fromJson;

  @override
  bool get initialState => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get members => throw _privateConstructorUsedError;
  @override
  List<ChatMember> get membersData => throw _privateConstructorUsedError;
  @override
  String get recentMessage => throw _privateConstructorUsedError;
  @override
  @timestamp
  DateTime get recentPosted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatRoomCopyWith<_ChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
