// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'diary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Diary _$DiaryFromJson(Map<String, dynamic> json) {
  return _Diary.fromJson(json);
}

/// @nodoc
class _$DiaryTearOff {
  const _$DiaryTearOff();

  _Diary call(
      {int comments = 0,
      String id = '',
      String type = '',
      String text = '',
      String media = '',
      int smile = 0,
      bool isSmiled = false,
      bool matched = false,
      String time = '',
      int unread = 0,
      DiaryUser? user}) {
    return _Diary(
      comments: comments,
      id: id,
      type: type,
      text: text,
      media: media,
      smile: smile,
      isSmiled: isSmiled,
      matched: matched,
      time: time,
      unread: unread,
      user: user,
    );
  }

  Diary fromJson(Map<String, Object> json) {
    return Diary.fromJson(json);
  }
}

/// @nodoc
const $Diary = _$DiaryTearOff();

/// @nodoc
mixin _$Diary {
  int get comments => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get media => throw _privateConstructorUsedError;
  int get smile => throw _privateConstructorUsedError;
  bool get isSmiled => throw _privateConstructorUsedError;
  bool get matched => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  int get unread => throw _privateConstructorUsedError;
  DiaryUser? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiaryCopyWith<Diary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryCopyWith<$Res> {
  factory $DiaryCopyWith(Diary value, $Res Function(Diary) then) =
      _$DiaryCopyWithImpl<$Res>;
  $Res call(
      {int comments,
      String id,
      String type,
      String text,
      String media,
      int smile,
      bool isSmiled,
      bool matched,
      String time,
      int unread,
      DiaryUser? user});

  $DiaryUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$DiaryCopyWithImpl<$Res> implements $DiaryCopyWith<$Res> {
  _$DiaryCopyWithImpl(this._value, this._then);

  final Diary _value;
  // ignore: unused_field
  final $Res Function(Diary) _then;

  @override
  $Res call({
    Object? comments = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? text = freezed,
    Object? media = freezed,
    Object? smile = freezed,
    Object? isSmiled = freezed,
    Object? matched = freezed,
    Object? time = freezed,
    Object? unread = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String,
      smile: smile == freezed
          ? _value.smile
          : smile // ignore: cast_nullable_to_non_nullable
              as int,
      isSmiled: isSmiled == freezed
          ? _value.isSmiled
          : isSmiled // ignore: cast_nullable_to_non_nullable
              as bool,
      matched: matched == freezed
          ? _value.matched
          : matched // ignore: cast_nullable_to_non_nullable
              as bool,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DiaryUser?,
    ));
  }

  @override
  $DiaryUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $DiaryUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$DiaryCopyWith<$Res> implements $DiaryCopyWith<$Res> {
  factory _$DiaryCopyWith(_Diary value, $Res Function(_Diary) then) =
      __$DiaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int comments,
      String id,
      String type,
      String text,
      String media,
      int smile,
      bool isSmiled,
      bool matched,
      String time,
      int unread,
      DiaryUser? user});

  @override
  $DiaryUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$DiaryCopyWithImpl<$Res> extends _$DiaryCopyWithImpl<$Res>
    implements _$DiaryCopyWith<$Res> {
  __$DiaryCopyWithImpl(_Diary _value, $Res Function(_Diary) _then)
      : super(_value, (v) => _then(v as _Diary));

  @override
  _Diary get _value => super._value as _Diary;

  @override
  $Res call({
    Object? comments = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? text = freezed,
    Object? media = freezed,
    Object? smile = freezed,
    Object? isSmiled = freezed,
    Object? matched = freezed,
    Object? time = freezed,
    Object? unread = freezed,
    Object? user = freezed,
  }) {
    return _then(_Diary(
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String,
      smile: smile == freezed
          ? _value.smile
          : smile // ignore: cast_nullable_to_non_nullable
              as int,
      isSmiled: isSmiled == freezed
          ? _value.isSmiled
          : isSmiled // ignore: cast_nullable_to_non_nullable
              as bool,
      matched: matched == freezed
          ? _value.matched
          : matched // ignore: cast_nullable_to_non_nullable
              as bool,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as int,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DiaryUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Diary extends _Diary {
  const _$_Diary(
      {this.comments = 0,
      this.id = '',
      this.type = '',
      this.text = '',
      this.media = '',
      this.smile = 0,
      this.isSmiled = false,
      this.matched = false,
      this.time = '',
      this.unread = 0,
      this.user})
      : super._();

  factory _$_Diary.fromJson(Map<String, dynamic> json) =>
      _$_$_DiaryFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int comments;
  @JsonKey(defaultValue: '')
  @override
  final String id;
  @JsonKey(defaultValue: '')
  @override
  final String type;
  @JsonKey(defaultValue: '')
  @override
  final String text;
  @JsonKey(defaultValue: '')
  @override
  final String media;
  @JsonKey(defaultValue: 0)
  @override
  final int smile;
  @JsonKey(defaultValue: false)
  @override
  final bool isSmiled;
  @JsonKey(defaultValue: false)
  @override
  final bool matched;
  @JsonKey(defaultValue: '')
  @override
  final String time;
  @JsonKey(defaultValue: 0)
  @override
  final int unread;
  @override
  final DiaryUser? user;

  @override
  String toString() {
    return 'Diary(comments: $comments, id: $id, type: $type, text: $text, media: $media, smile: $smile, isSmiled: $isSmiled, matched: $matched, time: $time, unread: $unread, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Diary &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.media, media) ||
                const DeepCollectionEquality().equals(other.media, media)) &&
            (identical(other.smile, smile) ||
                const DeepCollectionEquality().equals(other.smile, smile)) &&
            (identical(other.isSmiled, isSmiled) ||
                const DeepCollectionEquality()
                    .equals(other.isSmiled, isSmiled)) &&
            (identical(other.matched, matched) ||
                const DeepCollectionEquality()
                    .equals(other.matched, matched)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.unread, unread) ||
                const DeepCollectionEquality().equals(other.unread, unread)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(media) ^
      const DeepCollectionEquality().hash(smile) ^
      const DeepCollectionEquality().hash(isSmiled) ^
      const DeepCollectionEquality().hash(matched) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(unread) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$DiaryCopyWith<_Diary> get copyWith =>
      __$DiaryCopyWithImpl<_Diary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiaryToJson(this);
  }
}

abstract class _Diary extends Diary {
  const factory _Diary(
      {int comments,
      String id,
      String type,
      String text,
      String media,
      int smile,
      bool isSmiled,
      bool matched,
      String time,
      int unread,
      DiaryUser? user}) = _$_Diary;
  const _Diary._() : super._();

  factory _Diary.fromJson(Map<String, dynamic> json) = _$_Diary.fromJson;

  @override
  int get comments => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  String get media => throw _privateConstructorUsedError;
  @override
  int get smile => throw _privateConstructorUsedError;
  @override
  bool get isSmiled => throw _privateConstructorUsedError;
  @override
  bool get matched => throw _privateConstructorUsedError;
  @override
  String get time => throw _privateConstructorUsedError;
  @override
  int get unread => throw _privateConstructorUsedError;
  @override
  DiaryUser? get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiaryCopyWith<_Diary> get copyWith => throw _privateConstructorUsedError;
}
