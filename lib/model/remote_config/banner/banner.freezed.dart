// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Banner _$BannerFromJson(Map<String, dynamic> json) {
  return _Banner.fromJson(json);
}

/// @nodoc
class _$BannerTearOff {
  const _$BannerTearOff();

  _Banner call({String img = '', String title = '', String url = ''}) {
    return _Banner(
      img: img,
      title: title,
      url: url,
    );
  }

  Banner fromJson(Map<String, Object> json) {
    return Banner.fromJson(json);
  }
}

/// @nodoc
const $Banner = _$BannerTearOff();

/// @nodoc
mixin _$Banner {
  String get img => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerCopyWith<Banner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerCopyWith<$Res> {
  factory $BannerCopyWith(Banner value, $Res Function(Banner) then) =
      _$BannerCopyWithImpl<$Res>;
  $Res call({String img, String title, String url});
}

/// @nodoc
class _$BannerCopyWithImpl<$Res> implements $BannerCopyWith<$Res> {
  _$BannerCopyWithImpl(this._value, this._then);

  final Banner _value;
  // ignore: unused_field
  final $Res Function(Banner) _then;

  @override
  $Res call({
    Object? img = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BannerCopyWith<$Res> implements $BannerCopyWith<$Res> {
  factory _$BannerCopyWith(_Banner value, $Res Function(_Banner) then) =
      __$BannerCopyWithImpl<$Res>;
  @override
  $Res call({String img, String title, String url});
}

/// @nodoc
class __$BannerCopyWithImpl<$Res> extends _$BannerCopyWithImpl<$Res>
    implements _$BannerCopyWith<$Res> {
  __$BannerCopyWithImpl(_Banner _value, $Res Function(_Banner) _then)
      : super(_value, (v) => _then(v as _Banner));

  @override
  _Banner get _value => super._value as _Banner;

  @override
  $Res call({
    Object? img = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_Banner(
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Banner extends _Banner {
  const _$_Banner({this.img = '', this.title = '', this.url = ''}) : super._();

  factory _$_Banner.fromJson(Map<String, dynamic> json) =>
      _$_$_BannerFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String img;
  @JsonKey(defaultValue: '')
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String url;

  @override
  String toString() {
    return 'Banner(img: $img, title: $title, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Banner &&
            (identical(other.img, img) ||
                const DeepCollectionEquality().equals(other.img, img)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(img) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$BannerCopyWith<_Banner> get copyWith =>
      __$BannerCopyWithImpl<_Banner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BannerToJson(this);
  }
}

abstract class _Banner extends Banner {
  const factory _Banner({String img, String title, String url}) = _$_Banner;
  const _Banner._() : super._();

  factory _Banner.fromJson(Map<String, dynamic> json) = _$_Banner.fromJson;

  @override
  String get img => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BannerCopyWith<_Banner> get copyWith => throw _privateConstructorUsedError;
}
