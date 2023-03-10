// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
class _$PhotoTearOff {
  const _$PhotoTearOff();

  _Photo call({String photoPath = '', String caption = ''}) {
    return _Photo(
      photoPath: photoPath,
      caption: caption,
    );
  }

  Photo fromJson(Map<String, Object> json) {
    return Photo.fromJson(json);
  }
}

/// @nodoc
const $Photo = _$PhotoTearOff();

/// @nodoc
mixin _$Photo {
  String get photoPath => throw _privateConstructorUsedError;
  String get caption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res>;
  $Res call({String photoPath, String caption});
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res> implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  final Photo _value;
  // ignore: unused_field
  final $Res Function(Photo) _then;

  @override
  $Res call({
    Object? photoPath = freezed,
    Object? caption = freezed,
  }) {
    return _then(_value.copyWith(
      photoPath: photoPath == freezed
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
      caption: caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PhotoCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$PhotoCopyWith(_Photo value, $Res Function(_Photo) then) =
      __$PhotoCopyWithImpl<$Res>;
  @override
  $Res call({String photoPath, String caption});
}

/// @nodoc
class __$PhotoCopyWithImpl<$Res> extends _$PhotoCopyWithImpl<$Res>
    implements _$PhotoCopyWith<$Res> {
  __$PhotoCopyWithImpl(_Photo _value, $Res Function(_Photo) _then)
      : super(_value, (v) => _then(v as _Photo));

  @override
  _Photo get _value => super._value as _Photo;

  @override
  $Res call({
    Object? photoPath = freezed,
    Object? caption = freezed,
  }) {
    return _then(_Photo(
      photoPath: photoPath == freezed
          ? _value.photoPath
          : photoPath // ignore: cast_nullable_to_non_nullable
              as String,
      caption: caption == freezed
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Photo extends _Photo {
  const _$_Photo({this.photoPath = '', this.caption = ''}) : super._();

  factory _$_Photo.fromJson(Map<String, dynamic> json) =>
      _$_$_PhotoFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String photoPath;
  @JsonKey(defaultValue: '')
  @override
  final String caption;

  @override
  String toString() {
    return 'Photo(photoPath: $photoPath, caption: $caption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Photo &&
            (identical(other.photoPath, photoPath) ||
                const DeepCollectionEquality()
                    .equals(other.photoPath, photoPath)) &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality().equals(other.caption, caption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photoPath) ^
      const DeepCollectionEquality().hash(caption);

  @JsonKey(ignore: true)
  @override
  _$PhotoCopyWith<_Photo> get copyWith =>
      __$PhotoCopyWithImpl<_Photo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PhotoToJson(this);
  }
}

abstract class _Photo extends Photo {
  const factory _Photo({String photoPath, String caption}) = _$_Photo;
  const _Photo._() : super._();

  factory _Photo.fromJson(Map<String, dynamic> json) = _$_Photo.fromJson;

  @override
  String get photoPath => throw _privateConstructorUsedError;
  @override
  String get caption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PhotoCopyWith<_Photo> get copyWith => throw _privateConstructorUsedError;
}
