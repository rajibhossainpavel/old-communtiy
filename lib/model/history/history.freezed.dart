// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

History _$HistoryFromJson(Map<String, dynamic> json) {
  return _History.fromJson(json);
}

/// @nodoc
class _$HistoryTearOff {
  const _$HistoryTearOff();

  _History call(
      {String logged = '',
      String created = '',
      String livePlace = '',
      String nickname = '',
      String targetUserID = '',
      String userIcon = '',
      String uuid = ''}) {
    return _History(
      logged: logged,
      created: created,
      livePlace: livePlace,
      nickname: nickname,
      targetUserID: targetUserID,
      userIcon: userIcon,
      uuid: uuid,
    );
  }

  History fromJson(Map<String, Object> json) {
    return History.fromJson(json);
  }
}

/// @nodoc
const $History = _$HistoryTearOff();

/// @nodoc
mixin _$History {
  String get logged => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  String get livePlace => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get targetUserID => throw _privateConstructorUsedError;
  String get userIcon => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryCopyWith<History> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryCopyWith<$Res> {
  factory $HistoryCopyWith(History value, $Res Function(History) then) =
      _$HistoryCopyWithImpl<$Res>;
  $Res call(
      {String logged,
      String created,
      String livePlace,
      String nickname,
      String targetUserID,
      String userIcon,
      String uuid});
}

/// @nodoc
class _$HistoryCopyWithImpl<$Res> implements $HistoryCopyWith<$Res> {
  _$HistoryCopyWithImpl(this._value, this._then);

  final History _value;
  // ignore: unused_field
  final $Res Function(History) _then;

  @override
  $Res call({
    Object? logged = freezed,
    Object? created = freezed,
    Object? livePlace = freezed,
    Object? nickname = freezed,
    Object? targetUserID = freezed,
    Object? userIcon = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_value.copyWith(
      logged: logged == freezed
          ? _value.logged
          : logged // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      livePlace: livePlace == freezed
          ? _value.livePlace
          : livePlace // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      targetUserID: targetUserID == freezed
          ? _value.targetUserID
          : targetUserID // ignore: cast_nullable_to_non_nullable
              as String,
      userIcon: userIcon == freezed
          ? _value.userIcon
          : userIcon // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HistoryCopyWith<$Res> implements $HistoryCopyWith<$Res> {
  factory _$HistoryCopyWith(_History value, $Res Function(_History) then) =
      __$HistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String logged,
      String created,
      String livePlace,
      String nickname,
      String targetUserID,
      String userIcon,
      String uuid});
}

/// @nodoc
class __$HistoryCopyWithImpl<$Res> extends _$HistoryCopyWithImpl<$Res>
    implements _$HistoryCopyWith<$Res> {
  __$HistoryCopyWithImpl(_History _value, $Res Function(_History) _then)
      : super(_value, (v) => _then(v as _History));

  @override
  _History get _value => super._value as _History;

  @override
  $Res call({
    Object? logged = freezed,
    Object? created = freezed,
    Object? livePlace = freezed,
    Object? nickname = freezed,
    Object? targetUserID = freezed,
    Object? userIcon = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_History(
      logged: logged == freezed
          ? _value.logged
          : logged // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      livePlace: livePlace == freezed
          ? _value.livePlace
          : livePlace // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      targetUserID: targetUserID == freezed
          ? _value.targetUserID
          : targetUserID // ignore: cast_nullable_to_non_nullable
              as String,
      userIcon: userIcon == freezed
          ? _value.userIcon
          : userIcon // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_History extends _History {
  const _$_History(
      {this.logged = '',
      this.created = '',
      this.livePlace = '',
      this.nickname = '',
      this.targetUserID = '',
      this.userIcon = '',
      this.uuid = ''})
      : super._();

  factory _$_History.fromJson(Map<String, dynamic> json) =>
      _$_$_HistoryFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String logged;
  @JsonKey(defaultValue: '')
  @override
  final String created;
  @JsonKey(defaultValue: '')
  @override
  final String livePlace;
  @JsonKey(defaultValue: '')
  @override
  final String nickname;
  @JsonKey(defaultValue: '')
  @override
  final String targetUserID;
  @JsonKey(defaultValue: '')
  @override
  final String userIcon;
  @JsonKey(defaultValue: '')
  @override
  final String uuid;

  @override
  String toString() {
    return 'History(logged: $logged, created: $created, livePlace: $livePlace, nickname: $nickname, targetUserID: $targetUserID, userIcon: $userIcon, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _History &&
            (identical(other.logged, logged) ||
                const DeepCollectionEquality().equals(other.logged, logged)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.livePlace, livePlace) ||
                const DeepCollectionEquality()
                    .equals(other.livePlace, livePlace)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.targetUserID, targetUserID) ||
                const DeepCollectionEquality()
                    .equals(other.targetUserID, targetUserID)) &&
            (identical(other.userIcon, userIcon) ||
                const DeepCollectionEquality()
                    .equals(other.userIcon, userIcon)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(logged) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(livePlace) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(targetUserID) ^
      const DeepCollectionEquality().hash(userIcon) ^
      const DeepCollectionEquality().hash(uuid);

  @JsonKey(ignore: true)
  @override
  _$HistoryCopyWith<_History> get copyWith =>
      __$HistoryCopyWithImpl<_History>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HistoryToJson(this);
  }
}

abstract class _History extends History {
  const factory _History(
      {String logged,
      String created,
      String livePlace,
      String nickname,
      String targetUserID,
      String userIcon,
      String uuid}) = _$_History;
  const _History._() : super._();

  factory _History.fromJson(Map<String, dynamic> json) = _$_History.fromJson;

  @override
  String get logged => throw _privateConstructorUsedError;
  @override
  String get created => throw _privateConstructorUsedError;
  @override
  String get livePlace => throw _privateConstructorUsedError;
  @override
  String get nickname => throw _privateConstructorUsedError;
  @override
  String get targetUserID => throw _privateConstructorUsedError;
  @override
  String get userIcon => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HistoryCopyWith<_History> get copyWith =>
      throw _privateConstructorUsedError;
}
