// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'self_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SelfHistory _$SelfHistoryFromJson(Map<String, dynamic> json) {
  return _SelfHistory.fromJson(json);
}

/// @nodoc
class _$SelfHistoryTearOff {
  const _$SelfHistoryTearOff();

  _SelfHistory call(
      {int generation = 0,
      String photoDraftStatus = '',
      String id = '',
      required Emotion joy,
      required Emotion enjoy,
      required Emotion sorrow,
      required Emotion anger,
      List<Photo> photos = const <Photo>[]}) {
    return _SelfHistory(
      generation: generation,
      photoDraftStatus: photoDraftStatus,
      id: id,
      joy: joy,
      enjoy: enjoy,
      sorrow: sorrow,
      anger: anger,
      photos: photos,
    );
  }

  SelfHistory fromJson(Map<String, Object> json) {
    return SelfHistory.fromJson(json);
  }
}

/// @nodoc
const $SelfHistory = _$SelfHistoryTearOff();

/// @nodoc
mixin _$SelfHistory {
  int get generation => throw _privateConstructorUsedError;
  String get photoDraftStatus => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  Emotion get joy => throw _privateConstructorUsedError;
  Emotion get enjoy => throw _privateConstructorUsedError;
  Emotion get sorrow => throw _privateConstructorUsedError;
  Emotion get anger => throw _privateConstructorUsedError;
  List<Photo> get photos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelfHistoryCopyWith<SelfHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelfHistoryCopyWith<$Res> {
  factory $SelfHistoryCopyWith(
          SelfHistory value, $Res Function(SelfHistory) then) =
      _$SelfHistoryCopyWithImpl<$Res>;
  $Res call(
      {int generation,
      String photoDraftStatus,
      String id,
      Emotion joy,
      Emotion enjoy,
      Emotion sorrow,
      Emotion anger,
      List<Photo> photos});

  $EmotionCopyWith<$Res> get joy;
  $EmotionCopyWith<$Res> get enjoy;
  $EmotionCopyWith<$Res> get sorrow;
  $EmotionCopyWith<$Res> get anger;
}

/// @nodoc
class _$SelfHistoryCopyWithImpl<$Res> implements $SelfHistoryCopyWith<$Res> {
  _$SelfHistoryCopyWithImpl(this._value, this._then);

  final SelfHistory _value;
  // ignore: unused_field
  final $Res Function(SelfHistory) _then;

  @override
  $Res call({
    Object? generation = freezed,
    Object? photoDraftStatus = freezed,
    Object? id = freezed,
    Object? joy = freezed,
    Object? enjoy = freezed,
    Object? sorrow = freezed,
    Object? anger = freezed,
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      generation: generation == freezed
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as int,
      photoDraftStatus: photoDraftStatus == freezed
          ? _value.photoDraftStatus
          : photoDraftStatus // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      joy: joy == freezed
          ? _value.joy
          : joy // ignore: cast_nullable_to_non_nullable
              as Emotion,
      enjoy: enjoy == freezed
          ? _value.enjoy
          : enjoy // ignore: cast_nullable_to_non_nullable
              as Emotion,
      sorrow: sorrow == freezed
          ? _value.sorrow
          : sorrow // ignore: cast_nullable_to_non_nullable
              as Emotion,
      anger: anger == freezed
          ? _value.anger
          : anger // ignore: cast_nullable_to_non_nullable
              as Emotion,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }

  @override
  $EmotionCopyWith<$Res> get joy {
    return $EmotionCopyWith<$Res>(_value.joy, (value) {
      return _then(_value.copyWith(joy: value));
    });
  }

  @override
  $EmotionCopyWith<$Res> get enjoy {
    return $EmotionCopyWith<$Res>(_value.enjoy, (value) {
      return _then(_value.copyWith(enjoy: value));
    });
  }

  @override
  $EmotionCopyWith<$Res> get sorrow {
    return $EmotionCopyWith<$Res>(_value.sorrow, (value) {
      return _then(_value.copyWith(sorrow: value));
    });
  }

  @override
  $EmotionCopyWith<$Res> get anger {
    return $EmotionCopyWith<$Res>(_value.anger, (value) {
      return _then(_value.copyWith(anger: value));
    });
  }
}

/// @nodoc
abstract class _$SelfHistoryCopyWith<$Res>
    implements $SelfHistoryCopyWith<$Res> {
  factory _$SelfHistoryCopyWith(
          _SelfHistory value, $Res Function(_SelfHistory) then) =
      __$SelfHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int generation,
      String photoDraftStatus,
      String id,
      Emotion joy,
      Emotion enjoy,
      Emotion sorrow,
      Emotion anger,
      List<Photo> photos});

  @override
  $EmotionCopyWith<$Res> get joy;
  @override
  $EmotionCopyWith<$Res> get enjoy;
  @override
  $EmotionCopyWith<$Res> get sorrow;
  @override
  $EmotionCopyWith<$Res> get anger;
}

/// @nodoc
class __$SelfHistoryCopyWithImpl<$Res> extends _$SelfHistoryCopyWithImpl<$Res>
    implements _$SelfHistoryCopyWith<$Res> {
  __$SelfHistoryCopyWithImpl(
      _SelfHistory _value, $Res Function(_SelfHistory) _then)
      : super(_value, (v) => _then(v as _SelfHistory));

  @override
  _SelfHistory get _value => super._value as _SelfHistory;

  @override
  $Res call({
    Object? generation = freezed,
    Object? photoDraftStatus = freezed,
    Object? id = freezed,
    Object? joy = freezed,
    Object? enjoy = freezed,
    Object? sorrow = freezed,
    Object? anger = freezed,
    Object? photos = freezed,
  }) {
    return _then(_SelfHistory(
      generation: generation == freezed
          ? _value.generation
          : generation // ignore: cast_nullable_to_non_nullable
              as int,
      photoDraftStatus: photoDraftStatus == freezed
          ? _value.photoDraftStatus
          : photoDraftStatus // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      joy: joy == freezed
          ? _value.joy
          : joy // ignore: cast_nullable_to_non_nullable
              as Emotion,
      enjoy: enjoy == freezed
          ? _value.enjoy
          : enjoy // ignore: cast_nullable_to_non_nullable
              as Emotion,
      sorrow: sorrow == freezed
          ? _value.sorrow
          : sorrow // ignore: cast_nullable_to_non_nullable
              as Emotion,
      anger: anger == freezed
          ? _value.anger
          : anger // ignore: cast_nullable_to_non_nullable
              as Emotion,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SelfHistory extends _SelfHistory {
  const _$_SelfHistory(
      {this.generation = 0,
      this.photoDraftStatus = '',
      this.id = '',
      required this.joy,
      required this.enjoy,
      required this.sorrow,
      required this.anger,
      this.photos = const <Photo>[]})
      : super._();

  factory _$_SelfHistory.fromJson(Map<String, dynamic> json) =>
      _$_$_SelfHistoryFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int generation;
  @JsonKey(defaultValue: '')
  @override
  final String photoDraftStatus;
  @JsonKey(defaultValue: '')
  @override
  final String id;
  @override
  final Emotion joy;
  @override
  final Emotion enjoy;
  @override
  final Emotion sorrow;
  @override
  final Emotion anger;
  @JsonKey(defaultValue: const <Photo>[])
  @override
  final List<Photo> photos;

  @override
  String toString() {
    return 'SelfHistory(generation: $generation, photoDraftStatus: $photoDraftStatus, id: $id, joy: $joy, enjoy: $enjoy, sorrow: $sorrow, anger: $anger, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelfHistory &&
            (identical(other.generation, generation) ||
                const DeepCollectionEquality()
                    .equals(other.generation, generation)) &&
            (identical(other.photoDraftStatus, photoDraftStatus) ||
                const DeepCollectionEquality()
                    .equals(other.photoDraftStatus, photoDraftStatus)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.joy, joy) ||
                const DeepCollectionEquality().equals(other.joy, joy)) &&
            (identical(other.enjoy, enjoy) ||
                const DeepCollectionEquality().equals(other.enjoy, enjoy)) &&
            (identical(other.sorrow, sorrow) ||
                const DeepCollectionEquality().equals(other.sorrow, sorrow)) &&
            (identical(other.anger, anger) ||
                const DeepCollectionEquality().equals(other.anger, anger)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(generation) ^
      const DeepCollectionEquality().hash(photoDraftStatus) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(joy) ^
      const DeepCollectionEquality().hash(enjoy) ^
      const DeepCollectionEquality().hash(sorrow) ^
      const DeepCollectionEquality().hash(anger) ^
      const DeepCollectionEquality().hash(photos);

  @JsonKey(ignore: true)
  @override
  _$SelfHistoryCopyWith<_SelfHistory> get copyWith =>
      __$SelfHistoryCopyWithImpl<_SelfHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SelfHistoryToJson(this);
  }
}

abstract class _SelfHistory extends SelfHistory {
  const factory _SelfHistory(
      {int generation,
      String photoDraftStatus,
      String id,
      required Emotion joy,
      required Emotion enjoy,
      required Emotion sorrow,
      required Emotion anger,
      List<Photo> photos}) = _$_SelfHistory;
  const _SelfHistory._() : super._();

  factory _SelfHistory.fromJson(Map<String, dynamic> json) =
      _$_SelfHistory.fromJson;

  @override
  int get generation => throw _privateConstructorUsedError;
  @override
  String get photoDraftStatus => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  Emotion get joy => throw _privateConstructorUsedError;
  @override
  Emotion get enjoy => throw _privateConstructorUsedError;
  @override
  Emotion get sorrow => throw _privateConstructorUsedError;
  @override
  Emotion get anger => throw _privateConstructorUsedError;
  @override
  List<Photo> get photos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelfHistoryCopyWith<_SelfHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
