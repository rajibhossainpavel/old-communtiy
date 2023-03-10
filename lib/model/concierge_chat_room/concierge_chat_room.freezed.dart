// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'concierge_chat_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConciergeChatRoom _$ConciergeChatRoomFromJson(Map<String, dynamic> json) {
  return _ConciergeChatRoom.fromJson(json);
}

/// @nodoc
class _$ConciergeChatRoomTearOff {
  const _$ConciergeChatRoomTearOff();

  _ConciergeChatRoom call(
      {String recentMessage = '',
      @timestamp required DateTime recentPosted,
      bool initialState = false,
      ConciergeData? expertData,
      ConciergeUserData? userData,
      Map<String, int> members = const <String, int>{}}) {
    return _ConciergeChatRoom(
      recentMessage: recentMessage,
      recentPosted: recentPosted,
      initialState: initialState,
      expertData: expertData,
      userData: userData,
      members: members,
    );
  }

  ConciergeChatRoom fromJson(Map<String, Object> json) {
    return ConciergeChatRoom.fromJson(json);
  }
}

/// @nodoc
const $ConciergeChatRoom = _$ConciergeChatRoomTearOff();

/// @nodoc
mixin _$ConciergeChatRoom {
  String get recentMessage => throw _privateConstructorUsedError;
  @timestamp
  DateTime get recentPosted => throw _privateConstructorUsedError;
  bool get initialState => throw _privateConstructorUsedError;
  ConciergeData? get expertData => throw _privateConstructorUsedError;
  ConciergeUserData? get userData => throw _privateConstructorUsedError;
  Map<String, int> get members => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConciergeChatRoomCopyWith<ConciergeChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConciergeChatRoomCopyWith<$Res> {
  factory $ConciergeChatRoomCopyWith(
          ConciergeChatRoom value, $Res Function(ConciergeChatRoom) then) =
      _$ConciergeChatRoomCopyWithImpl<$Res>;
  $Res call(
      {String recentMessage,
      @timestamp DateTime recentPosted,
      bool initialState,
      ConciergeData? expertData,
      ConciergeUserData? userData,
      Map<String, int> members});

  $ConciergeDataCopyWith<$Res>? get expertData;
  $ConciergeUserDataCopyWith<$Res>? get userData;
}

/// @nodoc
class _$ConciergeChatRoomCopyWithImpl<$Res>
    implements $ConciergeChatRoomCopyWith<$Res> {
  _$ConciergeChatRoomCopyWithImpl(this._value, this._then);

  final ConciergeChatRoom _value;
  // ignore: unused_field
  final $Res Function(ConciergeChatRoom) _then;

  @override
  $Res call({
    Object? recentMessage = freezed,
    Object? recentPosted = freezed,
    Object? initialState = freezed,
    Object? expertData = freezed,
    Object? userData = freezed,
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      recentMessage: recentMessage == freezed
          ? _value.recentMessage
          : recentMessage // ignore: cast_nullable_to_non_nullable
              as String,
      recentPosted: recentPosted == freezed
          ? _value.recentPosted
          : recentPosted // ignore: cast_nullable_to_non_nullable
              as DateTime,
      initialState: initialState == freezed
          ? _value.initialState
          : initialState // ignore: cast_nullable_to_non_nullable
              as bool,
      expertData: expertData == freezed
          ? _value.expertData
          : expertData // ignore: cast_nullable_to_non_nullable
              as ConciergeData?,
      userData: userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as ConciergeUserData?,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }

  @override
  $ConciergeDataCopyWith<$Res>? get expertData {
    if (_value.expertData == null) {
      return null;
    }

    return $ConciergeDataCopyWith<$Res>(_value.expertData!, (value) {
      return _then(_value.copyWith(expertData: value));
    });
  }

  @override
  $ConciergeUserDataCopyWith<$Res>? get userData {
    if (_value.userData == null) {
      return null;
    }

    return $ConciergeUserDataCopyWith<$Res>(_value.userData!, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }
}

/// @nodoc
abstract class _$ConciergeChatRoomCopyWith<$Res>
    implements $ConciergeChatRoomCopyWith<$Res> {
  factory _$ConciergeChatRoomCopyWith(
          _ConciergeChatRoom value, $Res Function(_ConciergeChatRoom) then) =
      __$ConciergeChatRoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {String recentMessage,
      @timestamp DateTime recentPosted,
      bool initialState,
      ConciergeData? expertData,
      ConciergeUserData? userData,
      Map<String, int> members});

  @override
  $ConciergeDataCopyWith<$Res>? get expertData;
  @override
  $ConciergeUserDataCopyWith<$Res>? get userData;
}

/// @nodoc
class __$ConciergeChatRoomCopyWithImpl<$Res>
    extends _$ConciergeChatRoomCopyWithImpl<$Res>
    implements _$ConciergeChatRoomCopyWith<$Res> {
  __$ConciergeChatRoomCopyWithImpl(
      _ConciergeChatRoom _value, $Res Function(_ConciergeChatRoom) _then)
      : super(_value, (v) => _then(v as _ConciergeChatRoom));

  @override
  _ConciergeChatRoom get _value => super._value as _ConciergeChatRoom;

  @override
  $Res call({
    Object? recentMessage = freezed,
    Object? recentPosted = freezed,
    Object? initialState = freezed,
    Object? expertData = freezed,
    Object? userData = freezed,
    Object? members = freezed,
  }) {
    return _then(_ConciergeChatRoom(
      recentMessage: recentMessage == freezed
          ? _value.recentMessage
          : recentMessage // ignore: cast_nullable_to_non_nullable
              as String,
      recentPosted: recentPosted == freezed
          ? _value.recentPosted
          : recentPosted // ignore: cast_nullable_to_non_nullable
              as DateTime,
      initialState: initialState == freezed
          ? _value.initialState
          : initialState // ignore: cast_nullable_to_non_nullable
              as bool,
      expertData: expertData == freezed
          ? _value.expertData
          : expertData // ignore: cast_nullable_to_non_nullable
              as ConciergeData?,
      userData: userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as ConciergeUserData?,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConciergeChatRoom extends _ConciergeChatRoom {
  const _$_ConciergeChatRoom(
      {this.recentMessage = '',
      @timestamp required this.recentPosted,
      this.initialState = false,
      this.expertData,
      this.userData,
      this.members = const <String, int>{}})
      : super._();

  factory _$_ConciergeChatRoom.fromJson(Map<String, dynamic> json) =>
      _$_$_ConciergeChatRoomFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String recentMessage;
  @override
  @timestamp
  final DateTime recentPosted;
  @JsonKey(defaultValue: false)
  @override
  final bool initialState;
  @override
  final ConciergeData? expertData;
  @override
  final ConciergeUserData? userData;
  @JsonKey(defaultValue: const <String, int>{})
  @override
  final Map<String, int> members;

  @override
  String toString() {
    return 'ConciergeChatRoom(recentMessage: $recentMessage, recentPosted: $recentPosted, initialState: $initialState, expertData: $expertData, userData: $userData, members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConciergeChatRoom &&
            (identical(other.recentMessage, recentMessage) ||
                const DeepCollectionEquality()
                    .equals(other.recentMessage, recentMessage)) &&
            (identical(other.recentPosted, recentPosted) ||
                const DeepCollectionEquality()
                    .equals(other.recentPosted, recentPosted)) &&
            (identical(other.initialState, initialState) ||
                const DeepCollectionEquality()
                    .equals(other.initialState, initialState)) &&
            (identical(other.expertData, expertData) ||
                const DeepCollectionEquality()
                    .equals(other.expertData, expertData)) &&
            (identical(other.userData, userData) ||
                const DeepCollectionEquality()
                    .equals(other.userData, userData)) &&
            (identical(other.members, members) ||
                const DeepCollectionEquality().equals(other.members, members)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(recentMessage) ^
      const DeepCollectionEquality().hash(recentPosted) ^
      const DeepCollectionEquality().hash(initialState) ^
      const DeepCollectionEquality().hash(expertData) ^
      const DeepCollectionEquality().hash(userData) ^
      const DeepCollectionEquality().hash(members);

  @JsonKey(ignore: true)
  @override
  _$ConciergeChatRoomCopyWith<_ConciergeChatRoom> get copyWith =>
      __$ConciergeChatRoomCopyWithImpl<_ConciergeChatRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConciergeChatRoomToJson(this);
  }
}

abstract class _ConciergeChatRoom extends ConciergeChatRoom {
  const factory _ConciergeChatRoom(
      {String recentMessage,
      @timestamp required DateTime recentPosted,
      bool initialState,
      ConciergeData? expertData,
      ConciergeUserData? userData,
      Map<String, int> members}) = _$_ConciergeChatRoom;
  const _ConciergeChatRoom._() : super._();

  factory _ConciergeChatRoom.fromJson(Map<String, dynamic> json) =
      _$_ConciergeChatRoom.fromJson;

  @override
  String get recentMessage => throw _privateConstructorUsedError;
  @override
  @timestamp
  DateTime get recentPosted => throw _privateConstructorUsedError;
  @override
  bool get initialState => throw _privateConstructorUsedError;
  @override
  ConciergeData? get expertData => throw _privateConstructorUsedError;
  @override
  ConciergeUserData? get userData => throw _privateConstructorUsedError;
  @override
  Map<String, int> get members => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConciergeChatRoomCopyWith<_ConciergeChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
