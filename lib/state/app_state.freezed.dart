// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(
      {BuildContext? context,
      String uid = '',
      String uuid = '',
      String deviceToken = '',
      bool isFinishedRegisterBasicInformation = false,
      bool isFinishedUserVerify = false,
      Map<String, int> chatLatestTimestamps = const <String, int>{},
      int conciergeChatTimestamp = 0,
      bool loggedOut = false}) {
    return _AppState(
      context: context,
      uid: uid,
      uuid: uuid,
      deviceToken: deviceToken,
      isFinishedRegisterBasicInformation: isFinishedRegisterBasicInformation,
      isFinishedUserVerify: isFinishedUserVerify,
      chatLatestTimestamps: chatLatestTimestamps,
      conciergeChatTimestamp: conciergeChatTimestamp,
      loggedOut: loggedOut,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  BuildContext? get context => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get deviceToken => throw _privateConstructorUsedError;
  bool get isFinishedRegisterBasicInformation =>
      throw _privateConstructorUsedError;
  bool get isFinishedUserVerify => throw _privateConstructorUsedError;
  Map<String, int> get chatLatestTimestamps =>
      throw _privateConstructorUsedError;
  int get conciergeChatTimestamp => throw _privateConstructorUsedError;

  /// ログアウトしたかを判定するためのフラグ（端末変更で強制ログアウトした場合などに使用）
  bool get loggedOut => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {BuildContext? context,
      String uid,
      String uuid,
      String deviceToken,
      bool isFinishedRegisterBasicInformation,
      bool isFinishedUserVerify,
      Map<String, int> chatLatestTimestamps,
      int conciergeChatTimestamp,
      bool loggedOut});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? context = freezed,
    Object? uid = freezed,
    Object? uuid = freezed,
    Object? deviceToken = freezed,
    Object? isFinishedRegisterBasicInformation = freezed,
    Object? isFinishedUserVerify = freezed,
    Object? chatLatestTimestamps = freezed,
    Object? conciergeChatTimestamp = freezed,
    Object? loggedOut = freezed,
  }) {
    return _then(_value.copyWith(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: deviceToken == freezed
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
      isFinishedRegisterBasicInformation: isFinishedRegisterBasicInformation ==
              freezed
          ? _value.isFinishedRegisterBasicInformation
          : isFinishedRegisterBasicInformation // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinishedUserVerify: isFinishedUserVerify == freezed
          ? _value.isFinishedUserVerify
          : isFinishedUserVerify // ignore: cast_nullable_to_non_nullable
              as bool,
      chatLatestTimestamps: chatLatestTimestamps == freezed
          ? _value.chatLatestTimestamps
          : chatLatestTimestamps // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      conciergeChatTimestamp: conciergeChatTimestamp == freezed
          ? _value.conciergeChatTimestamp
          : conciergeChatTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      loggedOut: loggedOut == freezed
          ? _value.loggedOut
          : loggedOut // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BuildContext? context,
      String uid,
      String uuid,
      String deviceToken,
      bool isFinishedRegisterBasicInformation,
      bool isFinishedUserVerify,
      Map<String, int> chatLatestTimestamps,
      int conciergeChatTimestamp,
      bool loggedOut});
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? context = freezed,
    Object? uid = freezed,
    Object? uuid = freezed,
    Object? deviceToken = freezed,
    Object? isFinishedRegisterBasicInformation = freezed,
    Object? isFinishedUserVerify = freezed,
    Object? chatLatestTimestamps = freezed,
    Object? conciergeChatTimestamp = freezed,
    Object? loggedOut = freezed,
  }) {
    return _then(_AppState(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: deviceToken == freezed
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
      isFinishedRegisterBasicInformation: isFinishedRegisterBasicInformation ==
              freezed
          ? _value.isFinishedRegisterBasicInformation
          : isFinishedRegisterBasicInformation // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinishedUserVerify: isFinishedUserVerify == freezed
          ? _value.isFinishedUserVerify
          : isFinishedUserVerify // ignore: cast_nullable_to_non_nullable
              as bool,
      chatLatestTimestamps: chatLatestTimestamps == freezed
          ? _value.chatLatestTimestamps
          : chatLatestTimestamps // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      conciergeChatTimestamp: conciergeChatTimestamp == freezed
          ? _value.conciergeChatTimestamp
          : conciergeChatTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      loggedOut: loggedOut == freezed
          ? _value.loggedOut
          : loggedOut // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppState extends _AppState {
  const _$_AppState(
      {this.context,
      this.uid = '',
      this.uuid = '',
      this.deviceToken = '',
      this.isFinishedRegisterBasicInformation = false,
      this.isFinishedUserVerify = false,
      this.chatLatestTimestamps = const <String, int>{},
      this.conciergeChatTimestamp = 0,
      this.loggedOut = false})
      : super._();

  @override
  final BuildContext? context;
  @JsonKey(defaultValue: '')
  @override
  final String uid;
  @JsonKey(defaultValue: '')
  @override
  final String uuid;
  @JsonKey(defaultValue: '')
  @override
  final String deviceToken;
  @JsonKey(defaultValue: false)
  @override
  final bool isFinishedRegisterBasicInformation;
  @JsonKey(defaultValue: false)
  @override
  final bool isFinishedUserVerify;
  @JsonKey(defaultValue: const <String, int>{})
  @override
  final Map<String, int> chatLatestTimestamps;
  @JsonKey(defaultValue: 0)
  @override
  final int conciergeChatTimestamp;
  @JsonKey(defaultValue: false)
  @override

  /// ログアウトしたかを判定するためのフラグ（端末変更で強制ログアウトした場合などに使用）
  final bool loggedOut;

  @override
  String toString() {
    return 'AppState(context: $context, uid: $uid, uuid: $uuid, deviceToken: $deviceToken, isFinishedRegisterBasicInformation: $isFinishedRegisterBasicInformation, isFinishedUserVerify: $isFinishedUserVerify, chatLatestTimestamps: $chatLatestTimestamps, conciergeChatTimestamp: $conciergeChatTimestamp, loggedOut: $loggedOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppState &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.deviceToken, deviceToken) ||
                const DeepCollectionEquality()
                    .equals(other.deviceToken, deviceToken)) &&
            (identical(other.isFinishedRegisterBasicInformation,
                    isFinishedRegisterBasicInformation) ||
                const DeepCollectionEquality().equals(
                    other.isFinishedRegisterBasicInformation,
                    isFinishedRegisterBasicInformation)) &&
            (identical(other.isFinishedUserVerify, isFinishedUserVerify) ||
                const DeepCollectionEquality().equals(
                    other.isFinishedUserVerify, isFinishedUserVerify)) &&
            (identical(other.chatLatestTimestamps, chatLatestTimestamps) ||
                const DeepCollectionEquality().equals(
                    other.chatLatestTimestamps, chatLatestTimestamps)) &&
            (identical(other.conciergeChatTimestamp, conciergeChatTimestamp) ||
                const DeepCollectionEquality().equals(
                    other.conciergeChatTimestamp, conciergeChatTimestamp)) &&
            (identical(other.loggedOut, loggedOut) ||
                const DeepCollectionEquality()
                    .equals(other.loggedOut, loggedOut)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(deviceToken) ^
      const DeepCollectionEquality().hash(isFinishedRegisterBasicInformation) ^
      const DeepCollectionEquality().hash(isFinishedUserVerify) ^
      const DeepCollectionEquality().hash(chatLatestTimestamps) ^
      const DeepCollectionEquality().hash(conciergeChatTimestamp) ^
      const DeepCollectionEquality().hash(loggedOut);

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState extends AppState {
  const factory _AppState(
      {BuildContext? context,
      String uid,
      String uuid,
      String deviceToken,
      bool isFinishedRegisterBasicInformation,
      bool isFinishedUserVerify,
      Map<String, int> chatLatestTimestamps,
      int conciergeChatTimestamp,
      bool loggedOut}) = _$_AppState;
  const _AppState._() : super._();

  @override
  BuildContext? get context => throw _privateConstructorUsedError;
  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get deviceToken => throw _privateConstructorUsedError;
  @override
  bool get isFinishedRegisterBasicInformation =>
      throw _privateConstructorUsedError;
  @override
  bool get isFinishedUserVerify => throw _privateConstructorUsedError;
  @override
  Map<String, int> get chatLatestTimestamps =>
      throw _privateConstructorUsedError;
  @override
  int get conciergeChatTimestamp => throw _privateConstructorUsedError;
  @override

  /// ログアウトしたかを判定するためのフラグ（端末変更で強制ログアウトした場合などに使用）
  bool get loggedOut => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
