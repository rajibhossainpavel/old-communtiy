// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'concierge_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConciergeData _$ConciergeDataFromJson(Map<String, dynamic> json) {
  return _ConciergeData.fromJson(json);
}

/// @nodoc
class _$ConciergeDataTearOff {
  const _$ConciergeDataTearOff();

  _ConciergeData call(
      {bool readState = false,
      bool responseState = false,
      required String expertID}) {
    return _ConciergeData(
      readState: readState,
      responseState: responseState,
      expertID: expertID,
    );
  }

  ConciergeData fromJson(Map<String, Object> json) {
    return ConciergeData.fromJson(json);
  }
}

/// @nodoc
const $ConciergeData = _$ConciergeDataTearOff();

/// @nodoc
mixin _$ConciergeData {
  bool get readState => throw _privateConstructorUsedError;
  bool get responseState => throw _privateConstructorUsedError;
  String get expertID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConciergeDataCopyWith<ConciergeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConciergeDataCopyWith<$Res> {
  factory $ConciergeDataCopyWith(
          ConciergeData value, $Res Function(ConciergeData) then) =
      _$ConciergeDataCopyWithImpl<$Res>;
  $Res call({bool readState, bool responseState, String expertID});
}

/// @nodoc
class _$ConciergeDataCopyWithImpl<$Res>
    implements $ConciergeDataCopyWith<$Res> {
  _$ConciergeDataCopyWithImpl(this._value, this._then);

  final ConciergeData _value;
  // ignore: unused_field
  final $Res Function(ConciergeData) _then;

  @override
  $Res call({
    Object? readState = freezed,
    Object? responseState = freezed,
    Object? expertID = freezed,
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
      expertID: expertID == freezed
          ? _value.expertID
          : expertID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ConciergeDataCopyWith<$Res>
    implements $ConciergeDataCopyWith<$Res> {
  factory _$ConciergeDataCopyWith(
          _ConciergeData value, $Res Function(_ConciergeData) then) =
      __$ConciergeDataCopyWithImpl<$Res>;
  @override
  $Res call({bool readState, bool responseState, String expertID});
}

/// @nodoc
class __$ConciergeDataCopyWithImpl<$Res>
    extends _$ConciergeDataCopyWithImpl<$Res>
    implements _$ConciergeDataCopyWith<$Res> {
  __$ConciergeDataCopyWithImpl(
      _ConciergeData _value, $Res Function(_ConciergeData) _then)
      : super(_value, (v) => _then(v as _ConciergeData));

  @override
  _ConciergeData get _value => super._value as _ConciergeData;

  @override
  $Res call({
    Object? readState = freezed,
    Object? responseState = freezed,
    Object? expertID = freezed,
  }) {
    return _then(_ConciergeData(
      readState: readState == freezed
          ? _value.readState
          : readState // ignore: cast_nullable_to_non_nullable
              as bool,
      responseState: responseState == freezed
          ? _value.responseState
          : responseState // ignore: cast_nullable_to_non_nullable
              as bool,
      expertID: expertID == freezed
          ? _value.expertID
          : expertID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConciergeData extends _ConciergeData {
  const _$_ConciergeData(
      {this.readState = false,
      this.responseState = false,
      required this.expertID})
      : super._();

  factory _$_ConciergeData.fromJson(Map<String, dynamic> json) =>
      _$_$_ConciergeDataFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool readState;
  @JsonKey(defaultValue: false)
  @override
  final bool responseState;
  @override
  final String expertID;

  @override
  String toString() {
    return 'ConciergeData(readState: $readState, responseState: $responseState, expertID: $expertID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConciergeData &&
            (identical(other.readState, readState) ||
                const DeepCollectionEquality()
                    .equals(other.readState, readState)) &&
            (identical(other.responseState, responseState) ||
                const DeepCollectionEquality()
                    .equals(other.responseState, responseState)) &&
            (identical(other.expertID, expertID) ||
                const DeepCollectionEquality()
                    .equals(other.expertID, expertID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(readState) ^
      const DeepCollectionEquality().hash(responseState) ^
      const DeepCollectionEquality().hash(expertID);

  @JsonKey(ignore: true)
  @override
  _$ConciergeDataCopyWith<_ConciergeData> get copyWith =>
      __$ConciergeDataCopyWithImpl<_ConciergeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConciergeDataToJson(this);
  }
}

abstract class _ConciergeData extends ConciergeData {
  const factory _ConciergeData(
      {bool readState,
      bool responseState,
      required String expertID}) = _$_ConciergeData;
  const _ConciergeData._() : super._();

  factory _ConciergeData.fromJson(Map<String, dynamic> json) =
      _$_ConciergeData.fromJson;

  @override
  bool get readState => throw _privateConstructorUsedError;
  @override
  bool get responseState => throw _privateConstructorUsedError;
  @override
  String get expertID => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConciergeDataCopyWith<_ConciergeData> get copyWith =>
      throw _privateConstructorUsedError;
}
