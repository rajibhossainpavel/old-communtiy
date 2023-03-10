// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'diary_comment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DiaryCommentStateTearOff {
  const _$DiaryCommentStateTearOff();

  _DiaryCommentState call(
      {List<CommentMessage>? commentMessages = null,
      String text = '',
      bool isOwn = false}) {
    return _DiaryCommentState(
      commentMessages: commentMessages,
      text: text,
      isOwn: isOwn,
    );
  }
}

/// @nodoc
const $DiaryCommentState = _$DiaryCommentStateTearOff();

/// @nodoc
mixin _$DiaryCommentState {
  List<CommentMessage>? get commentMessages =>
      throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  bool get isOwn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiaryCommentStateCopyWith<DiaryCommentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryCommentStateCopyWith<$Res> {
  factory $DiaryCommentStateCopyWith(
          DiaryCommentState value, $Res Function(DiaryCommentState) then) =
      _$DiaryCommentStateCopyWithImpl<$Res>;
  $Res call({List<CommentMessage>? commentMessages, String text, bool isOwn});
}

/// @nodoc
class _$DiaryCommentStateCopyWithImpl<$Res>
    implements $DiaryCommentStateCopyWith<$Res> {
  _$DiaryCommentStateCopyWithImpl(this._value, this._then);

  final DiaryCommentState _value;
  // ignore: unused_field
  final $Res Function(DiaryCommentState) _then;

  @override
  $Res call({
    Object? commentMessages = freezed,
    Object? text = freezed,
    Object? isOwn = freezed,
  }) {
    return _then(_value.copyWith(
      commentMessages: commentMessages == freezed
          ? _value.commentMessages
          : commentMessages // ignore: cast_nullable_to_non_nullable
              as List<CommentMessage>?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isOwn: isOwn == freezed
          ? _value.isOwn
          : isOwn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DiaryCommentStateCopyWith<$Res>
    implements $DiaryCommentStateCopyWith<$Res> {
  factory _$DiaryCommentStateCopyWith(
          _DiaryCommentState value, $Res Function(_DiaryCommentState) then) =
      __$DiaryCommentStateCopyWithImpl<$Res>;
  @override
  $Res call({List<CommentMessage>? commentMessages, String text, bool isOwn});
}

/// @nodoc
class __$DiaryCommentStateCopyWithImpl<$Res>
    extends _$DiaryCommentStateCopyWithImpl<$Res>
    implements _$DiaryCommentStateCopyWith<$Res> {
  __$DiaryCommentStateCopyWithImpl(
      _DiaryCommentState _value, $Res Function(_DiaryCommentState) _then)
      : super(_value, (v) => _then(v as _DiaryCommentState));

  @override
  _DiaryCommentState get _value => super._value as _DiaryCommentState;

  @override
  $Res call({
    Object? commentMessages = freezed,
    Object? text = freezed,
    Object? isOwn = freezed,
  }) {
    return _then(_DiaryCommentState(
      commentMessages: commentMessages == freezed
          ? _value.commentMessages
          : commentMessages // ignore: cast_nullable_to_non_nullable
              as List<CommentMessage>?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isOwn: isOwn == freezed
          ? _value.isOwn
          : isOwn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DiaryCommentState extends _DiaryCommentState {
  const _$_DiaryCommentState(
      {this.commentMessages = null, this.text = '', this.isOwn = false})
      : super._();

  @JsonKey(defaultValue: null)
  @override
  final List<CommentMessage>? commentMessages;
  @JsonKey(defaultValue: '')
  @override
  final String text;
  @JsonKey(defaultValue: false)
  @override
  final bool isOwn;

  @override
  String toString() {
    return 'DiaryCommentState(commentMessages: $commentMessages, text: $text, isOwn: $isOwn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiaryCommentState &&
            (identical(other.commentMessages, commentMessages) ||
                const DeepCollectionEquality()
                    .equals(other.commentMessages, commentMessages)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.isOwn, isOwn) ||
                const DeepCollectionEquality().equals(other.isOwn, isOwn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(commentMessages) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(isOwn);

  @JsonKey(ignore: true)
  @override
  _$DiaryCommentStateCopyWith<_DiaryCommentState> get copyWith =>
      __$DiaryCommentStateCopyWithImpl<_DiaryCommentState>(this, _$identity);
}

abstract class _DiaryCommentState extends DiaryCommentState {
  const factory _DiaryCommentState(
      {List<CommentMessage>? commentMessages,
      String text,
      bool isOwn}) = _$_DiaryCommentState;
  const _DiaryCommentState._() : super._();

  @override
  List<CommentMessage>? get commentMessages =>
      throw _privateConstructorUsedError;
  @override
  String get text => throw _privateConstructorUsedError;
  @override
  bool get isOwn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiaryCommentStateCopyWith<_DiaryCommentState> get copyWith =>
      throw _privateConstructorUsedError;
}
