// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'emotion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Emotion _$EmotionFromJson(Map<String, dynamic> json) {
  return _Emotion.fromJson(json);
}

/// @nodoc
class _$EmotionTearOff {
  const _$EmotionTearOff();

  _Emotion call(
      {String id = '', String sentence = '', String draftStatus = ''}) {
    return _Emotion(
      id: id,
      sentence: sentence,
      draftStatus: draftStatus,
    );
  }

  Emotion fromJson(Map<String, Object> json) {
    return Emotion.fromJson(json);
  }
}

/// @nodoc
const $Emotion = _$EmotionTearOff();

/// @nodoc
mixin _$Emotion {
  String get id => throw _privateConstructorUsedError;
  String get sentence => throw _privateConstructorUsedError;
  String get draftStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmotionCopyWith<Emotion> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmotionCopyWith<$Res> {
  factory $EmotionCopyWith(Emotion value, $Res Function(Emotion) then) =
      _$EmotionCopyWithImpl<$Res>;
  $Res call({String id, String sentence, String draftStatus});
}

/// @nodoc
class _$EmotionCopyWithImpl<$Res> implements $EmotionCopyWith<$Res> {
  _$EmotionCopyWithImpl(this._value, this._then);

  final Emotion _value;
  // ignore: unused_field
  final $Res Function(Emotion) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? sentence = freezed,
    Object? draftStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sentence: sentence == freezed
          ? _value.sentence
          : sentence // ignore: cast_nullable_to_non_nullable
              as String,
      draftStatus: draftStatus == freezed
          ? _value.draftStatus
          : draftStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EmotionCopyWith<$Res> implements $EmotionCopyWith<$Res> {
  factory _$EmotionCopyWith(_Emotion value, $Res Function(_Emotion) then) =
      __$EmotionCopyWithImpl<$Res>;
  @override
  $Res call({String id, String sentence, String draftStatus});
}

/// @nodoc
class __$EmotionCopyWithImpl<$Res> extends _$EmotionCopyWithImpl<$Res>
    implements _$EmotionCopyWith<$Res> {
  __$EmotionCopyWithImpl(_Emotion _value, $Res Function(_Emotion) _then)
      : super(_value, (v) => _then(v as _Emotion));

  @override
  _Emotion get _value => super._value as _Emotion;

  @override
  $Res call({
    Object? id = freezed,
    Object? sentence = freezed,
    Object? draftStatus = freezed,
  }) {
    return _then(_Emotion(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sentence: sentence == freezed
          ? _value.sentence
          : sentence // ignore: cast_nullable_to_non_nullable
              as String,
      draftStatus: draftStatus == freezed
          ? _value.draftStatus
          : draftStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Emotion extends _Emotion {
  const _$_Emotion({this.id = '', this.sentence = '', this.draftStatus = ''})
      : super._();

  factory _$_Emotion.fromJson(Map<String, dynamic> json) =>
      _$_$_EmotionFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String id;
  @JsonKey(defaultValue: '')
  @override
  final String sentence;
  @JsonKey(defaultValue: '')
  @override
  final String draftStatus;

  @override
  String toString() {
    return 'Emotion(id: $id, sentence: $sentence, draftStatus: $draftStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Emotion &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sentence, sentence) ||
                const DeepCollectionEquality()
                    .equals(other.sentence, sentence)) &&
            (identical(other.draftStatus, draftStatus) ||
                const DeepCollectionEquality()
                    .equals(other.draftStatus, draftStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(sentence) ^
      const DeepCollectionEquality().hash(draftStatus);

  @JsonKey(ignore: true)
  @override
  _$EmotionCopyWith<_Emotion> get copyWith =>
      __$EmotionCopyWithImpl<_Emotion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EmotionToJson(this);
  }
}

abstract class _Emotion extends Emotion {
  const factory _Emotion({String id, String sentence, String draftStatus}) =
      _$_Emotion;
  const _Emotion._() : super._();

  factory _Emotion.fromJson(Map<String, dynamic> json) = _$_Emotion.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get sentence => throw _privateConstructorUsedError;
  @override
  String get draftStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmotionCopyWith<_Emotion> get copyWith =>
      throw _privateConstructorUsedError;
}
