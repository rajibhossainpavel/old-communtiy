// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppInfo _$AppInfoFromJson(Map<String, dynamic> json) {
  return _AppInfo.fromJson(json);
}

/// @nodoc
class _$AppInfoTearOff {
  const _$AppInfoTearOff();

  _AppInfo call(
      {required String registerState,
      required String userTempLimit,
      required int loginBonus,
      required bool isUserTemp}) {
    return _AppInfo(
      registerState: registerState,
      userTempLimit: userTempLimit,
      loginBonus: loginBonus,
      isUserTemp: isUserTemp,
    );
  }

  AppInfo fromJson(Map<String, Object> json) {
    return AppInfo.fromJson(json);
  }
}

/// @nodoc
const $AppInfo = _$AppInfoTearOff();

/// @nodoc
mixin _$AppInfo {
  String get registerState => throw _privateConstructorUsedError;
  String get userTempLimit => throw _privateConstructorUsedError;
  int get loginBonus => throw _privateConstructorUsedError;
  bool get isUserTemp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppInfoCopyWith<AppInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInfoCopyWith<$Res> {
  factory $AppInfoCopyWith(AppInfo value, $Res Function(AppInfo) then) =
      _$AppInfoCopyWithImpl<$Res>;
  $Res call(
      {String registerState,
      String userTempLimit,
      int loginBonus,
      bool isUserTemp});
}

/// @nodoc
class _$AppInfoCopyWithImpl<$Res> implements $AppInfoCopyWith<$Res> {
  _$AppInfoCopyWithImpl(this._value, this._then);

  final AppInfo _value;
  // ignore: unused_field
  final $Res Function(AppInfo) _then;

  @override
  $Res call({
    Object? registerState = freezed,
    Object? userTempLimit = freezed,
    Object? loginBonus = freezed,
    Object? isUserTemp = freezed,
  }) {
    return _then(_value.copyWith(
      registerState: registerState == freezed
          ? _value.registerState
          : registerState // ignore: cast_nullable_to_non_nullable
              as String,
      userTempLimit: userTempLimit == freezed
          ? _value.userTempLimit
          : userTempLimit // ignore: cast_nullable_to_non_nullable
              as String,
      loginBonus: loginBonus == freezed
          ? _value.loginBonus
          : loginBonus // ignore: cast_nullable_to_non_nullable
              as int,
      isUserTemp: isUserTemp == freezed
          ? _value.isUserTemp
          : isUserTemp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AppInfoCopyWith<$Res> implements $AppInfoCopyWith<$Res> {
  factory _$AppInfoCopyWith(_AppInfo value, $Res Function(_AppInfo) then) =
      __$AppInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String registerState,
      String userTempLimit,
      int loginBonus,
      bool isUserTemp});
}

/// @nodoc
class __$AppInfoCopyWithImpl<$Res> extends _$AppInfoCopyWithImpl<$Res>
    implements _$AppInfoCopyWith<$Res> {
  __$AppInfoCopyWithImpl(_AppInfo _value, $Res Function(_AppInfo) _then)
      : super(_value, (v) => _then(v as _AppInfo));

  @override
  _AppInfo get _value => super._value as _AppInfo;

  @override
  $Res call({
    Object? registerState = freezed,
    Object? userTempLimit = freezed,
    Object? loginBonus = freezed,
    Object? isUserTemp = freezed,
  }) {
    return _then(_AppInfo(
      registerState: registerState == freezed
          ? _value.registerState
          : registerState // ignore: cast_nullable_to_non_nullable
              as String,
      userTempLimit: userTempLimit == freezed
          ? _value.userTempLimit
          : userTempLimit // ignore: cast_nullable_to_non_nullable
              as String,
      loginBonus: loginBonus == freezed
          ? _value.loginBonus
          : loginBonus // ignore: cast_nullable_to_non_nullable
              as int,
      isUserTemp: isUserTemp == freezed
          ? _value.isUserTemp
          : isUserTemp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppInfo implements _AppInfo {
  const _$_AppInfo(
      {required this.registerState,
      required this.userTempLimit,
      required this.loginBonus,
      required this.isUserTemp});

  factory _$_AppInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_AppInfoFromJson(json);

  @override
  final String registerState;
  @override
  final String userTempLimit;
  @override
  final int loginBonus;
  @override
  final bool isUserTemp;

  @override
  String toString() {
    return 'AppInfo(registerState: $registerState, userTempLimit: $userTempLimit, loginBonus: $loginBonus, isUserTemp: $isUserTemp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppInfo &&
            (identical(other.registerState, registerState) ||
                const DeepCollectionEquality()
                    .equals(other.registerState, registerState)) &&
            (identical(other.userTempLimit, userTempLimit) ||
                const DeepCollectionEquality()
                    .equals(other.userTempLimit, userTempLimit)) &&
            (identical(other.loginBonus, loginBonus) ||
                const DeepCollectionEquality()
                    .equals(other.loginBonus, loginBonus)) &&
            (identical(other.isUserTemp, isUserTemp) ||
                const DeepCollectionEquality()
                    .equals(other.isUserTemp, isUserTemp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(registerState) ^
      const DeepCollectionEquality().hash(userTempLimit) ^
      const DeepCollectionEquality().hash(loginBonus) ^
      const DeepCollectionEquality().hash(isUserTemp);

  @JsonKey(ignore: true)
  @override
  _$AppInfoCopyWith<_AppInfo> get copyWith =>
      __$AppInfoCopyWithImpl<_AppInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppInfoToJson(this);
  }
}

abstract class _AppInfo implements AppInfo {
  const factory _AppInfo(
      {required String registerState,
      required String userTempLimit,
      required int loginBonus,
      required bool isUserTemp}) = _$_AppInfo;

  factory _AppInfo.fromJson(Map<String, dynamic> json) = _$_AppInfo.fromJson;

  @override
  String get registerState => throw _privateConstructorUsedError;
  @override
  String get userTempLimit => throw _privateConstructorUsedError;
  @override
  int get loginBonus => throw _privateConstructorUsedError;
  @override
  bool get isUserTemp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppInfoCopyWith<_AppInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
