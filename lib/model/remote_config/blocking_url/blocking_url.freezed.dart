// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'blocking_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlockingUrl _$BlockingUrlFromJson(Map<String, dynamic> json) {
  return _BlockingUrl.fromJson(json);
}

/// @nodoc
class _$BlockingUrlTearOff {
  const _$BlockingUrlTearOff();

  _BlockingUrl call({List<String> urls = const ['']}) {
    return _BlockingUrl(
      urls: urls,
    );
  }

  BlockingUrl fromJson(Map<String, Object> json) {
    return BlockingUrl.fromJson(json);
  }
}

/// @nodoc
const $BlockingUrl = _$BlockingUrlTearOff();

/// @nodoc
mixin _$BlockingUrl {
  List<String> get urls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockingUrlCopyWith<BlockingUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockingUrlCopyWith<$Res> {
  factory $BlockingUrlCopyWith(
          BlockingUrl value, $Res Function(BlockingUrl) then) =
      _$BlockingUrlCopyWithImpl<$Res>;
  $Res call({List<String> urls});
}

/// @nodoc
class _$BlockingUrlCopyWithImpl<$Res> implements $BlockingUrlCopyWith<$Res> {
  _$BlockingUrlCopyWithImpl(this._value, this._then);

  final BlockingUrl _value;
  // ignore: unused_field
  final $Res Function(BlockingUrl) _then;

  @override
  $Res call({
    Object? urls = freezed,
  }) {
    return _then(_value.copyWith(
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$BlockingUrlCopyWith<$Res>
    implements $BlockingUrlCopyWith<$Res> {
  factory _$BlockingUrlCopyWith(
          _BlockingUrl value, $Res Function(_BlockingUrl) then) =
      __$BlockingUrlCopyWithImpl<$Res>;
  @override
  $Res call({List<String> urls});
}

/// @nodoc
class __$BlockingUrlCopyWithImpl<$Res> extends _$BlockingUrlCopyWithImpl<$Res>
    implements _$BlockingUrlCopyWith<$Res> {
  __$BlockingUrlCopyWithImpl(
      _BlockingUrl _value, $Res Function(_BlockingUrl) _then)
      : super(_value, (v) => _then(v as _BlockingUrl));

  @override
  _BlockingUrl get _value => super._value as _BlockingUrl;

  @override
  $Res call({
    Object? urls = freezed,
  }) {
    return _then(_BlockingUrl(
      urls: urls == freezed
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BlockingUrl extends _BlockingUrl {
  const _$_BlockingUrl({this.urls = const ['']}) : super._();

  factory _$_BlockingUrl.fromJson(Map<String, dynamic> json) =>
      _$_$_BlockingUrlFromJson(json);

  @JsonKey(defaultValue: const [''])
  @override
  final List<String> urls;

  @override
  String toString() {
    return 'BlockingUrl(urls: $urls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BlockingUrl &&
            (identical(other.urls, urls) ||
                const DeepCollectionEquality().equals(other.urls, urls)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(urls);

  @JsonKey(ignore: true)
  @override
  _$BlockingUrlCopyWith<_BlockingUrl> get copyWith =>
      __$BlockingUrlCopyWithImpl<_BlockingUrl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BlockingUrlToJson(this);
  }
}

abstract class _BlockingUrl extends BlockingUrl {
  const factory _BlockingUrl({List<String> urls}) = _$_BlockingUrl;
  const _BlockingUrl._() : super._();

  factory _BlockingUrl.fromJson(Map<String, dynamic> json) =
      _$_BlockingUrl.fromJson;

  @override
  List<String> get urls => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BlockingUrlCopyWith<_BlockingUrl> get copyWith =>
      throw _privateConstructorUsedError;
}
