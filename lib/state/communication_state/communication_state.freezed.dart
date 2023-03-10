// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'communication_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommunicationStateTearOff {
  const _$CommunicationStateTearOff();

  _CommunicationState call(
      {List<CommunicationUser> matchedUsers = const <CommunicationUser>[],
      Map<String, DatingChatRoom> uuidChatRoomMapper =
          const <String, DatingChatRoom>{},
      List<CommunicationUser> toLikedUsers = const <CommunicationUser>[],
      int currentToLikedPage = 0,
      bool isLastToLiked = false,
      List<CommunicationUser> fromLikedUsers = const <CommunicationUser>[],
      int currentFromLikedPage = 1,
      bool isLastFromLiked = false}) {
    return _CommunicationState(
      matchedUsers: matchedUsers,
      uuidChatRoomMapper: uuidChatRoomMapper,
      toLikedUsers: toLikedUsers,
      currentToLikedPage: currentToLikedPage,
      isLastToLiked: isLastToLiked,
      fromLikedUsers: fromLikedUsers,
      currentFromLikedPage: currentFromLikedPage,
      isLastFromLiked: isLastFromLiked,
    );
  }
}

/// @nodoc
const $CommunicationState = _$CommunicationStateTearOff();

/// @nodoc
mixin _$CommunicationState {
  List<CommunicationUser> get matchedUsers =>
      throw _privateConstructorUsedError;

  /// {otherUuid: DatingChatRoom}のmap
  Map<String, DatingChatRoom> get uuidChatRoomMapper =>
      throw _privateConstructorUsedError;
  List<CommunicationUser> get toLikedUsers =>
      throw _privateConstructorUsedError;
  int get currentToLikedPage => throw _privateConstructorUsedError;
  bool get isLastToLiked => throw _privateConstructorUsedError;
  List<CommunicationUser> get fromLikedUsers =>
      throw _privateConstructorUsedError;
  int get currentFromLikedPage => throw _privateConstructorUsedError;
  bool get isLastFromLiked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommunicationStateCopyWith<CommunicationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunicationStateCopyWith<$Res> {
  factory $CommunicationStateCopyWith(
          CommunicationState value, $Res Function(CommunicationState) then) =
      _$CommunicationStateCopyWithImpl<$Res>;
  $Res call(
      {List<CommunicationUser> matchedUsers,
      Map<String, DatingChatRoom> uuidChatRoomMapper,
      List<CommunicationUser> toLikedUsers,
      int currentToLikedPage,
      bool isLastToLiked,
      List<CommunicationUser> fromLikedUsers,
      int currentFromLikedPage,
      bool isLastFromLiked});
}

/// @nodoc
class _$CommunicationStateCopyWithImpl<$Res>
    implements $CommunicationStateCopyWith<$Res> {
  _$CommunicationStateCopyWithImpl(this._value, this._then);

  final CommunicationState _value;
  // ignore: unused_field
  final $Res Function(CommunicationState) _then;

  @override
  $Res call({
    Object? matchedUsers = freezed,
    Object? uuidChatRoomMapper = freezed,
    Object? toLikedUsers = freezed,
    Object? currentToLikedPage = freezed,
    Object? isLastToLiked = freezed,
    Object? fromLikedUsers = freezed,
    Object? currentFromLikedPage = freezed,
    Object? isLastFromLiked = freezed,
  }) {
    return _then(_value.copyWith(
      matchedUsers: matchedUsers == freezed
          ? _value.matchedUsers
          : matchedUsers // ignore: cast_nullable_to_non_nullable
              as List<CommunicationUser>,
      uuidChatRoomMapper: uuidChatRoomMapper == freezed
          ? _value.uuidChatRoomMapper
          : uuidChatRoomMapper // ignore: cast_nullable_to_non_nullable
              as Map<String, DatingChatRoom>,
      toLikedUsers: toLikedUsers == freezed
          ? _value.toLikedUsers
          : toLikedUsers // ignore: cast_nullable_to_non_nullable
              as List<CommunicationUser>,
      currentToLikedPage: currentToLikedPage == freezed
          ? _value.currentToLikedPage
          : currentToLikedPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLastToLiked: isLastToLiked == freezed
          ? _value.isLastToLiked
          : isLastToLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      fromLikedUsers: fromLikedUsers == freezed
          ? _value.fromLikedUsers
          : fromLikedUsers // ignore: cast_nullable_to_non_nullable
              as List<CommunicationUser>,
      currentFromLikedPage: currentFromLikedPage == freezed
          ? _value.currentFromLikedPage
          : currentFromLikedPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLastFromLiked: isLastFromLiked == freezed
          ? _value.isLastFromLiked
          : isLastFromLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CommunicationStateCopyWith<$Res>
    implements $CommunicationStateCopyWith<$Res> {
  factory _$CommunicationStateCopyWith(
          _CommunicationState value, $Res Function(_CommunicationState) then) =
      __$CommunicationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CommunicationUser> matchedUsers,
      Map<String, DatingChatRoom> uuidChatRoomMapper,
      List<CommunicationUser> toLikedUsers,
      int currentToLikedPage,
      bool isLastToLiked,
      List<CommunicationUser> fromLikedUsers,
      int currentFromLikedPage,
      bool isLastFromLiked});
}

/// @nodoc
class __$CommunicationStateCopyWithImpl<$Res>
    extends _$CommunicationStateCopyWithImpl<$Res>
    implements _$CommunicationStateCopyWith<$Res> {
  __$CommunicationStateCopyWithImpl(
      _CommunicationState _value, $Res Function(_CommunicationState) _then)
      : super(_value, (v) => _then(v as _CommunicationState));

  @override
  _CommunicationState get _value => super._value as _CommunicationState;

  @override
  $Res call({
    Object? matchedUsers = freezed,
    Object? uuidChatRoomMapper = freezed,
    Object? toLikedUsers = freezed,
    Object? currentToLikedPage = freezed,
    Object? isLastToLiked = freezed,
    Object? fromLikedUsers = freezed,
    Object? currentFromLikedPage = freezed,
    Object? isLastFromLiked = freezed,
  }) {
    return _then(_CommunicationState(
      matchedUsers: matchedUsers == freezed
          ? _value.matchedUsers
          : matchedUsers // ignore: cast_nullable_to_non_nullable
              as List<CommunicationUser>,
      uuidChatRoomMapper: uuidChatRoomMapper == freezed
          ? _value.uuidChatRoomMapper
          : uuidChatRoomMapper // ignore: cast_nullable_to_non_nullable
              as Map<String, DatingChatRoom>,
      toLikedUsers: toLikedUsers == freezed
          ? _value.toLikedUsers
          : toLikedUsers // ignore: cast_nullable_to_non_nullable
              as List<CommunicationUser>,
      currentToLikedPage: currentToLikedPage == freezed
          ? _value.currentToLikedPage
          : currentToLikedPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLastToLiked: isLastToLiked == freezed
          ? _value.isLastToLiked
          : isLastToLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      fromLikedUsers: fromLikedUsers == freezed
          ? _value.fromLikedUsers
          : fromLikedUsers // ignore: cast_nullable_to_non_nullable
              as List<CommunicationUser>,
      currentFromLikedPage: currentFromLikedPage == freezed
          ? _value.currentFromLikedPage
          : currentFromLikedPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLastFromLiked: isLastFromLiked == freezed
          ? _value.isLastFromLiked
          : isLastFromLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CommunicationState extends _CommunicationState {
  const _$_CommunicationState(
      {this.matchedUsers = const <CommunicationUser>[],
      this.uuidChatRoomMapper = const <String, DatingChatRoom>{},
      this.toLikedUsers = const <CommunicationUser>[],
      this.currentToLikedPage = 0,
      this.isLastToLiked = false,
      this.fromLikedUsers = const <CommunicationUser>[],
      this.currentFromLikedPage = 1,
      this.isLastFromLiked = false})
      : super._();

  @JsonKey(defaultValue: const <CommunicationUser>[])
  @override
  final List<CommunicationUser> matchedUsers;
  @JsonKey(defaultValue: const <String, DatingChatRoom>{})
  @override

  /// {otherUuid: DatingChatRoom}のmap
  final Map<String, DatingChatRoom> uuidChatRoomMapper;
  @JsonKey(defaultValue: const <CommunicationUser>[])
  @override
  final List<CommunicationUser> toLikedUsers;
  @JsonKey(defaultValue: 0)
  @override
  final int currentToLikedPage;
  @JsonKey(defaultValue: false)
  @override
  final bool isLastToLiked;
  @JsonKey(defaultValue: const <CommunicationUser>[])
  @override
  final List<CommunicationUser> fromLikedUsers;
  @JsonKey(defaultValue: 1)
  @override
  final int currentFromLikedPage;
  @JsonKey(defaultValue: false)
  @override
  final bool isLastFromLiked;

  @override
  String toString() {
    return 'CommunicationState(matchedUsers: $matchedUsers, uuidChatRoomMapper: $uuidChatRoomMapper, toLikedUsers: $toLikedUsers, currentToLikedPage: $currentToLikedPage, isLastToLiked: $isLastToLiked, fromLikedUsers: $fromLikedUsers, currentFromLikedPage: $currentFromLikedPage, isLastFromLiked: $isLastFromLiked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommunicationState &&
            (identical(other.matchedUsers, matchedUsers) ||
                const DeepCollectionEquality()
                    .equals(other.matchedUsers, matchedUsers)) &&
            (identical(other.uuidChatRoomMapper, uuidChatRoomMapper) ||
                const DeepCollectionEquality()
                    .equals(other.uuidChatRoomMapper, uuidChatRoomMapper)) &&
            (identical(other.toLikedUsers, toLikedUsers) ||
                const DeepCollectionEquality()
                    .equals(other.toLikedUsers, toLikedUsers)) &&
            (identical(other.currentToLikedPage, currentToLikedPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentToLikedPage, currentToLikedPage)) &&
            (identical(other.isLastToLiked, isLastToLiked) ||
                const DeepCollectionEquality()
                    .equals(other.isLastToLiked, isLastToLiked)) &&
            (identical(other.fromLikedUsers, fromLikedUsers) ||
                const DeepCollectionEquality()
                    .equals(other.fromLikedUsers, fromLikedUsers)) &&
            (identical(other.currentFromLikedPage, currentFromLikedPage) ||
                const DeepCollectionEquality().equals(
                    other.currentFromLikedPage, currentFromLikedPage)) &&
            (identical(other.isLastFromLiked, isLastFromLiked) ||
                const DeepCollectionEquality()
                    .equals(other.isLastFromLiked, isLastFromLiked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(matchedUsers) ^
      const DeepCollectionEquality().hash(uuidChatRoomMapper) ^
      const DeepCollectionEquality().hash(toLikedUsers) ^
      const DeepCollectionEquality().hash(currentToLikedPage) ^
      const DeepCollectionEquality().hash(isLastToLiked) ^
      const DeepCollectionEquality().hash(fromLikedUsers) ^
      const DeepCollectionEquality().hash(currentFromLikedPage) ^
      const DeepCollectionEquality().hash(isLastFromLiked);

  @JsonKey(ignore: true)
  @override
  _$CommunicationStateCopyWith<_CommunicationState> get copyWith =>
      __$CommunicationStateCopyWithImpl<_CommunicationState>(this, _$identity);
}

abstract class _CommunicationState extends CommunicationState {
  const factory _CommunicationState(
      {List<CommunicationUser> matchedUsers,
      Map<String, DatingChatRoom> uuidChatRoomMapper,
      List<CommunicationUser> toLikedUsers,
      int currentToLikedPage,
      bool isLastToLiked,
      List<CommunicationUser> fromLikedUsers,
      int currentFromLikedPage,
      bool isLastFromLiked}) = _$_CommunicationState;
  const _CommunicationState._() : super._();

  @override
  List<CommunicationUser> get matchedUsers =>
      throw _privateConstructorUsedError;
  @override

  /// {otherUuid: DatingChatRoom}のmap
  Map<String, DatingChatRoom> get uuidChatRoomMapper =>
      throw _privateConstructorUsedError;
  @override
  List<CommunicationUser> get toLikedUsers =>
      throw _privateConstructorUsedError;
  @override
  int get currentToLikedPage => throw _privateConstructorUsedError;
  @override
  bool get isLastToLiked => throw _privateConstructorUsedError;
  @override
  List<CommunicationUser> get fromLikedUsers =>
      throw _privateConstructorUsedError;
  @override
  int get currentFromLikedPage => throw _privateConstructorUsedError;
  @override
  bool get isLastFromLiked => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommunicationStateCopyWith<_CommunicationState> get copyWith =>
      throw _privateConstructorUsedError;
}
