// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'communication_chat_sending_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommunicationChatSendingStateTearOff {
  const _$CommunicationChatSendingStateTearOff();

  _CommunicationChatSendingState call({String imagePath = ''}) {
    return _CommunicationChatSendingState(
      imagePath: imagePath,
    );
  }
}

/// @nodoc
const $CommunicationChatSendingState = _$CommunicationChatSendingStateTearOff();

/// @nodoc
mixin _$CommunicationChatSendingState {
  String get imagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommunicationChatSendingStateCopyWith<CommunicationChatSendingState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunicationChatSendingStateCopyWith<$Res> {
  factory $CommunicationChatSendingStateCopyWith(
          CommunicationChatSendingState value,
          $Res Function(CommunicationChatSendingState) then) =
      _$CommunicationChatSendingStateCopyWithImpl<$Res>;
  $Res call({String imagePath});
}

/// @nodoc
class _$CommunicationChatSendingStateCopyWithImpl<$Res>
    implements $CommunicationChatSendingStateCopyWith<$Res> {
  _$CommunicationChatSendingStateCopyWithImpl(this._value, this._then);

  final CommunicationChatSendingState _value;
  // ignore: unused_field
  final $Res Function(CommunicationChatSendingState) _then;

  @override
  $Res call({
    Object? imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CommunicationChatSendingStateCopyWith<$Res>
    implements $CommunicationChatSendingStateCopyWith<$Res> {
  factory _$CommunicationChatSendingStateCopyWith(
          _CommunicationChatSendingState value,
          $Res Function(_CommunicationChatSendingState) then) =
      __$CommunicationChatSendingStateCopyWithImpl<$Res>;
  @override
  $Res call({String imagePath});
}

/// @nodoc
class __$CommunicationChatSendingStateCopyWithImpl<$Res>
    extends _$CommunicationChatSendingStateCopyWithImpl<$Res>
    implements _$CommunicationChatSendingStateCopyWith<$Res> {
  __$CommunicationChatSendingStateCopyWithImpl(
      _CommunicationChatSendingState _value,
      $Res Function(_CommunicationChatSendingState) _then)
      : super(_value, (v) => _then(v as _CommunicationChatSendingState));

  @override
  _CommunicationChatSendingState get _value =>
      super._value as _CommunicationChatSendingState;

  @override
  $Res call({
    Object? imagePath = freezed,
  }) {
    return _then(_CommunicationChatSendingState(
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CommunicationChatSendingState extends _CommunicationChatSendingState {
  const _$_CommunicationChatSendingState({this.imagePath = ''}) : super._();

  @JsonKey(defaultValue: '')
  @override
  final String imagePath;

  @override
  String toString() {
    return 'CommunicationChatSendingState(imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommunicationChatSendingState &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imagePath);

  @JsonKey(ignore: true)
  @override
  _$CommunicationChatSendingStateCopyWith<_CommunicationChatSendingState>
      get copyWith => __$CommunicationChatSendingStateCopyWithImpl<
          _CommunicationChatSendingState>(this, _$identity);
}

abstract class _CommunicationChatSendingState
    extends CommunicationChatSendingState {
  const factory _CommunicationChatSendingState({String imagePath}) =
      _$_CommunicationChatSendingState;
  const _CommunicationChatSendingState._() : super._();

  @override
  String get imagePath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommunicationChatSendingStateCopyWith<_CommunicationChatSendingState>
      get copyWith => throw _privateConstructorUsedError;
}
