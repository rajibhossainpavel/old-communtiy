// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'self_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SelfHistoryStateTearOff {
  const _$SelfHistoryStateTearOff();

  _SelfHistoryState call(
      {List<SelfHistory> selfHistories = const <SelfHistory>[],
      String nickName = ''}) {
    return _SelfHistoryState(
      selfHistories: selfHistories,
      nickName: nickName,
    );
  }
}

/// @nodoc
const $SelfHistoryState = _$SelfHistoryStateTearOff();

/// @nodoc
mixin _$SelfHistoryState {
  List<SelfHistory> get selfHistories => throw _privateConstructorUsedError;
  String get nickName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelfHistoryStateCopyWith<SelfHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelfHistoryStateCopyWith<$Res> {
  factory $SelfHistoryStateCopyWith(
          SelfHistoryState value, $Res Function(SelfHistoryState) then) =
      _$SelfHistoryStateCopyWithImpl<$Res>;
  $Res call({List<SelfHistory> selfHistories, String nickName});
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
    Object? selfHistories = freezed,
    Object? nickName = freezed,
  }) {
    return _then(_value.copyWith(
      selfHistories: selfHistories == freezed
          ? _value.selfHistories
          : selfHistories // ignore: cast_nullable_to_non_nullable
              as List<SelfHistory>,
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SelfHistoryStateCopyWith<$Res>
    implements $SelfHistoryStateCopyWith<$Res> {
  factory _$SelfHistoryStateCopyWith(
          _SelfHistoryState value, $Res Function(_SelfHistoryState) then) =
      __$SelfHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({List<SelfHistory> selfHistories, String nickName});
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
    Object? selfHistories = freezed,
    Object? nickName = freezed,
  }) {
    return _then(_SelfHistoryState(
      selfHistories: selfHistories == freezed
          ? _value.selfHistories
          : selfHistories // ignore: cast_nullable_to_non_nullable
              as List<SelfHistory>,
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelfHistoryState extends _SelfHistoryState {
  const _$_SelfHistoryState(
      {this.selfHistories = const <SelfHistory>[], this.nickName = ''})
      : super._();

  @JsonKey(defaultValue: const <SelfHistory>[])
  @override
  final List<SelfHistory> selfHistories;
  @JsonKey(defaultValue: '')
  @override
  final String nickName;

  @override
  String toString() {
    return 'SelfHistoryState(selfHistories: $selfHistories, nickName: $nickName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelfHistoryState &&
            (identical(other.selfHistories, selfHistories) ||
                const DeepCollectionEquality()
                    .equals(other.selfHistories, selfHistories)) &&
            (identical(other.nickName, nickName) ||
                const DeepCollectionEquality()
                    .equals(other.nickName, nickName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selfHistories) ^
      const DeepCollectionEquality().hash(nickName);

  @JsonKey(ignore: true)
  @override
  _$SelfHistoryStateCopyWith<_SelfHistoryState> get copyWith =>
      __$SelfHistoryStateCopyWithImpl<_SelfHistoryState>(this, _$identity);
}

abstract class _SelfHistoryState extends SelfHistoryState {
  const factory _SelfHistoryState(
      {List<SelfHistory> selfHistories, String nickName}) = _$_SelfHistoryState;
  const _SelfHistoryState._() : super._();

  @override
  List<SelfHistory> get selfHistories => throw _privateConstructorUsedError;
  @override
  String get nickName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelfHistoryStateCopyWith<_SelfHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
