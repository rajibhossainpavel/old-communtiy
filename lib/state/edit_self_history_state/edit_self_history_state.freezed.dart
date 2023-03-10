// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'edit_self_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditSelfHistoryStateTearOff {
  const _$EditSelfHistoryStateTearOff();

  _EditSelfHistoryState call(
      {bool isLoading = false,
      String uid = '',
      List<SelfHistory> releasedSelfHistory = const <SelfHistory>[],
      List<SelfHistory> draftSelfHistory = const <SelfHistory>[]}) {
    return _EditSelfHistoryState(
      isLoading: isLoading,
      uid: uid,
      releasedSelfHistory: releasedSelfHistory,
      draftSelfHistory: draftSelfHistory,
    );
  }
}

/// @nodoc
const $EditSelfHistoryState = _$EditSelfHistoryStateTearOff();

/// @nodoc
mixin _$EditSelfHistoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  List<SelfHistory> get releasedSelfHistory =>
      throw _privateConstructorUsedError;
  List<SelfHistory> get draftSelfHistory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditSelfHistoryStateCopyWith<EditSelfHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSelfHistoryStateCopyWith<$Res> {
  factory $EditSelfHistoryStateCopyWith(EditSelfHistoryState value,
          $Res Function(EditSelfHistoryState) then) =
      _$EditSelfHistoryStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String uid,
      List<SelfHistory> releasedSelfHistory,
      List<SelfHistory> draftSelfHistory});
}

/// @nodoc
class _$EditSelfHistoryStateCopyWithImpl<$Res>
    implements $EditSelfHistoryStateCopyWith<$Res> {
  _$EditSelfHistoryStateCopyWithImpl(this._value, this._then);

  final EditSelfHistoryState _value;
  // ignore: unused_field
  final $Res Function(EditSelfHistoryState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? uid = freezed,
    Object? releasedSelfHistory = freezed,
    Object? draftSelfHistory = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      releasedSelfHistory: releasedSelfHistory == freezed
          ? _value.releasedSelfHistory
          : releasedSelfHistory // ignore: cast_nullable_to_non_nullable
              as List<SelfHistory>,
      draftSelfHistory: draftSelfHistory == freezed
          ? _value.draftSelfHistory
          : draftSelfHistory // ignore: cast_nullable_to_non_nullable
              as List<SelfHistory>,
    ));
  }
}

/// @nodoc
abstract class _$EditSelfHistoryStateCopyWith<$Res>
    implements $EditSelfHistoryStateCopyWith<$Res> {
  factory _$EditSelfHistoryStateCopyWith(_EditSelfHistoryState value,
          $Res Function(_EditSelfHistoryState) then) =
      __$EditSelfHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      String uid,
      List<SelfHistory> releasedSelfHistory,
      List<SelfHistory> draftSelfHistory});
}

/// @nodoc
class __$EditSelfHistoryStateCopyWithImpl<$Res>
    extends _$EditSelfHistoryStateCopyWithImpl<$Res>
    implements _$EditSelfHistoryStateCopyWith<$Res> {
  __$EditSelfHistoryStateCopyWithImpl(
      _EditSelfHistoryState _value, $Res Function(_EditSelfHistoryState) _then)
      : super(_value, (v) => _then(v as _EditSelfHistoryState));

  @override
  _EditSelfHistoryState get _value => super._value as _EditSelfHistoryState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? uid = freezed,
    Object? releasedSelfHistory = freezed,
    Object? draftSelfHistory = freezed,
  }) {
    return _then(_EditSelfHistoryState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      releasedSelfHistory: releasedSelfHistory == freezed
          ? _value.releasedSelfHistory
          : releasedSelfHistory // ignore: cast_nullable_to_non_nullable
              as List<SelfHistory>,
      draftSelfHistory: draftSelfHistory == freezed
          ? _value.draftSelfHistory
          : draftSelfHistory // ignore: cast_nullable_to_non_nullable
              as List<SelfHistory>,
    ));
  }
}

/// @nodoc

class _$_EditSelfHistoryState extends _EditSelfHistoryState {
  const _$_EditSelfHistoryState(
      {this.isLoading = false,
      this.uid = '',
      this.releasedSelfHistory = const <SelfHistory>[],
      this.draftSelfHistory = const <SelfHistory>[]})
      : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: '')
  @override
  final String uid;
  @JsonKey(defaultValue: const <SelfHistory>[])
  @override
  final List<SelfHistory> releasedSelfHistory;
  @JsonKey(defaultValue: const <SelfHistory>[])
  @override
  final List<SelfHistory> draftSelfHistory;

  @override
  String toString() {
    return 'EditSelfHistoryState(isLoading: $isLoading, uid: $uid, releasedSelfHistory: $releasedSelfHistory, draftSelfHistory: $draftSelfHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditSelfHistoryState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.releasedSelfHistory, releasedSelfHistory) ||
                const DeepCollectionEquality()
                    .equals(other.releasedSelfHistory, releasedSelfHistory)) &&
            (identical(other.draftSelfHistory, draftSelfHistory) ||
                const DeepCollectionEquality()
                    .equals(other.draftSelfHistory, draftSelfHistory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(releasedSelfHistory) ^
      const DeepCollectionEquality().hash(draftSelfHistory);

  @JsonKey(ignore: true)
  @override
  _$EditSelfHistoryStateCopyWith<_EditSelfHistoryState> get copyWith =>
      __$EditSelfHistoryStateCopyWithImpl<_EditSelfHistoryState>(
          this, _$identity);
}

abstract class _EditSelfHistoryState extends EditSelfHistoryState {
  const factory _EditSelfHistoryState(
      {bool isLoading,
      String uid,
      List<SelfHistory> releasedSelfHistory,
      List<SelfHistory> draftSelfHistory}) = _$_EditSelfHistoryState;
  const _EditSelfHistoryState._() : super._();

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  List<SelfHistory> get releasedSelfHistory =>
      throw _privateConstructorUsedError;
  @override
  List<SelfHistory> get draftSelfHistory => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditSelfHistoryStateCopyWith<_EditSelfHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
