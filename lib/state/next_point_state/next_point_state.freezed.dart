// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'next_point_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NextPointStateTearOff {
  const _$NextPointStateTearOff();

  _NextPointState call(
      {String nextPointTime = '',
      int nextPoint = 0,
      bool isLoading = false,
      bool hasLoadInitialData = false}) {
    return _NextPointState(
      nextPointTime: nextPointTime,
      nextPoint: nextPoint,
      isLoading: isLoading,
      hasLoadInitialData: hasLoadInitialData,
    );
  }
}

/// @nodoc
const $NextPointState = _$NextPointStateTearOff();

/// @nodoc
mixin _$NextPointState {
  String get nextPointTime => throw _privateConstructorUsedError;
  int get nextPoint => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasLoadInitialData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NextPointStateCopyWith<NextPointState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextPointStateCopyWith<$Res> {
  factory $NextPointStateCopyWith(
          NextPointState value, $Res Function(NextPointState) then) =
      _$NextPointStateCopyWithImpl<$Res>;
  $Res call(
      {String nextPointTime,
      int nextPoint,
      bool isLoading,
      bool hasLoadInitialData});
}

/// @nodoc
class _$NextPointStateCopyWithImpl<$Res>
    implements $NextPointStateCopyWith<$Res> {
  _$NextPointStateCopyWithImpl(this._value, this._then);

  final NextPointState _value;
  // ignore: unused_field
  final $Res Function(NextPointState) _then;

  @override
  $Res call({
    Object? nextPointTime = freezed,
    Object? nextPoint = freezed,
    Object? isLoading = freezed,
    Object? hasLoadInitialData = freezed,
  }) {
    return _then(_value.copyWith(
      nextPointTime: nextPointTime == freezed
          ? _value.nextPointTime
          : nextPointTime // ignore: cast_nullable_to_non_nullable
              as String,
      nextPoint: nextPoint == freezed
          ? _value.nextPoint
          : nextPoint // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLoadInitialData: hasLoadInitialData == freezed
          ? _value.hasLoadInitialData
          : hasLoadInitialData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$NextPointStateCopyWith<$Res>
    implements $NextPointStateCopyWith<$Res> {
  factory _$NextPointStateCopyWith(
          _NextPointState value, $Res Function(_NextPointState) then) =
      __$NextPointStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String nextPointTime,
      int nextPoint,
      bool isLoading,
      bool hasLoadInitialData});
}

/// @nodoc
class __$NextPointStateCopyWithImpl<$Res>
    extends _$NextPointStateCopyWithImpl<$Res>
    implements _$NextPointStateCopyWith<$Res> {
  __$NextPointStateCopyWithImpl(
      _NextPointState _value, $Res Function(_NextPointState) _then)
      : super(_value, (v) => _then(v as _NextPointState));

  @override
  _NextPointState get _value => super._value as _NextPointState;

  @override
  $Res call({
    Object? nextPointTime = freezed,
    Object? nextPoint = freezed,
    Object? isLoading = freezed,
    Object? hasLoadInitialData = freezed,
  }) {
    return _then(_NextPointState(
      nextPointTime: nextPointTime == freezed
          ? _value.nextPointTime
          : nextPointTime // ignore: cast_nullable_to_non_nullable
              as String,
      nextPoint: nextPoint == freezed
          ? _value.nextPoint
          : nextPoint // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLoadInitialData: hasLoadInitialData == freezed
          ? _value.hasLoadInitialData
          : hasLoadInitialData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NextPointState extends _NextPointState {
  const _$_NextPointState(
      {this.nextPointTime = '',
      this.nextPoint = 0,
      this.isLoading = false,
      this.hasLoadInitialData = false})
      : super._();

  @JsonKey(defaultValue: '')
  @override
  final String nextPointTime;
  @JsonKey(defaultValue: 0)
  @override
  final int nextPoint;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool hasLoadInitialData;

  @override
  String toString() {
    return 'NextPointState(nextPointTime: $nextPointTime, nextPoint: $nextPoint, isLoading: $isLoading, hasLoadInitialData: $hasLoadInitialData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NextPointState &&
            (identical(other.nextPointTime, nextPointTime) ||
                const DeepCollectionEquality()
                    .equals(other.nextPointTime, nextPointTime)) &&
            (identical(other.nextPoint, nextPoint) ||
                const DeepCollectionEquality()
                    .equals(other.nextPoint, nextPoint)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.hasLoadInitialData, hasLoadInitialData) ||
                const DeepCollectionEquality()
                    .equals(other.hasLoadInitialData, hasLoadInitialData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nextPointTime) ^
      const DeepCollectionEquality().hash(nextPoint) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(hasLoadInitialData);

  @JsonKey(ignore: true)
  @override
  _$NextPointStateCopyWith<_NextPointState> get copyWith =>
      __$NextPointStateCopyWithImpl<_NextPointState>(this, _$identity);
}

abstract class _NextPointState extends NextPointState {
  const factory _NextPointState(
      {String nextPointTime,
      int nextPoint,
      bool isLoading,
      bool hasLoadInitialData}) = _$_NextPointState;
  const _NextPointState._() : super._();

  @override
  String get nextPointTime => throw _privateConstructorUsedError;
  @override
  int get nextPoint => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get hasLoadInitialData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NextPointStateCopyWith<_NextPointState> get copyWith =>
      throw _privateConstructorUsedError;
}
