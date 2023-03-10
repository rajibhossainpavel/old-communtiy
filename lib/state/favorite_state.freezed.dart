// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoriteStateTearOff {
  const _$FavoriteStateTearOff();

  _FavoriteState call({List<Favorite>? favorites = null, bool hasNext = true}) {
    return _FavoriteState(
      favorites: favorites,
      hasNext: hasNext,
    );
  }
}

/// @nodoc
const $FavoriteState = _$FavoriteStateTearOff();

/// @nodoc
mixin _$FavoriteState {
  List<Favorite>? get favorites => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteStateCopyWith<FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res>;
  $Res call({List<Favorite>? favorites, bool hasNext});
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  final FavoriteState _value;
  // ignore: unused_field
  final $Res Function(FavoriteState) _then;

  @override
  $Res call({
    Object? favorites = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_value.copyWith(
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Favorite>?,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$FavoriteStateCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$FavoriteStateCopyWith(
          _FavoriteState value, $Res Function(_FavoriteState) then) =
      __$FavoriteStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Favorite>? favorites, bool hasNext});
}

/// @nodoc
class __$FavoriteStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements _$FavoriteStateCopyWith<$Res> {
  __$FavoriteStateCopyWithImpl(
      _FavoriteState _value, $Res Function(_FavoriteState) _then)
      : super(_value, (v) => _then(v as _FavoriteState));

  @override
  _FavoriteState get _value => super._value as _FavoriteState;

  @override
  $Res call({
    Object? favorites = freezed,
    Object? hasNext = freezed,
  }) {
    return _then(_FavoriteState(
      favorites: favorites == freezed
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Favorite>?,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FavoriteState extends _FavoriteState {
  const _$_FavoriteState({this.favorites = null, this.hasNext = true})
      : super._();

  @JsonKey(defaultValue: null)
  @override
  final List<Favorite>? favorites;
  @JsonKey(defaultValue: true)
  @override
  final bool hasNext;

  @override
  String toString() {
    return 'FavoriteState(favorites: $favorites, hasNext: $hasNext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoriteState &&
            (identical(other.favorites, favorites) ||
                const DeepCollectionEquality()
                    .equals(other.favorites, favorites)) &&
            (identical(other.hasNext, hasNext) ||
                const DeepCollectionEquality().equals(other.hasNext, hasNext)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(favorites) ^
      const DeepCollectionEquality().hash(hasNext);

  @JsonKey(ignore: true)
  @override
  _$FavoriteStateCopyWith<_FavoriteState> get copyWith =>
      __$FavoriteStateCopyWithImpl<_FavoriteState>(this, _$identity);
}

abstract class _FavoriteState extends FavoriteState {
  const factory _FavoriteState({List<Favorite>? favorites, bool hasNext}) =
      _$_FavoriteState;
  const _FavoriteState._() : super._();

  @override
  List<Favorite>? get favorites => throw _privateConstructorUsedError;
  @override
  bool get hasNext => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FavoriteStateCopyWith<_FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}
