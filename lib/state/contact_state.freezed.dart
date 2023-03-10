// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'contact_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContactStateTearOff {
  const _$ContactStateTearOff();

  _ContactState call({String body = ''}) {
    return _ContactState(
      body: body,
    );
  }
}

/// @nodoc
const $ContactState = _$ContactStateTearOff();

/// @nodoc
mixin _$ContactState {
  String get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactStateCopyWith<ContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactStateCopyWith<$Res> {
  factory $ContactStateCopyWith(
          ContactState value, $Res Function(ContactState) then) =
      _$ContactStateCopyWithImpl<$Res>;
  $Res call({String body});
}

/// @nodoc
class _$ContactStateCopyWithImpl<$Res> implements $ContactStateCopyWith<$Res> {
  _$ContactStateCopyWithImpl(this._value, this._then);

  final ContactState _value;
  // ignore: unused_field
  final $Res Function(ContactState) _then;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ContactStateCopyWith<$Res>
    implements $ContactStateCopyWith<$Res> {
  factory _$ContactStateCopyWith(
          _ContactState value, $Res Function(_ContactState) then) =
      __$ContactStateCopyWithImpl<$Res>;
  @override
  $Res call({String body});
}

/// @nodoc
class __$ContactStateCopyWithImpl<$Res> extends _$ContactStateCopyWithImpl<$Res>
    implements _$ContactStateCopyWith<$Res> {
  __$ContactStateCopyWithImpl(
      _ContactState _value, $Res Function(_ContactState) _then)
      : super(_value, (v) => _then(v as _ContactState));

  @override
  _ContactState get _value => super._value as _ContactState;

  @override
  $Res call({
    Object? body = freezed,
  }) {
    return _then(_ContactState(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ContactState extends _ContactState with DiagnosticableTreeMixin {
  const _$_ContactState({this.body = ''}) : super._();

  @JsonKey(defaultValue: '')
  @override
  final String body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactState(body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ContactState'))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactState &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$ContactStateCopyWith<_ContactState> get copyWith =>
      __$ContactStateCopyWithImpl<_ContactState>(this, _$identity);
}

abstract class _ContactState extends ContactState {
  const factory _ContactState({String body}) = _$_ContactState;
  const _ContactState._() : super._();

  @override
  String get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContactStateCopyWith<_ContactState> get copyWith =>
      throw _privateConstructorUsedError;
}
