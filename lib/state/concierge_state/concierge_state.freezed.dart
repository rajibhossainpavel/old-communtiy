// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'concierge_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConciergeStateTearOff {
  const _$ConciergeStateTearOff();

  _ConciergeState call(
      {List<ConciergeChat> chats = const <ConciergeChat>[],
      Concierge? concierge,
      bool isLoading = false,
      bool isLastPage = false,
      bool isPopped = false}) {
    return _ConciergeState(
      chats: chats,
      concierge: concierge,
      isLoading: isLoading,
      isLastPage: isLastPage,
      isPopped: isPopped,
    );
  }
}

/// @nodoc
const $ConciergeState = _$ConciergeStateTearOff();

/// @nodoc
mixin _$ConciergeState {
  List<ConciergeChat> get chats => throw _privateConstructorUsedError;
  Concierge? get concierge => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  bool get isPopped => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConciergeStateCopyWith<ConciergeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConciergeStateCopyWith<$Res> {
  factory $ConciergeStateCopyWith(
          ConciergeState value, $Res Function(ConciergeState) then) =
      _$ConciergeStateCopyWithImpl<$Res>;
  $Res call(
      {List<ConciergeChat> chats,
      Concierge? concierge,
      bool isLoading,
      bool isLastPage,
      bool isPopped});

  $ConciergeCopyWith<$Res>? get concierge;
}

/// @nodoc
class _$ConciergeStateCopyWithImpl<$Res>
    implements $ConciergeStateCopyWith<$Res> {
  _$ConciergeStateCopyWithImpl(this._value, this._then);

  final ConciergeState _value;
  // ignore: unused_field
  final $Res Function(ConciergeState) _then;

  @override
  $Res call({
    Object? chats = freezed,
    Object? concierge = freezed,
    Object? isLoading = freezed,
    Object? isLastPage = freezed,
    Object? isPopped = freezed,
  }) {
    return _then(_value.copyWith(
      chats: chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ConciergeChat>,
      concierge: concierge == freezed
          ? _value.concierge
          : concierge // ignore: cast_nullable_to_non_nullable
              as Concierge?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isPopped: isPopped == freezed
          ? _value.isPopped
          : isPopped // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ConciergeCopyWith<$Res>? get concierge {
    if (_value.concierge == null) {
      return null;
    }

    return $ConciergeCopyWith<$Res>(_value.concierge!, (value) {
      return _then(_value.copyWith(concierge: value));
    });
  }
}

/// @nodoc
abstract class _$ConciergeStateCopyWith<$Res>
    implements $ConciergeStateCopyWith<$Res> {
  factory _$ConciergeStateCopyWith(
          _ConciergeState value, $Res Function(_ConciergeState) then) =
      __$ConciergeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ConciergeChat> chats,
      Concierge? concierge,
      bool isLoading,
      bool isLastPage,
      bool isPopped});

  @override
  $ConciergeCopyWith<$Res>? get concierge;
}

/// @nodoc
class __$ConciergeStateCopyWithImpl<$Res>
    extends _$ConciergeStateCopyWithImpl<$Res>
    implements _$ConciergeStateCopyWith<$Res> {
  __$ConciergeStateCopyWithImpl(
      _ConciergeState _value, $Res Function(_ConciergeState) _then)
      : super(_value, (v) => _then(v as _ConciergeState));

  @override
  _ConciergeState get _value => super._value as _ConciergeState;

  @override
  $Res call({
    Object? chats = freezed,
    Object? concierge = freezed,
    Object? isLoading = freezed,
    Object? isLastPage = freezed,
    Object? isPopped = freezed,
  }) {
    return _then(_ConciergeState(
      chats: chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ConciergeChat>,
      concierge: concierge == freezed
          ? _value.concierge
          : concierge // ignore: cast_nullable_to_non_nullable
              as Concierge?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isPopped: isPopped == freezed
          ? _value.isPopped
          : isPopped // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ConciergeState extends _ConciergeState {
  const _$_ConciergeState(
      {this.chats = const <ConciergeChat>[],
      this.concierge,
      this.isLoading = false,
      this.isLastPage = false,
      this.isPopped = false})
      : super._();

  @JsonKey(defaultValue: const <ConciergeChat>[])
  @override
  final List<ConciergeChat> chats;
  @override
  final Concierge? concierge;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isLastPage;
  @JsonKey(defaultValue: false)
  @override
  final bool isPopped;

  @override
  String toString() {
    return 'ConciergeState(chats: $chats, concierge: $concierge, isLoading: $isLoading, isLastPage: $isLastPage, isPopped: $isPopped)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConciergeState &&
            (identical(other.chats, chats) ||
                const DeepCollectionEquality().equals(other.chats, chats)) &&
            (identical(other.concierge, concierge) ||
                const DeepCollectionEquality()
                    .equals(other.concierge, concierge)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isLastPage, isLastPage) ||
                const DeepCollectionEquality()
                    .equals(other.isLastPage, isLastPage)) &&
            (identical(other.isPopped, isPopped) ||
                const DeepCollectionEquality()
                    .equals(other.isPopped, isPopped)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chats) ^
      const DeepCollectionEquality().hash(concierge) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isLastPage) ^
      const DeepCollectionEquality().hash(isPopped);

  @JsonKey(ignore: true)
  @override
  _$ConciergeStateCopyWith<_ConciergeState> get copyWith =>
      __$ConciergeStateCopyWithImpl<_ConciergeState>(this, _$identity);
}

abstract class _ConciergeState extends ConciergeState {
  const factory _ConciergeState(
      {List<ConciergeChat> chats,
      Concierge? concierge,
      bool isLoading,
      bool isLastPage,
      bool isPopped}) = _$_ConciergeState;
  const _ConciergeState._() : super._();

  @override
  List<ConciergeChat> get chats => throw _privateConstructorUsedError;
  @override
  Concierge? get concierge => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isLastPage => throw _privateConstructorUsedError;
  @override
  bool get isPopped => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConciergeStateCopyWith<_ConciergeState> get copyWith =>
      throw _privateConstructorUsedError;
}
