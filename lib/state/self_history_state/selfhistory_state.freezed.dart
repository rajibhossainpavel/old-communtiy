// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'selfhistory_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SelfHistoryStateTearOff {
  const _$SelfHistoryStateTearOff();

  _SelfHistoryState call({SelfHistoryResponse? selfHistory}) {
    return _SelfHistoryState(
      selfHistory: selfHistory,
    );
  }
}

/// @nodoc
const $SelfHistoryState = _$SelfHistoryStateTearOff();

/// @nodoc
mixin _$SelfHistoryState {
  SelfHistoryResponse? get selfHistory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelfHistoryStateCopyWith<SelfHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelfHistoryStateCopyWith<$Res> {
  factory $SelfHistoryStateCopyWith(
          SelfHistoryState value, $Res Function(SelfHistoryState) then) =
      _$SelfHistoryStateCopyWithImpl<$Res>;
  $Res call({SelfHistoryResponse? selfHistory});

  $SelfHistoryResponseCopyWith<$Res>? get selfHistory;
}

/// @nodoc
class _$SelfHistoryStateCopyWithImpl<$Res>
    implements $SelfHistoryStateCopyWith<$Res> {
  _$SelfHistoryStateCopyWithImpl(this._value, this._then);

  final SelfHistoryState _value;
  // ignore: unused_field
  final $Res Function(SelfHistoryState) _then;

  @override
  $Res call({
    Object? selfHistory = freezed,
  }) {
    return _then(_value.copyWith(
      selfHistory: selfHistory == freezed
          ? _value.selfHistory
          : selfHistory // ignore: cast_nullable_to_non_nullable
              as SelfHistoryResponse?,
    ));
  }

  @override
  $SelfHistoryResponseCopyWith<$Res>? get selfHistory {
    if (_value.selfHistory == null) {
      return null;
    }

    return $SelfHistoryResponseCopyWith<$Res>(_value.selfHistory!, (value) {
      return _then(_value.copyWith(selfHistory: value));
    });
  }
}

/// @nodoc
abstract class _$SelfHistoryStateCopyWith<$Res>
    implements $SelfHistoryStateCopyWith<$Res> {
  factory _$SelfHistoryStateCopyWith(
          _SelfHistoryState value, $Res Function(_SelfHistoryState) then) =
      __$SelfHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({SelfHistoryResponse? selfHistory});

  @override
  $SelfHistoryResponseCopyWith<$Res>? get selfHistory;
}

/// @nodoc
class __$SelfHistoryStateCopyWithImpl<$Res>
    extends _$SelfHistoryStateCopyWithImpl<$Res>
    implements _$SelfHistoryStateCopyWith<$Res> {
  __$SelfHistoryStateCopyWithImpl(
      _SelfHistoryState _value, $Res Function(_SelfHistoryState) _then)
      : super(_value, (v) => _then(v as _SelfHistoryState));

  @override
  _SelfHistoryState get _value => super._value as _SelfHistoryState;

  @override
  $Res call({
    Object? selfHistory = freezed,
  }) {
    return _then(_SelfHistoryState(
      selfHistory: selfHistory == freezed
          ? _value.selfHistory
          : selfHistory // ignore: cast_nullable_to_non_nullable
              as SelfHistoryResponse?,
    ));
  }
}

/// @nodoc

class _$_SelfHistoryState extends _SelfHistoryState {
  const _$_SelfHistoryState({this.selfHistory}) : super._();

  @override
  final SelfHistoryResponse? selfHistory;

  @override
  String toString() {
    return 'SelfHistoryState(selfHistory: $selfHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelfHistoryState &&
            (identical(other.selfHistory, selfHistory) ||
                const DeepCollectionEquality()
                    .equals(other.selfHistory, selfHistory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selfHistory);

  @JsonKey(ignore: true)
  @override
  _$SelfHistoryStateCopyWith<_SelfHistoryState> get copyWith =>
      __$SelfHistoryStateCopyWithImpl<_SelfHistoryState>(this, _$identity);
}

abstract class _SelfHistoryState extends SelfHistoryState {
  const factory _SelfHistoryState({SelfHistoryResponse? selfHistory}) =
      _$_SelfHistoryState;
  const _SelfHistoryState._() : super._();

  @override
  SelfHistoryResponse? get selfHistory => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelfHistoryStateCopyWith<_SelfHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
