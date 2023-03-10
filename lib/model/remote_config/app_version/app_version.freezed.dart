// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppVersion _$AppVersionFromJson(Map<String, dynamic> json) {
  return _AppVersion.fromJson(json);
}

/// @nodoc
class _$AppVersionTearOff {
  const _$AppVersionTearOff();

  _AppVersion call({String info = '', String force = ''}) {
    return _AppVersion(
      info: info,
      force: force,
    );
  }

  AppVersion fromJson(Map<String, Object> json) {
    return AppVersion.fromJson(json);
  }
}

/// @nodoc
const $AppVersion = _$AppVersionTearOff();

/// @nodoc
mixin _$AppVersion {
  String get info => throw _privateConstructorUsedError;
  String get force => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppVersionCopyWith<AppVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionCopyWith<$Res> {
  factory $AppVersionCopyWith(
          AppVersion value, $Res Function(AppVersion) then) =
      _$AppVersionCopyWithImpl<$Res>;
  $Res call({String info, String force});
}

/// @nodoc
class _$AppVersionCopyWithImpl<$Res> implements $AppVersionCopyWith<$Res> {
  _$AppVersionCopyWithImpl(this._value, this._then);

  final AppVersion _value;
  // ignore: unused_field
  final $Res Function(AppVersion) _then;

  @override
  $Res call({
    Object? info = freezed,
    Object? force = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      force: force == freezed
          ? _value.force
          : force // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AppVersionCopyWith<$Res> implements $AppVersionCopyWith<$Res> {
  factory _$AppVersionCopyWith(
          _AppVersion value, $Res Function(_AppVersion) then) =
      __$AppVersionCopyWithImpl<$Res>;
  @override
  $Res call({String info, String force});
}

/// @nodoc
class __$AppVersionCopyWithImpl<$Res> extends _$AppVersionCopyWithImpl<$Res>
    implements _$AppVersionCopyWith<$Res> {
  __$AppVersionCopyWithImpl(
      _AppVersion _value, $Res Function(_AppVersion) _then)
      : super(_value, (v) => _then(v as _AppVersion));

  @override
  _AppVersion get _value => super._value as _AppVersion;

  @override
  $Res call({
    Object? info = freezed,
    Object? force = freezed,
  }) {
    return _then(_AppVersion(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      force: force == freezed
          ? _value.force
          : force // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppVersion implements _AppVersion {
  const _$_AppVersion({this.info = '', this.force = ''});

  factory _$_AppVersion.fromJson(Map<String, dynamic> json) =>
      _$_$_AppVersionFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String info;
  @JsonKey(defaultValue: '')
  @override
  final String force;

  @override
  String toString() {
    return 'AppVersion(info: $info, force: $force)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppVersion &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.force, force) ||
                const DeepCollectionEquality().equals(other.force, force)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(force);

  @JsonKey(ignore: true)
  @override
  _$AppVersionCopyWith<_AppVersion> get copyWith =>
      __$AppVersionCopyWithImpl<_AppVersion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppVersionToJson(this);
  }
}

abstract class _AppVersion implements AppVersion {
  const factory _AppVersion({String info, String force}) = _$_AppVersion;

  factory _AppVersion.fromJson(Map<String, dynamic> json) =
      _$_AppVersion.fromJson;

  @override
  String get info => throw _privateConstructorUsedError;
  @override
  String get force => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppVersionCopyWith<_AppVersion> get copyWith =>
      throw _privateConstructorUsedError;
}
