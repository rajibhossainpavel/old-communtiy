// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'point_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PointStateTearOff {
  const _$PointStateTearOff();

  _PointState call(
      {int points = 0,
      int likes = 0,
      String name = '',
      bool isLoading = false}) {
    return _PointState(
      points: points,
      likes: likes,
      name: name,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $PointState = _$PointStateTearOff();

/// @nodoc
mixin _$PointState {
  int get points => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PointStateCopyWith<PointState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointStateCopyWith<$Res> {
  factory $PointStateCopyWith(
          PointState value, $Res Function(PointState) then) =
      _$PointStateCopyWithImpl<$Res>;
  $Res call({int points, int likes, String name, bool isLoading});
}

/// @nodoc
class _$PointStateCopyWithImpl<$Res> implements $PointStateCopyWith<$Res> {
  _$PointStateCopyWithImpl(this._value, this._then);

  final PointState _value;
  // ignore: unused_field
  final $Res Function(PointState) _then;

  @override
  $Res call({
    Object? points = freezed,
    Object? likes = freezed,
    Object? name = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PointStateCopyWith<$Res> implements $PointStateCopyWith<$Res> {
  factory _$PointStateCopyWith(
          _PointState value, $Res Function(_PointState) then) =
      __$PointStateCopyWithImpl<$Res>;
  @override
  $Res call({int points, int likes, String name, bool isLoading});
}

/// @nodoc
class __$PointStateCopyWithImpl<$Res> extends _$PointStateCopyWithImpl<$Res>
    implements _$PointStateCopyWith<$Res> {
  __$PointStateCopyWithImpl(
      _PointState _value, $Res Function(_PointState) _then)
      : super(_value, (v) => _then(v as _PointState));

  @override
  _PointState get _value => super._value as _PointState;

  @override
  $Res call({
    Object? points = freezed,
    Object? likes = freezed,
    Object? name = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_PointState(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PointState extends _PointState {
  const _$_PointState(
      {this.points = 0, this.likes = 0, this.name = '', this.isLoading = false})
      : super._();

  @JsonKey(defaultValue: 0)
  @override
  final int points;
  @JsonKey(defaultValue: 0)
  @override
  final int likes;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'PointState(points: $points, likes: $likes, name: $name, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PointState &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)) &&
            (identical(other.likes, likes) ||
                const DeepCollectionEquality().equals(other.likes, likes)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(likes) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$PointStateCopyWith<_PointState> get copyWith =>
      __$PointStateCopyWithImpl<_PointState>(this, _$identity);
}

abstract class _PointState extends PointState {
  const factory _PointState(
      {int points, int likes, String name, bool isLoading}) = _$_PointState;
  const _PointState._() : super._();

  @override
  int get points => throw _privateConstructorUsedError;
  @override
  int get likes => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PointStateCopyWith<_PointState> get copyWith =>
      throw _privateConstructorUsedError;
}
