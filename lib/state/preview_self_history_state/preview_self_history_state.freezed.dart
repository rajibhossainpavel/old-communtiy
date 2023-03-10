// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'preview_self_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PreviewSelfHistoryStateTearOff {
  const _$PreviewSelfHistoryStateTearOff();

  _PreviewSelfHistoryState call(
      {List<SelfHistory> selfHistories = const <SelfHistory>[],
      String userName = ''}) {
    return _PreviewSelfHistoryState(
      selfHistories: selfHistories,
      userName: userName,
    );
  }
}

/// @nodoc
const $PreviewSelfHistoryState = _$PreviewSelfHistoryStateTearOff();

/// @nodoc
mixin _$PreviewSelfHistoryState {
  List<SelfHistory> get selfHistories => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreviewSelfHistoryStateCopyWith<PreviewSelfHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewSelfHistoryStateCopyWith<$Res> {
  factory $PreviewSelfHistoryStateCopyWith(PreviewSelfHistoryState value,
          $Res Function(PreviewSelfHistoryState) then) =
      _$PreviewSelfHistoryStateCopyWithImpl<$Res>;
  $Res call({List<SelfHistory> selfHistories, String userName});
}

/// @nodoc
class _$PreviewSelfHistoryStateCopyWithImpl<$Res>
    implements $PreviewSelfHistoryStateCopyWith<$Res> {
  _$PreviewSelfHistoryStateCopyWithImpl(this._value, this._then);

  final PreviewSelfHistoryState _value;
  // ignore: unused_field
  final $Res Function(PreviewSelfHistoryState) _then;

  @override
  $Res call({
    Object? selfHistories = freezed,
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      selfHistories: selfHistories == freezed
          ? _value.selfHistories
          : selfHistories // ignore: cast_nullable_to_non_nullable
              as List<SelfHistory>,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PreviewSelfHistoryStateCopyWith<$Res>
    implements $PreviewSelfHistoryStateCopyWith<$Res> {
  factory _$PreviewSelfHistoryStateCopyWith(_PreviewSelfHistoryState value,
          $Res Function(_PreviewSelfHistoryState) then) =
      __$PreviewSelfHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call({List<SelfHistory> selfHistories, String userName});
}

/// @nodoc
class __$PreviewSelfHistoryStateCopyWithImpl<$Res>
    extends _$PreviewSelfHistoryStateCopyWithImpl<$Res>
    implements _$PreviewSelfHistoryStateCopyWith<$Res> {
  __$PreviewSelfHistoryStateCopyWithImpl(_PreviewSelfHistoryState _value,
      $Res Function(_PreviewSelfHistoryState) _then)
      : super(_value, (v) => _then(v as _PreviewSelfHistoryState));

  @override
  _PreviewSelfHistoryState get _value =>
      super._value as _PreviewSelfHistoryState;

  @override
  $Res call({
    Object? selfHistories = freezed,
    Object? userName = freezed,
  }) {
    return _then(_PreviewSelfHistoryState(
      selfHistories: selfHistories == freezed
          ? _value.selfHistories
          : selfHistories // ignore: cast_nullable_to_non_nullable
              as List<SelfHistory>,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PreviewSelfHistoryState extends _PreviewSelfHistoryState {
  const _$_PreviewSelfHistoryState(
      {this.selfHistories = const <SelfHistory>[], this.userName = ''})
      : super._();

  @JsonKey(defaultValue: const <SelfHistory>[])
  @override
  final List<SelfHistory> selfHistories;
  @JsonKey(defaultValue: '')
  @override
  final String userName;

  @override
  String toString() {
    return 'PreviewSelfHistoryState(selfHistories: $selfHistories, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PreviewSelfHistoryState &&
            (identical(other.selfHistories, selfHistories) ||
                const DeepCollectionEquality()
                    .equals(other.selfHistories, selfHistories)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selfHistories) ^
      const DeepCollectionEquality().hash(userName);

  @JsonKey(ignore: true)
  @override
  _$PreviewSelfHistoryStateCopyWith<_PreviewSelfHistoryState> get copyWith =>
      __$PreviewSelfHistoryStateCopyWithImpl<_PreviewSelfHistoryState>(
          this, _$identity);
}

abstract class _PreviewSelfHistoryState extends PreviewSelfHistoryState {
  const factory _PreviewSelfHistoryState(
      {List<SelfHistory> selfHistories,
      String userName}) = _$_PreviewSelfHistoryState;
  const _PreviewSelfHistoryState._() : super._();

  @override
  List<SelfHistory> get selfHistories => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PreviewSelfHistoryStateCopyWith<_PreviewSelfHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
