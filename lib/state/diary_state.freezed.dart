// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'diary_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DiaryStateTearOff {
  const _$DiaryStateTearOff();

  _DiaryState call(
      {String uuid = "",
      List<Diary> recentDiaries = const <Diary>[],
      List<Diary> matchedDiaries = const <Diary>[],
      bool isLoadingRecent = false,
      bool isLoadingMatched = false,
      bool isLoadingSmile = false,
      bool hasNextRecent = true,
      bool hasNextMatched = true,
      Banner? banner = null}) {
    return _DiaryState(
      uuid: uuid,
      recentDiaries: recentDiaries,
      matchedDiaries: matchedDiaries,
      isLoadingRecent: isLoadingRecent,
      isLoadingMatched: isLoadingMatched,
      isLoadingSmile: isLoadingSmile,
      hasNextRecent: hasNextRecent,
      hasNextMatched: hasNextMatched,
      banner: banner,
    );
  }
}

/// @nodoc
const $DiaryState = _$DiaryStateTearOff();

/// @nodoc
mixin _$DiaryState {
  String get uuid => throw _privateConstructorUsedError;
  List<Diary> get recentDiaries => throw _privateConstructorUsedError;
  List<Diary> get matchedDiaries => throw _privateConstructorUsedError;
  bool get isLoadingRecent => throw _privateConstructorUsedError;
  bool get isLoadingMatched => throw _privateConstructorUsedError;
  bool get isLoadingSmile => throw _privateConstructorUsedError;
  bool get hasNextRecent => throw _privateConstructorUsedError;
  bool get hasNextMatched => throw _privateConstructorUsedError;
  Banner? get banner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiaryStateCopyWith<DiaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryStateCopyWith<$Res> {
  factory $DiaryStateCopyWith(
          DiaryState value, $Res Function(DiaryState) then) =
      _$DiaryStateCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      List<Diary> recentDiaries,
      List<Diary> matchedDiaries,
      bool isLoadingRecent,
      bool isLoadingMatched,
      bool isLoadingSmile,
      bool hasNextRecent,
      bool hasNextMatched,
      Banner? banner});

  $BannerCopyWith<$Res>? get banner;
}

/// @nodoc
class _$DiaryStateCopyWithImpl<$Res> implements $DiaryStateCopyWith<$Res> {
  _$DiaryStateCopyWithImpl(this._value, this._then);

  final DiaryState _value;
  // ignore: unused_field
  final $Res Function(DiaryState) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? recentDiaries = freezed,
    Object? matchedDiaries = freezed,
    Object? isLoadingRecent = freezed,
    Object? isLoadingMatched = freezed,
    Object? isLoadingSmile = freezed,
    Object? hasNextRecent = freezed,
    Object? hasNextMatched = freezed,
    Object? banner = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      recentDiaries: recentDiaries == freezed
          ? _value.recentDiaries
          : recentDiaries // ignore: cast_nullable_to_non_nullable
              as List<Diary>,
      matchedDiaries: matchedDiaries == freezed
          ? _value.matchedDiaries
          : matchedDiaries // ignore: cast_nullable_to_non_nullable
              as List<Diary>,
      isLoadingRecent: isLoadingRecent == freezed
          ? _value.isLoadingRecent
          : isLoadingRecent // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMatched: isLoadingMatched == freezed
          ? _value.isLoadingMatched
          : isLoadingMatched // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSmile: isLoadingSmile == freezed
          ? _value.isLoadingSmile
          : isLoadingSmile // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNextRecent: hasNextRecent == freezed
          ? _value.hasNextRecent
          : hasNextRecent // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNextMatched: hasNextMatched == freezed
          ? _value.hasNextMatched
          : hasNextMatched // ignore: cast_nullable_to_non_nullable
              as bool,
      banner: banner == freezed
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as Banner?,
    ));
  }

  @override
  $BannerCopyWith<$Res>? get banner {
    if (_value.banner == null) {
      return null;
    }

    return $BannerCopyWith<$Res>(_value.banner!, (value) {
      return _then(_value.copyWith(banner: value));
    });
  }
}

/// @nodoc
abstract class _$DiaryStateCopyWith<$Res> implements $DiaryStateCopyWith<$Res> {
  factory _$DiaryStateCopyWith(
          _DiaryState value, $Res Function(_DiaryState) then) =
      __$DiaryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      List<Diary> recentDiaries,
      List<Diary> matchedDiaries,
      bool isLoadingRecent,
      bool isLoadingMatched,
      bool isLoadingSmile,
      bool hasNextRecent,
      bool hasNextMatched,
      Banner? banner});

  @override
  $BannerCopyWith<$Res>? get banner;
}

/// @nodoc
class __$DiaryStateCopyWithImpl<$Res> extends _$DiaryStateCopyWithImpl<$Res>
    implements _$DiaryStateCopyWith<$Res> {
  __$DiaryStateCopyWithImpl(
      _DiaryState _value, $Res Function(_DiaryState) _then)
      : super(_value, (v) => _then(v as _DiaryState));

  @override
  _DiaryState get _value => super._value as _DiaryState;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? recentDiaries = freezed,
    Object? matchedDiaries = freezed,
    Object? isLoadingRecent = freezed,
    Object? isLoadingMatched = freezed,
    Object? isLoadingSmile = freezed,
    Object? hasNextRecent = freezed,
    Object? hasNextMatched = freezed,
    Object? banner = freezed,
  }) {
    return _then(_DiaryState(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      recentDiaries: recentDiaries == freezed
          ? _value.recentDiaries
          : recentDiaries // ignore: cast_nullable_to_non_nullable
              as List<Diary>,
      matchedDiaries: matchedDiaries == freezed
          ? _value.matchedDiaries
          : matchedDiaries // ignore: cast_nullable_to_non_nullable
              as List<Diary>,
      isLoadingRecent: isLoadingRecent == freezed
          ? _value.isLoadingRecent
          : isLoadingRecent // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMatched: isLoadingMatched == freezed
          ? _value.isLoadingMatched
          : isLoadingMatched // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSmile: isLoadingSmile == freezed
          ? _value.isLoadingSmile
          : isLoadingSmile // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNextRecent: hasNextRecent == freezed
          ? _value.hasNextRecent
          : hasNextRecent // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNextMatched: hasNextMatched == freezed
          ? _value.hasNextMatched
          : hasNextMatched // ignore: cast_nullable_to_non_nullable
              as bool,
      banner: banner == freezed
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as Banner?,
    ));
  }
}

/// @nodoc

class _$_DiaryState extends _DiaryState {
  const _$_DiaryState(
      {this.uuid = "",
      this.recentDiaries = const <Diary>[],
      this.matchedDiaries = const <Diary>[],
      this.isLoadingRecent = false,
      this.isLoadingMatched = false,
      this.isLoadingSmile = false,
      this.hasNextRecent = true,
      this.hasNextMatched = true,
      this.banner = null})
      : super._();

  @JsonKey(defaultValue: "")
  @override
  final String uuid;
  @JsonKey(defaultValue: const <Diary>[])
  @override
  final List<Diary> recentDiaries;
  @JsonKey(defaultValue: const <Diary>[])
  @override
  final List<Diary> matchedDiaries;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingRecent;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingMatched;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingSmile;
  @JsonKey(defaultValue: true)
  @override
  final bool hasNextRecent;
  @JsonKey(defaultValue: true)
  @override
  final bool hasNextMatched;
  @JsonKey(defaultValue: null)
  @override
  final Banner? banner;

  @override
  String toString() {
    return 'DiaryState(uuid: $uuid, recentDiaries: $recentDiaries, matchedDiaries: $matchedDiaries, isLoadingRecent: $isLoadingRecent, isLoadingMatched: $isLoadingMatched, isLoadingSmile: $isLoadingSmile, hasNextRecent: $hasNextRecent, hasNextMatched: $hasNextMatched, banner: $banner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiaryState &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.recentDiaries, recentDiaries) ||
                const DeepCollectionEquality()
                    .equals(other.recentDiaries, recentDiaries)) &&
            (identical(other.matchedDiaries, matchedDiaries) ||
                const DeepCollectionEquality()
                    .equals(other.matchedDiaries, matchedDiaries)) &&
            (identical(other.isLoadingRecent, isLoadingRecent) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingRecent, isLoadingRecent)) &&
            (identical(other.isLoadingMatched, isLoadingMatched) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingMatched, isLoadingMatched)) &&
            (identical(other.isLoadingSmile, isLoadingSmile) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingSmile, isLoadingSmile)) &&
            (identical(other.hasNextRecent, hasNextRecent) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextRecent, hasNextRecent)) &&
            (identical(other.hasNextMatched, hasNextMatched) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextMatched, hasNextMatched)) &&
            (identical(other.banner, banner) ||
                const DeepCollectionEquality().equals(other.banner, banner)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(recentDiaries) ^
      const DeepCollectionEquality().hash(matchedDiaries) ^
      const DeepCollectionEquality().hash(isLoadingRecent) ^
      const DeepCollectionEquality().hash(isLoadingMatched) ^
      const DeepCollectionEquality().hash(isLoadingSmile) ^
      const DeepCollectionEquality().hash(hasNextRecent) ^
      const DeepCollectionEquality().hash(hasNextMatched) ^
      const DeepCollectionEquality().hash(banner);

  @JsonKey(ignore: true)
  @override
  _$DiaryStateCopyWith<_DiaryState> get copyWith =>
      __$DiaryStateCopyWithImpl<_DiaryState>(this, _$identity);
}

abstract class _DiaryState extends DiaryState {
  const factory _DiaryState(
      {String uuid,
      List<Diary> recentDiaries,
      List<Diary> matchedDiaries,
      bool isLoadingRecent,
      bool isLoadingMatched,
      bool isLoadingSmile,
      bool hasNextRecent,
      bool hasNextMatched,
      Banner? banner}) = _$_DiaryState;
  const _DiaryState._() : super._();

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  List<Diary> get recentDiaries => throw _privateConstructorUsedError;
  @override
  List<Diary> get matchedDiaries => throw _privateConstructorUsedError;
  @override
  bool get isLoadingRecent => throw _privateConstructorUsedError;
  @override
  bool get isLoadingMatched => throw _privateConstructorUsedError;
  @override
  bool get isLoadingSmile => throw _privateConstructorUsedError;
  @override
  bool get hasNextRecent => throw _privateConstructorUsedError;
  @override
  bool get hasNextMatched => throw _privateConstructorUsedError;
  @override
  Banner? get banner => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiaryStateCopyWith<_DiaryState> get copyWith =>
      throw _privateConstructorUsedError;
}
