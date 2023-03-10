// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'basic_information_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BasicInformationStateTearOff {
  const _$BasicInformationStateTearOff();

  _BasicInformationState call(
      {String nickName = '',
      String mailAddress = '',
      Gender? gender,
      Prefecture? livePlace,
      Prefecture? birthPlace,
      bool isLoading = false}) {
    return _BasicInformationState(
      nickName: nickName,
      mailAddress: mailAddress,
      gender: gender,
      livePlace: livePlace,
      birthPlace: birthPlace,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $BasicInformationState = _$BasicInformationStateTearOff();

/// @nodoc
mixin _$BasicInformationState {
  String get nickName => throw _privateConstructorUsedError;
  String get mailAddress => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  Prefecture? get livePlace => throw _privateConstructorUsedError;
  Prefecture? get birthPlace => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasicInformationStateCopyWith<BasicInformationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInformationStateCopyWith<$Res> {
  factory $BasicInformationStateCopyWith(BasicInformationState value,
          $Res Function(BasicInformationState) then) =
      _$BasicInformationStateCopyWithImpl<$Res>;
  $Res call(
      {String nickName,
      String mailAddress,
      Gender? gender,
      Prefecture? livePlace,
      Prefecture? birthPlace,
      bool isLoading});
}

/// @nodoc
class _$BasicInformationStateCopyWithImpl<$Res>
    implements $BasicInformationStateCopyWith<$Res> {
  _$BasicInformationStateCopyWithImpl(this._value, this._then);

  final BasicInformationState _value;
  // ignore: unused_field
  final $Res Function(BasicInformationState) _then;

  @override
  $Res call({
    Object? nickName = freezed,
    Object? mailAddress = freezed,
    Object? gender = freezed,
    Object? livePlace = freezed,
    Object? birthPlace = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      mailAddress: mailAddress == freezed
          ? _value.mailAddress
          : mailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      livePlace: livePlace == freezed
          ? _value.livePlace
          : livePlace // ignore: cast_nullable_to_non_nullable
              as Prefecture?,
      birthPlace: birthPlace == freezed
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as Prefecture?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$BasicInformationStateCopyWith<$Res>
    implements $BasicInformationStateCopyWith<$Res> {
  factory _$BasicInformationStateCopyWith(_BasicInformationState value,
          $Res Function(_BasicInformationState) then) =
      __$BasicInformationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String nickName,
      String mailAddress,
      Gender? gender,
      Prefecture? livePlace,
      Prefecture? birthPlace,
      bool isLoading});
}

/// @nodoc
class __$BasicInformationStateCopyWithImpl<$Res>
    extends _$BasicInformationStateCopyWithImpl<$Res>
    implements _$BasicInformationStateCopyWith<$Res> {
  __$BasicInformationStateCopyWithImpl(_BasicInformationState _value,
      $Res Function(_BasicInformationState) _then)
      : super(_value, (v) => _then(v as _BasicInformationState));

  @override
  _BasicInformationState get _value => super._value as _BasicInformationState;

  @override
  $Res call({
    Object? nickName = freezed,
    Object? mailAddress = freezed,
    Object? gender = freezed,
    Object? livePlace = freezed,
    Object? birthPlace = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_BasicInformationState(
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      mailAddress: mailAddress == freezed
          ? _value.mailAddress
          : mailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      livePlace: livePlace == freezed
          ? _value.livePlace
          : livePlace // ignore: cast_nullable_to_non_nullable
              as Prefecture?,
      birthPlace: birthPlace == freezed
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as Prefecture?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BasicInformationState extends _BasicInformationState
    with DiagnosticableTreeMixin {
  const _$_BasicInformationState(
      {this.nickName = '',
      this.mailAddress = '',
      this.gender,
      this.livePlace,
      this.birthPlace,
      this.isLoading = false})
      : super._();

  @JsonKey(defaultValue: '')
  @override
  final String nickName;
  @JsonKey(defaultValue: '')
  @override
  final String mailAddress;
  @override
  final Gender? gender;
  @override
  final Prefecture? livePlace;
  @override
  final Prefecture? birthPlace;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BasicInformationState(nickName: $nickName, mailAddress: $mailAddress, gender: $gender, livePlace: $livePlace, birthPlace: $birthPlace, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BasicInformationState'))
      ..add(DiagnosticsProperty('nickName', nickName))
      ..add(DiagnosticsProperty('mailAddress', mailAddress))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('livePlace', livePlace))
      ..add(DiagnosticsProperty('birthPlace', birthPlace))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BasicInformationState &&
            (identical(other.nickName, nickName) ||
                const DeepCollectionEquality()
                    .equals(other.nickName, nickName)) &&
            (identical(other.mailAddress, mailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.mailAddress, mailAddress)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.livePlace, livePlace) ||
                const DeepCollectionEquality()
                    .equals(other.livePlace, livePlace)) &&
            (identical(other.birthPlace, birthPlace) ||
                const DeepCollectionEquality()
                    .equals(other.birthPlace, birthPlace)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nickName) ^
      const DeepCollectionEquality().hash(mailAddress) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(livePlace) ^
      const DeepCollectionEquality().hash(birthPlace) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$BasicInformationStateCopyWith<_BasicInformationState> get copyWith =>
      __$BasicInformationStateCopyWithImpl<_BasicInformationState>(
          this, _$identity);
}

abstract class _BasicInformationState extends BasicInformationState {
  const factory _BasicInformationState(
      {String nickName,
      String mailAddress,
      Gender? gender,
      Prefecture? livePlace,
      Prefecture? birthPlace,
      bool isLoading}) = _$_BasicInformationState;
  const _BasicInformationState._() : super._();

  @override
  String get nickName => throw _privateConstructorUsedError;
  @override
  String get mailAddress => throw _privateConstructorUsedError;
  @override
  Gender? get gender => throw _privateConstructorUsedError;
  @override
  Prefecture? get livePlace => throw _privateConstructorUsedError;
  @override
  Prefecture? get birthPlace => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BasicInformationStateCopyWith<_BasicInformationState> get copyWith =>
      throw _privateConstructorUsedError;
}
