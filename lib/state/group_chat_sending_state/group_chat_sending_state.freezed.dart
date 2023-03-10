// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_chat_sending_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupChatSendingStateTearOff {
  const _$GroupChatSendingStateTearOff();

  _GroupChatSendingState call({String imagePath = '', DateTime? lastSendTime}) {
    return _GroupChatSendingState(
      imagePath: imagePath,
      lastSendTime: lastSendTime,
    );
  }
}

/// @nodoc
const $GroupChatSendingState = _$GroupChatSendingStateTearOff();

/// @nodoc
mixin _$GroupChatSendingState {
  String get imagePath => throw _privateConstructorUsedError;
  DateTime? get lastSendTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupChatSendingStateCopyWith<GroupChatSendingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupChatSendingStateCopyWith<$Res> {
  factory $GroupChatSendingStateCopyWith(GroupChatSendingState value,
          $Res Function(GroupChatSendingState) then) =
      _$GroupChatSendingStateCopyWithImpl<$Res>;
  $Res call({String imagePath, DateTime? lastSendTime});
}

/// @nodoc
class _$GroupChatSendingStateCopyWithImpl<$Res>
    implements $GroupChatSendingStateCopyWith<$Res> {
  _$GroupChatSendingStateCopyWithImpl(this._value, this._then);

  final GroupChatSendingState _value;
  // ignore: unused_field
  final $Res Function(GroupChatSendingState) _then;

  @override
  $Res call({
    Object? imagePath = freezed,
    Object? lastSendTime = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      lastSendTime: lastSendTime == freezed
          ? _value.lastSendTime
          : lastSendTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$GroupChatSendingStateCopyWith<$Res>
    implements $GroupChatSendingStateCopyWith<$Res> {
  factory _$GroupChatSendingStateCopyWith(_GroupChatSendingState value,
          $Res Function(_GroupChatSendingState) then) =
      __$GroupChatSendingStateCopyWithImpl<$Res>;
  @override
  $Res call({String imagePath, DateTime? lastSendTime});
}

/// @nodoc
class __$GroupChatSendingStateCopyWithImpl<$Res>
    extends _$GroupChatSendingStateCopyWithImpl<$Res>
    implements _$GroupChatSendingStateCopyWith<$Res> {
  __$GroupChatSendingStateCopyWithImpl(_GroupChatSendingState _value,
      $Res Function(_GroupChatSendingState) _then)
      : super(_value, (v) => _then(v as _GroupChatSendingState));

  @override
  _GroupChatSendingState get _value => super._value as _GroupChatSendingState;

  @override
  $Res call({
    Object? imagePath = freezed,
    Object? lastSendTime = freezed,
  }) {
    return _then(_GroupChatSendingState(
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      lastSendTime: lastSendTime == freezed
          ? _value.lastSendTime
          : lastSendTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_GroupChatSendingState extends _GroupChatSendingState {
  const _$_GroupChatSendingState({this.imagePath = '', this.lastSendTime})
      : super._();

  @JsonKey(defaultValue: '')
  @override
  final String imagePath;
  @override
  final DateTime? lastSendTime;

  @override
  String toString() {
    return 'GroupChatSendingState(imagePath: $imagePath, lastSendTime: $lastSendTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupChatSendingState &&
            (identical(other.imagePath, imagePath) ||
                const DeepCollectionEquality()
                    .equals(other.imagePath, imagePath)) &&
            (identical(other.lastSendTime, lastSendTime) ||
                const DeepCollectionEquality()
                    .equals(other.lastSendTime, lastSendTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(imagePath) ^
      const DeepCollectionEquality().hash(lastSendTime);

  @JsonKey(ignore: true)
  @override
  _$GroupChatSendingStateCopyWith<_GroupChatSendingState> get copyWith =>
      __$GroupChatSendingStateCopyWithImpl<_GroupChatSendingState>(
          this, _$identity);
}

abstract class _GroupChatSendingState extends GroupChatSendingState {
  const factory _GroupChatSendingState(
      {String imagePath, DateTime? lastSendTime}) = _$_GroupChatSendingState;
  const _GroupChatSendingState._() : super._();

  @override
  String get imagePath => throw _privateConstructorUsedError;
  @override
  DateTime? get lastSendTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupChatSendingStateCopyWith<_GroupChatSendingState> get copyWith =>
      throw _privateConstructorUsedError;
}
