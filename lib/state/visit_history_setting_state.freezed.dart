// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'visit_history_setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VisitHistorySettingStateTearOff {
  const _$VisitHistorySettingStateTearOff();

  _VisitHistorySettingState call({bool visitHistoryEnable = false}) {
    return _VisitHistorySettingState(
      visitHistoryEnable: visitHistoryEnable,
    );
  }
}

/// @nodoc
const $VisitHistorySettingState = _$VisitHistorySettingStateTearOff();

/// @nodoc
mixin _$VisitHistorySettingState {
  bool get visitHistoryEnable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VisitHistorySettingStateCopyWith<VisitHistorySettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitHistorySettingStateCopyWith<$Res> {
  factory $VisitHistorySettingStateCopyWith(VisitHistorySettingState value,
          $Res Function(VisitHistorySettingState) then) =
      _$VisitHistorySettingStateCopyWithImpl<$Res>;
  $Res call({bool visitHistoryEnable});
}

/// @nodoc
class _$VisitHistorySettingStateCopyWithImpl<$Res>
    implements $VisitHistorySettingStateCopyWith<$Res> {
  _$VisitHistorySettingStateCopyWithImpl(this._value, this._then);

  final VisitHistorySettingState _value;
  // ignore: unused_field
  final $Res Function(VisitHistorySettingState) _then;

  @override
  $Res call({
    Object? visitHistoryEnable = freezed,
  }) {
    return _then(_value.copyWith(
      visitHistoryEnable: visitHistoryEnable == freezed
          ? _value.visitHistoryEnable
          : visitHistoryEnable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$VisitHistorySettingStateCopyWith<$Res>
    implements $VisitHistorySettingStateCopyWith<$Res> {
  factory _$VisitHistorySettingStateCopyWith(_VisitHistorySettingState value,
          $Res Function(_VisitHistorySettingState) then) =
      __$VisitHistorySettingStateCopyWithImpl<$Res>;
  @override
  $Res call({bool visitHistoryEnable});
}

/// @nodoc
class __$VisitHistorySettingStateCopyWithImpl<$Res>
    extends _$VisitHistorySettingStateCopyWithImpl<$Res>
    implements _$VisitHistorySettingStateCopyWith<$Res> {
  __$VisitHistorySettingStateCopyWithImpl(_VisitHistorySettingState _value,
      $Res Function(_VisitHistorySettingState) _then)
      : super(_value, (v) => _then(v as _VisitHistorySettingState));

  @override
  _VisitHistorySettingState get _value =>
      super._value as _VisitHistorySettingState;

  @override
  $Res call({
    Object? visitHistoryEnable = freezed,
  }) {
    return _then(_VisitHistorySettingState(
      visitHistoryEnable: visitHistoryEnable == freezed
          ? _value.visitHistoryEnable
          : visitHistoryEnable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VisitHistorySettingState extends _VisitHistorySettingState {
  const _$_VisitHistorySettingState({this.visitHistoryEnable = false})
      : super._();

  @JsonKey(defaultValue: false)
  @override
  final bool visitHistoryEnable;

  @override
  String toString() {
    return 'VisitHistorySettingState(visitHistoryEnable: $visitHistoryEnable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VisitHistorySettingState &&
            (identical(other.visitHistoryEnable, visitHistoryEnable) ||
                const DeepCollectionEquality()
                    .equals(other.visitHistoryEnable, visitHistoryEnable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(visitHistoryEnable);

  @JsonKey(ignore: true)
  @override
  _$VisitHistorySettingStateCopyWith<_VisitHistorySettingState> get copyWith =>
      __$VisitHistorySettingStateCopyWithImpl<_VisitHistorySettingState>(
          this, _$identity);
}

abstract class _VisitHistorySettingState extends VisitHistorySettingState {
  const factory _VisitHistorySettingState({bool visitHistoryEnable}) =
      _$_VisitHistorySettingState;
  const _VisitHistorySettingState._() : super._();

  @override
  bool get visitHistoryEnable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VisitHistorySettingStateCopyWith<_VisitHistorySettingState> get copyWith =>
      throw _privateConstructorUsedError;
}
