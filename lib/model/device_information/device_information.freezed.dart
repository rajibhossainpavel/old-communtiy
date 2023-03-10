// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'device_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeviceInformationTearOff {
  const _$DeviceInformationTearOff();

  _DeviceInformation call(
      {required OS os,
      required String osVersion,
      required String model,
      required String appVersion,
      required String carrier,
      required Locale? locale}) {
    return _DeviceInformation(
      os: os,
      osVersion: osVersion,
      model: model,
      appVersion: appVersion,
      carrier: carrier,
      locale: locale,
    );
  }
}

/// @nodoc
const $DeviceInformation = _$DeviceInformationTearOff();

/// @nodoc
mixin _$DeviceInformation {
  OS get os => throw _privateConstructorUsedError;
  String get osVersion => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get appVersion => throw _privateConstructorUsedError;
  String get carrier => throw _privateConstructorUsedError;
  Locale? get locale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceInformationCopyWith<DeviceInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInformationCopyWith<$Res> {
  factory $DeviceInformationCopyWith(
          DeviceInformation value, $Res Function(DeviceInformation) then) =
      _$DeviceInformationCopyWithImpl<$Res>;
  $Res call(
      {OS os,
      String osVersion,
      String model,
      String appVersion,
      String carrier,
      Locale? locale});
}

/// @nodoc
class _$DeviceInformationCopyWithImpl<$Res>
    implements $DeviceInformationCopyWith<$Res> {
  _$DeviceInformationCopyWithImpl(this._value, this._then);

  final DeviceInformation _value;
  // ignore: unused_field
  final $Res Function(DeviceInformation) _then;

  @override
  $Res call({
    Object? os = freezed,
    Object? osVersion = freezed,
    Object? model = freezed,
    Object? appVersion = freezed,
    Object? carrier = freezed,
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      os: os == freezed
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as OS,
      osVersion: osVersion == freezed
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: appVersion == freezed
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      carrier: carrier == freezed
          ? _value.carrier
          : carrier // ignore: cast_nullable_to_non_nullable
              as String,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc
abstract class _$DeviceInformationCopyWith<$Res>
    implements $DeviceInformationCopyWith<$Res> {
  factory _$DeviceInformationCopyWith(
          _DeviceInformation value, $Res Function(_DeviceInformation) then) =
      __$DeviceInformationCopyWithImpl<$Res>;
  @override
  $Res call(
      {OS os,
      String osVersion,
      String model,
      String appVersion,
      String carrier,
      Locale? locale});
}

/// @nodoc
class __$DeviceInformationCopyWithImpl<$Res>
    extends _$DeviceInformationCopyWithImpl<$Res>
    implements _$DeviceInformationCopyWith<$Res> {
  __$DeviceInformationCopyWithImpl(
      _DeviceInformation _value, $Res Function(_DeviceInformation) _then)
      : super(_value, (v) => _then(v as _DeviceInformation));

  @override
  _DeviceInformation get _value => super._value as _DeviceInformation;

  @override
  $Res call({
    Object? os = freezed,
    Object? osVersion = freezed,
    Object? model = freezed,
    Object? appVersion = freezed,
    Object? carrier = freezed,
    Object? locale = freezed,
  }) {
    return _then(_DeviceInformation(
      os: os == freezed
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as OS,
      osVersion: osVersion == freezed
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: appVersion == freezed
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      carrier: carrier == freezed
          ? _value.carrier
          : carrier // ignore: cast_nullable_to_non_nullable
              as String,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$_DeviceInformation extends _DeviceInformation {
  const _$_DeviceInformation(
      {required this.os,
      required this.osVersion,
      required this.model,
      required this.appVersion,
      required this.carrier,
      required this.locale})
      : super._();

  @override
  final OS os;
  @override
  final String osVersion;
  @override
  final String model;
  @override
  final String appVersion;
  @override
  final String carrier;
  @override
  final Locale? locale;

  @override
  String toString() {
    return 'DeviceInformation(os: $os, osVersion: $osVersion, model: $model, appVersion: $appVersion, carrier: $carrier, locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeviceInformation &&
            (identical(other.os, os) ||
                const DeepCollectionEquality().equals(other.os, os)) &&
            (identical(other.osVersion, osVersion) ||
                const DeepCollectionEquality()
                    .equals(other.osVersion, osVersion)) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.appVersion, appVersion) ||
                const DeepCollectionEquality()
                    .equals(other.appVersion, appVersion)) &&
            (identical(other.carrier, carrier) ||
                const DeepCollectionEquality()
                    .equals(other.carrier, carrier)) &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(os) ^
      const DeepCollectionEquality().hash(osVersion) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(appVersion) ^
      const DeepCollectionEquality().hash(carrier) ^
      const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  _$DeviceInformationCopyWith<_DeviceInformation> get copyWith =>
      __$DeviceInformationCopyWithImpl<_DeviceInformation>(this, _$identity);
}

abstract class _DeviceInformation extends DeviceInformation {
  const factory _DeviceInformation(
      {required OS os,
      required String osVersion,
      required String model,
      required String appVersion,
      required String carrier,
      required Locale? locale}) = _$_DeviceInformation;
  const _DeviceInformation._() : super._();

  @override
  OS get os => throw _privateConstructorUsedError;
  @override
  String get osVersion => throw _privateConstructorUsedError;
  @override
  String get model => throw _privateConstructorUsedError;
  @override
  String get appVersion => throw _privateConstructorUsedError;
  @override
  String get carrier => throw _privateConstructorUsedError;
  @override
  Locale? get locale => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeviceInformationCopyWith<_DeviceInformation> get copyWith =>
      throw _privateConstructorUsedError;
}
