// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'application_initialize_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApplicationInitializeStateTearOff {
  const _$ApplicationInitializeStateTearOff();

  _ApplicationInitializeState call({ApplicationInitResponse? information}) {
    return _ApplicationInitializeState(
      information: information,
    );
  }
}

/// @nodoc
const $ApplicationInitializeState = _$ApplicationInitializeStateTearOff();

/// @nodoc
mixin _$ApplicationInitializeState {
  ApplicationInitResponse? get information =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicationInitializeStateCopyWith<ApplicationInitializeState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationInitializeStateCopyWith<$Res> {
  factory $ApplicationInitializeStateCopyWith(ApplicationInitializeState value,
          $Res Function(ApplicationInitializeState) then) =
      _$ApplicationInitializeStateCopyWithImpl<$Res>;
  $Res call({ApplicationInitResponse? information});

  $ApplicationInitResponseCopyWith<$Res>? get information;
}

/// @nodoc
class _$ApplicationInitializeStateCopyWithImpl<$Res>
    implements $ApplicationInitializeStateCopyWith<$Res> {
  _$ApplicationInitializeStateCopyWithImpl(this._value, this._then);

  final ApplicationInitializeState _value;
  // ignore: unused_field
  final $Res Function(ApplicationInitializeState) _then;

  @override
  $Res call({
    Object? information = freezed,
  }) {
    return _then(_value.copyWith(
      information: information == freezed
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as ApplicationInitResponse?,
    ));
  }

  @override
  $ApplicationInitResponseCopyWith<$Res>? get information {
    if (_value.information == null) {
      return null;
    }

    return $ApplicationInitResponseCopyWith<$Res>(_value.information!, (value) {
      return _then(_value.copyWith(information: value));
    });
  }
}

/// @nodoc
abstract class _$ApplicationInitializeStateCopyWith<$Res>
    implements $ApplicationInitializeStateCopyWith<$Res> {
  factory _$ApplicationInitializeStateCopyWith(
          _ApplicationInitializeState value,
          $Res Function(_ApplicationInitializeState) then) =
      __$ApplicationInitializeStateCopyWithImpl<$Res>;
  @override
  $Res call({ApplicationInitResponse? information});

  @override
  $ApplicationInitResponseCopyWith<$Res>? get information;
}

/// @nodoc
class __$ApplicationInitializeStateCopyWithImpl<$Res>
    extends _$ApplicationInitializeStateCopyWithImpl<$Res>
    implements _$ApplicationInitializeStateCopyWith<$Res> {
  __$ApplicationInitializeStateCopyWithImpl(_ApplicationInitializeState _value,
      $Res Function(_ApplicationInitializeState) _then)
      : super(_value, (v) => _then(v as _ApplicationInitializeState));

  @override
  _ApplicationInitializeState get _value =>
      super._value as _ApplicationInitializeState;

  @override
  $Res call({
    Object? information = freezed,
  }) {
    return _then(_ApplicationInitializeState(
      information: information == freezed
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as ApplicationInitResponse?,
    ));
  }
}

/// @nodoc

class _$_ApplicationInitializeState extends _ApplicationInitializeState {
  const _$_ApplicationInitializeState({this.information}) : super._();

  @override
  final ApplicationInitResponse? information;

  @override
  String toString() {
    return 'ApplicationInitializeState(information: $information)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApplicationInitializeState &&
            (identical(other.information, information) ||
                const DeepCollectionEquality()
                    .equals(other.information, information)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(information);

  @JsonKey(ignore: true)
  @override
  _$ApplicationInitializeStateCopyWith<_ApplicationInitializeState>
      get copyWith => __$ApplicationInitializeStateCopyWithImpl<
          _ApplicationInitializeState>(this, _$identity);
}

abstract class _ApplicationInitializeState extends ApplicationInitializeState {
  const factory _ApplicationInitializeState(
      {ApplicationInitResponse? information}) = _$_ApplicationInitializeState;
  const _ApplicationInitializeState._() : super._();

  @override
  ApplicationInitResponse? get information =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApplicationInitializeStateCopyWith<_ApplicationInitializeState>
      get copyWith => throw _privateConstructorUsedError;
}
