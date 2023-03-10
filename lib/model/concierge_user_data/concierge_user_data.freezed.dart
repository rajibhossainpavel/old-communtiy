// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'concierge_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConciergeUserData _$ConciergeUserDataFromJson(Map<String, dynamic> json) {
  return _ConciergeUserData.fromJson(json);
}

/// @nodoc
class _$ConciergeUserDataTearOff {
  const _$ConciergeUserDataTearOff();

  _ConciergeUserData call(
      {bool readState = false,
      bool responseState = false,
      required String uuid}) {
    return _ConciergeUserData(
      readState: readState,
      responseState: responseState,
      uuid: uuid,
    );
  }

  ConciergeUserData fromJson(Map<String, Object> json) {
    return ConciergeUserData.fromJson(json);
  }
}

/// @nodoc
const $ConciergeUserData = _$ConciergeUserDataTearOff();

/// @nodoc
mixin _$ConciergeUserData {
  bool get readState => throw _privateConstructorUsedError;
  bool get responseState => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConciergeUserDataCopyWith<ConciergeUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConciergeUserDataCopyWith<$Res> {
  factory $ConciergeUserDataCopyWith(
          ConciergeUserData value, $Res Function(ConciergeUserData) then) =
      _$ConciergeUserDataCopyWithImpl<$Res>;
  $Res call({bool readState, bool responseState, String uuid});
}

/// @nodoc
class _$ConciergeUserDataCopyWithImpl<$Res>
    implements $ConciergeUserDataCopyWith<$Res> {
  _$ConciergeUserDataCopyWithImpl(this._value, this._then);

  final ConciergeUserData _value;
  // ignore: unused_field
  final $Res Function(ConciergeUserData) _then;

  @override
  $Res call({
    Object? readState = freezed,
    Object? responseState = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_value.copyWith(
      readState: readState == freezed
          ? _value.readState
          : readState // ignore: cast_nullable_to_non_nullable
              as bool,
      responseState: responseState == freezed
          ? _value.responseState
          : responseState // ignore: cast_nullable_to_non_nullable
              as bool,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ConciergeUserDataCopyWith<$Res>
    implements $ConciergeUserDataCopyWith<$Res> {
  factory _$ConciergeUserDataCopyWith(
          _ConciergeUserData value, $Res Function(_ConciergeUserData) then) =
      __$ConciergeUserDataCopyWithImpl<$Res>;
  @override
  $Res call({bool readState, bool responseState, String uuid});
}

/// @nodoc
class __$ConciergeUserDataCopyWithImpl<$Res>
    extends _$ConciergeUserDataCopyWithImpl<$Res>
    implements _$ConciergeUserDataCopyWith<$Res> {
  __$ConciergeUserDataCopyWithImpl(
      _ConciergeUserData _value, $Res Function(_ConciergeUserData) _then)
      : super(_value, (v) => _then(v as _ConciergeUserData));

  @override
  _ConciergeUserData get _value => super._value as _ConciergeUserData;

  @override
  $Res call({
    Object? readState = freezed,
    Object? responseState = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_ConciergeUserData(
      readState: readState == freezed
          ? _value.readState
          : readState // ignore: cast_nullable_to_non_nullable
              as bool,
      responseState: responseState == freezed
          ? _value.responseState
          : responseState // ignore: cast_nullable_to_non_nullable
              as bool,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConciergeUserData extends _ConciergeUserData {
  const _$_ConciergeUserData(
      {this.readState = false, this.responseState = false, required this.uuid})
      : super._();

  factory _$_ConciergeUserData.fromJson(Map<String, dynamic> json) =>
      _$_$_ConciergeUserDataFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool readState;
  @JsonKey(defaultValue: false)
  @override
  final bool responseState;
  @override
  final String uuid;

  @override
  String toString() {
    return 'ConciergeUserData(readState: $readState, responseState: $responseState, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConciergeUserData &&
            (identical(other.readState, readState) ||
                const DeepCollectionEquality()
                    .equals(other.readState, readState)) &&
            (identical(other.responseState, responseState) ||
                const DeepCollectionEquality()
                    .equals(other.responseState, responseState)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(readState) ^
      const DeepCollectionEquality().hash(responseState) ^
      const DeepCollectionEquality().hash(uuid);

  @JsonKey(ignore: true)
  @override
  _$ConciergeUserDataCopyWith<_ConciergeUserData> get copyWith =>
      __$ConciergeUserDataCopyWithImpl<_ConciergeUserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConciergeUserDataToJson(this);
  }
}

abstract class _ConciergeUserData extends ConciergeUserData {
  const factory _ConciergeUserData(
      {bool readState,
      bool responseState,
      required String uuid}) = _$_ConciergeUserData;
  const _ConciergeUserData._() : super._();

  factory _ConciergeUserData.fromJson(Map<String, dynamic> json) =
      _$_ConciergeUserData.fromJson;

  @override
  bool get readState => throw _privateConstructorUsedError;
  @override
  bool get responseState => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConciergeUserDataCopyWith<_ConciergeUserData> get copyWith =>
      throw _privateConstructorUsedError;
}
