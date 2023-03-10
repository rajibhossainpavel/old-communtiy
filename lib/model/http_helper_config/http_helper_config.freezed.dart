// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'http_helper_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HttpHelperConfigTearOff {
  const _$HttpHelperConfigTearOff();

  _HttpHelperConfig call(
      {required String baseUrl,
      int maxAttempts = 5,
      int? connectTimeout,
      int? receiveTimeout,
      int? sendTimeout,
      Map<String, dynamic> headers = const <String, dynamic>{}}) {
    return _HttpHelperConfig(
      baseUrl: baseUrl,
      maxAttempts: maxAttempts,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
      headers: headers,
    );
  }
}

/// @nodoc
const $HttpHelperConfig = _$HttpHelperConfigTearOff();

/// @nodoc
mixin _$HttpHelperConfig {
  String get baseUrl => throw _privateConstructorUsedError;
  int get maxAttempts => throw _privateConstructorUsedError;
  int? get connectTimeout => throw _privateConstructorUsedError;
  int? get receiveTimeout => throw _privateConstructorUsedError;
  int? get sendTimeout => throw _privateConstructorUsedError;
  Map<String, dynamic> get headers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HttpHelperConfigCopyWith<HttpHelperConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpHelperConfigCopyWith<$Res> {
  factory $HttpHelperConfigCopyWith(
          HttpHelperConfig value, $Res Function(HttpHelperConfig) then) =
      _$HttpHelperConfigCopyWithImpl<$Res>;
  $Res call(
      {String baseUrl,
      int maxAttempts,
      int? connectTimeout,
      int? receiveTimeout,
      int? sendTimeout,
      Map<String, dynamic> headers});
}

/// @nodoc
class _$HttpHelperConfigCopyWithImpl<$Res>
    implements $HttpHelperConfigCopyWith<$Res> {
  _$HttpHelperConfigCopyWithImpl(this._value, this._then);

  final HttpHelperConfig _value;
  // ignore: unused_field
  final $Res Function(HttpHelperConfig) _then;

  @override
  $Res call({
    Object? baseUrl = freezed,
    Object? maxAttempts = freezed,
    Object? connectTimeout = freezed,
    Object? receiveTimeout = freezed,
    Object? sendTimeout = freezed,
    Object? headers = freezed,
  }) {
    return _then(_value.copyWith(
      baseUrl: baseUrl == freezed
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      maxAttempts: maxAttempts == freezed
          ? _value.maxAttempts
          : maxAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      connectTimeout: connectTimeout == freezed
          ? _value.connectTimeout
          : connectTimeout // ignore: cast_nullable_to_non_nullable
              as int?,
      receiveTimeout: receiveTimeout == freezed
          ? _value.receiveTimeout
          : receiveTimeout // ignore: cast_nullable_to_non_nullable
              as int?,
      sendTimeout: sendTimeout == freezed
          ? _value.sendTimeout
          : sendTimeout // ignore: cast_nullable_to_non_nullable
              as int?,
      headers: headers == freezed
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$HttpHelperConfigCopyWith<$Res>
    implements $HttpHelperConfigCopyWith<$Res> {
  factory _$HttpHelperConfigCopyWith(
          _HttpHelperConfig value, $Res Function(_HttpHelperConfig) then) =
      __$HttpHelperConfigCopyWithImpl<$Res>;
  @override
  $Res call(
      {String baseUrl,
      int maxAttempts,
      int? connectTimeout,
      int? receiveTimeout,
      int? sendTimeout,
      Map<String, dynamic> headers});
}

/// @nodoc
class __$HttpHelperConfigCopyWithImpl<$Res>
    extends _$HttpHelperConfigCopyWithImpl<$Res>
    implements _$HttpHelperConfigCopyWith<$Res> {
  __$HttpHelperConfigCopyWithImpl(
      _HttpHelperConfig _value, $Res Function(_HttpHelperConfig) _then)
      : super(_value, (v) => _then(v as _HttpHelperConfig));

  @override
  _HttpHelperConfig get _value => super._value as _HttpHelperConfig;

  @override
  $Res call({
    Object? baseUrl = freezed,
    Object? maxAttempts = freezed,
    Object? connectTimeout = freezed,
    Object? receiveTimeout = freezed,
    Object? sendTimeout = freezed,
    Object? headers = freezed,
  }) {
    return _then(_HttpHelperConfig(
      baseUrl: baseUrl == freezed
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      maxAttempts: maxAttempts == freezed
          ? _value.maxAttempts
          : maxAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      connectTimeout: connectTimeout == freezed
          ? _value.connectTimeout
          : connectTimeout // ignore: cast_nullable_to_non_nullable
              as int?,
      receiveTimeout: receiveTimeout == freezed
          ? _value.receiveTimeout
          : receiveTimeout // ignore: cast_nullable_to_non_nullable
              as int?,
      sendTimeout: sendTimeout == freezed
          ? _value.sendTimeout
          : sendTimeout // ignore: cast_nullable_to_non_nullable
              as int?,
      headers: headers == freezed
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_HttpHelperConfig extends _HttpHelperConfig {
  const _$_HttpHelperConfig(
      {required this.baseUrl,
      this.maxAttempts = 5,
      this.connectTimeout,
      this.receiveTimeout,
      this.sendTimeout,
      this.headers = const <String, dynamic>{}})
      : super._();

  @override
  final String baseUrl;
  @JsonKey(defaultValue: 5)
  @override
  final int maxAttempts;
  @override
  final int? connectTimeout;
  @override
  final int? receiveTimeout;
  @override
  final int? sendTimeout;
  @JsonKey(defaultValue: const <String, dynamic>{})
  @override
  final Map<String, dynamic> headers;

  @override
  String toString() {
    return 'HttpHelperConfig(baseUrl: $baseUrl, maxAttempts: $maxAttempts, connectTimeout: $connectTimeout, receiveTimeout: $receiveTimeout, sendTimeout: $sendTimeout, headers: $headers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HttpHelperConfig &&
            (identical(other.baseUrl, baseUrl) ||
                const DeepCollectionEquality()
                    .equals(other.baseUrl, baseUrl)) &&
            (identical(other.maxAttempts, maxAttempts) ||
                const DeepCollectionEquality()
                    .equals(other.maxAttempts, maxAttempts)) &&
            (identical(other.connectTimeout, connectTimeout) ||
                const DeepCollectionEquality()
                    .equals(other.connectTimeout, connectTimeout)) &&
            (identical(other.receiveTimeout, receiveTimeout) ||
                const DeepCollectionEquality()
                    .equals(other.receiveTimeout, receiveTimeout)) &&
            (identical(other.sendTimeout, sendTimeout) ||
                const DeepCollectionEquality()
                    .equals(other.sendTimeout, sendTimeout)) &&
            (identical(other.headers, headers) ||
                const DeepCollectionEquality().equals(other.headers, headers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(baseUrl) ^
      const DeepCollectionEquality().hash(maxAttempts) ^
      const DeepCollectionEquality().hash(connectTimeout) ^
      const DeepCollectionEquality().hash(receiveTimeout) ^
      const DeepCollectionEquality().hash(sendTimeout) ^
      const DeepCollectionEquality().hash(headers);

  @JsonKey(ignore: true)
  @override
  _$HttpHelperConfigCopyWith<_HttpHelperConfig> get copyWith =>
      __$HttpHelperConfigCopyWithImpl<_HttpHelperConfig>(this, _$identity);
}

abstract class _HttpHelperConfig extends HttpHelperConfig {
  const factory _HttpHelperConfig(
      {required String baseUrl,
      int maxAttempts,
      int? connectTimeout,
      int? receiveTimeout,
      int? sendTimeout,
      Map<String, dynamic> headers}) = _$_HttpHelperConfig;
  const _HttpHelperConfig._() : super._();

  @override
  String get baseUrl => throw _privateConstructorUsedError;
  @override
  int get maxAttempts => throw _privateConstructorUsedError;
  @override
  int? get connectTimeout => throw _privateConstructorUsedError;
  @override
  int? get receiveTimeout => throw _privateConstructorUsedError;
  @override
  int? get sendTimeout => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get headers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HttpHelperConfigCopyWith<_HttpHelperConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
