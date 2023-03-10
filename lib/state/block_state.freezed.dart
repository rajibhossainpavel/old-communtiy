// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'block_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BlockStateTearOff {
  const _$BlockStateTearOff();

  _BlockState call({List<Block>? blockUsers = null}) {
    return _BlockState(
      blockUsers: blockUsers,
    );
  }
}

/// @nodoc
const $BlockState = _$BlockStateTearOff();

/// @nodoc
mixin _$BlockState {
  List<Block>? get blockUsers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlockStateCopyWith<BlockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockStateCopyWith<$Res> {
  factory $BlockStateCopyWith(
          BlockState value, $Res Function(BlockState) then) =
      _$BlockStateCopyWithImpl<$Res>;
  $Res call({List<Block>? blockUsers});
}

/// @nodoc
class _$BlockStateCopyWithImpl<$Res> implements $BlockStateCopyWith<$Res> {
  _$BlockStateCopyWithImpl(this._value, this._then);

  final BlockState _value;
  // ignore: unused_field
  final $Res Function(BlockState) _then;

  @override
  $Res call({
    Object? blockUsers = freezed,
  }) {
    return _then(_value.copyWith(
      blockUsers: blockUsers == freezed
          ? _value.blockUsers
          : blockUsers // ignore: cast_nullable_to_non_nullable
              as List<Block>?,
    ));
  }
}

/// @nodoc
abstract class _$BlockStateCopyWith<$Res> implements $BlockStateCopyWith<$Res> {
  factory _$BlockStateCopyWith(
          _BlockState value, $Res Function(_BlockState) then) =
      __$BlockStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Block>? blockUsers});
}

/// @nodoc
class __$BlockStateCopyWithImpl<$Res> extends _$BlockStateCopyWithImpl<$Res>
    implements _$BlockStateCopyWith<$Res> {
  __$BlockStateCopyWithImpl(
      _BlockState _value, $Res Function(_BlockState) _then)
      : super(_value, (v) => _then(v as _BlockState));

  @override
  _BlockState get _value => super._value as _BlockState;

  @override
  $Res call({
    Object? blockUsers = freezed,
  }) {
    return _then(_BlockState(
      blockUsers: blockUsers == freezed
          ? _value.blockUsers
          : blockUsers // ignore: cast_nullable_to_non_nullable
              as List<Block>?,
    ));
  }
}

/// @nodoc

class _$_BlockState extends _BlockState {
  const _$_BlockState({this.blockUsers = null}) : super._();

  @JsonKey(defaultValue: null)
  @override
  final List<Block>? blockUsers;

  @override
  String toString() {
    return 'BlockState(blockUsers: $blockUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BlockState &&
            (identical(other.blockUsers, blockUsers) ||
                const DeepCollectionEquality()
                    .equals(other.blockUsers, blockUsers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(blockUsers);

  @JsonKey(ignore: true)
  @override
  _$BlockStateCopyWith<_BlockState> get copyWith =>
      __$BlockStateCopyWithImpl<_BlockState>(this, _$identity);
}

abstract class _BlockState extends BlockState {
  const factory _BlockState({List<Block>? blockUsers}) = _$_BlockState;
  const _BlockState._() : super._();

  @override
  List<Block>? get blockUsers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BlockStateCopyWith<_BlockState> get copyWith =>
      throw _privateConstructorUsedError;
}
