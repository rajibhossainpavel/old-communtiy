// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dating_chat_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DatingChatRoom _$DatingChatRoomFromJson(Map<String, dynamic> json) {
  return _DatingChatRoom.fromJson(json);
}

/// @nodoc
class _$DatingChatRoomTearOff {
  const _$DatingChatRoomTearOff();

  _DatingChatRoom call(
      {String id = '',
      bool initialState = false,
      Map<String, int> members = const <String, int>{},
      List<DatingChatMember> membersData = const <DatingChatMember>[],
      String recentMessage = '',
      @timestamp required DateTime recentPosted}) {
    return _DatingChatRoom(
      id: id,
      initialState: initialState,
      members: members,
      membersData: membersData,
      recentMessage: recentMessage,
      recentPosted: recentPosted,
    );
  }

  DatingChatRoom fromJson(Map<String, Object> json) {
    return DatingChatRoom.fromJson(json);
  }
}

/// @nodoc
const $DatingChatRoom = _$DatingChatRoomTearOff();

/// @nodoc
mixin _$DatingChatRoom {
  String get id => throw _privateConstructorUsedError;
  bool get initialState => throw _privateConstructorUsedError;
  Map<String, int> get members => throw _privateConstructorUsedError;
  List<DatingChatMember> get membersData => throw _privateConstructorUsedError;
  String get recentMessage => throw _privateConstructorUsedError;
  @timestamp
  DateTime get recentPosted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatingChatRoomCopyWith<DatingChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatingChatRoomCopyWith<$Res> {
  factory $DatingChatRoomCopyWith(
          DatingChatRoom value, $Res Function(DatingChatRoom) then) =
      _$DatingChatRoomCopyWithImpl<$Res>;
  $Res call(
      {String id,
      bool initialState,
      Map<String, int> members,
      List<DatingChatMember> membersData,
      String recentMessage,
      @timestamp DateTime recentPosted});
}

/// @nodoc
class _$DatingChatRoomCopyWithImpl<$Res>
    implements $DatingChatRoomCopyWith<$Res> {
  _$DatingChatRoomCopyWithImpl(this._value, this._then);

  final DatingChatRoom _value;
  // ignore: unused_field
  final $Res Function(DatingChatRoom) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? initialState = freezed,
    Object? members = freezed,
    Object? membersData = freezed,
    Object? recentMessage = freezed,
    Object? recentPosted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      initialState: initialState == freezed
          ? _value.initialState
          : initialState // ignore: cast_nullable_to_non_nullable
              as bool,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      membersData: membersData == freezed
          ? _value.membersData
          : membersData // ignore: cast_nullable_to_non_nullable
              as List<DatingChatMember>,
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
abstract class _$DatingChatRoomCopyWith<$Res>
    implements $DatingChatRoomCopyWith<$Res> {
  factory _$DatingChatRoomCopyWith(
          _DatingChatRoom value, $Res Function(_DatingChatRoom) then) =
      __$DatingChatRoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      bool initialState,
      Map<String, int> members,
      List<DatingChatMember> membersData,
      String recentMessage,
      @timestamp DateTime recentPosted});
}

/// @nodoc
class __$DatingChatRoomCopyWithImpl<$Res>
    extends _$DatingChatRoomCopyWithImpl<$Res>
    implements _$DatingChatRoomCopyWith<$Res> {
  __$DatingChatRoomCopyWithImpl(
      _DatingChatRoom _value, $Res Function(_DatingChatRoom) _then)
      : super(_value, (v) => _then(v as _DatingChatRoom));

  @override
  _DatingChatRoom get _value => super._value as _DatingChatRoom;

  @override
  $Res call({
    Object? id = freezed,
    Object? initialState = freezed,
    Object? members = freezed,
    Object? membersData = freezed,
    Object? recentMessage = freezed,
    Object? recentPosted = freezed,
  }) {
    return _then(_DatingChatRoom(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      initialState: initialState == freezed
          ? _value.initialState
          : initialState // ignore: cast_nullable_to_non_nullable
              as bool,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      membersData: membersData == freezed
          ? _value.membersData
          : membersData // ignore: cast_nullable_to_non_nullable
              as List<DatingChatMember>,
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
class _$_DatingChatRoom implements _DatingChatRoom {
  const _$_DatingChatRoom(
      {this.id = '',
      this.initialState = false,
      this.members = const <String, int>{},
      this.membersData = const <DatingChatMember>[],
      this.recentMessage = '',
      @timestamp required this.recentPosted});

  factory _$_DatingChatRoom.fromJson(Map<String, dynamic> json) =>
      _$_$_DatingChatRoomFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String id;
  @JsonKey(defaultValue: false)
  @override
  final bool initialState;
  @JsonKey(defaultValue: const <String, int>{})
  @override
  final Map<String, int> members;
  @JsonKey(defaultValue: const <DatingChatMember>[])
  @override
  final List<DatingChatMember> membersData;
  @JsonKey(defaultValue: '')
  @override
  final String recentMessage;
  @override
  @timestamp
  final DateTime recentPosted;

  @override
  String toString() {
    return 'DatingChatRoom(id: $id, initialState: $initialState, members: $members, membersData: $membersData, recentMessage: $recentMessage, recentPosted: $recentPosted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DatingChatRoom &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(initialState) ^
      const DeepCollectionEquality().hash(members) ^
      const DeepCollectionEquality().hash(membersData) ^
      const DeepCollectionEquality().hash(recentMessage) ^
      const DeepCollectionEquality().hash(recentPosted);

  @JsonKey(ignore: true)
  @override
  _$DatingChatRoomCopyWith<_DatingChatRoom> get copyWith =>
      __$DatingChatRoomCopyWithImpl<_DatingChatRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DatingChatRoomToJson(this);
  }
}

abstract class _DatingChatRoom implements DatingChatRoom {
  const factory _DatingChatRoom(
      {String id,
      bool initialState,
      Map<String, int> members,
      List<DatingChatMember> membersData,
      String recentMessage,
      @timestamp required DateTime recentPosted}) = _$_DatingChatRoom;

  factory _DatingChatRoom.fromJson(Map<String, dynamic> json) =
      _$_DatingChatRoom.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  bool get initialState => throw _privateConstructorUsedError;
  @override
  Map<String, int> get members => throw _privateConstructorUsedError;
  @override
  List<DatingChatMember> get membersData => throw _privateConstructorUsedError;
  @override
  String get recentMessage => throw _privateConstructorUsedError;
  @override
  @timestamp
  DateTime get recentPosted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DatingChatRoomCopyWith<_DatingChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
