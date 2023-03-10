// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'association_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssociationHistoryResponse _$AssociationHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _AssociationHistoryResponse.fromJson(json);
}

/// @nodoc
class _$AssociationHistoryResponseTearOff {
  const _$AssociationHistoryResponseTearOff();

  _AssociationHistoryResponse call(
      {String result = '',
      String token = '',
      List<History> histories = const <History>[]}) {
    return _AssociationHistoryResponse(
      result: result,
      token: token,
      histories: histories,
    );
  }

  AssociationHistoryResponse fromJson(Map<String, Object> json) {
    return AssociationHistoryResponse.fromJson(json);
  }
}

/// @nodoc
const $AssociationHistoryResponse = _$AssociationHistoryResponseTearOff();

/// @nodoc
mixin _$AssociationHistoryResponse {
  String get result => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  List<History> get histories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssociationHistoryResponseCopyWith<AssociationHistoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssociationHistoryResponseCopyWith<$Res> {
  factory $AssociationHistoryResponseCopyWith(AssociationHistoryResponse value,
          $Res Function(AssociationHistoryResponse) then) =
      _$AssociationHistoryResponseCopyWithImpl<$Res>;
  $Res call({String result, String token, List<History> histories});
}

/// @nodoc
class _$AssociationHistoryResponseCopyWithImpl<$Res>
    implements $AssociationHistoryResponseCopyWith<$Res> {
  _$AssociationHistoryResponseCopyWithImpl(this._value, this._then);

  final AssociationHistoryResponse _value;
  // ignore: unused_field
  final $Res Function(AssociationHistoryResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? token = freezed,
    Object? histories = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      histories: histories == freezed
          ? _value.histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<History>,
    ));
  }
}

/// @nodoc
abstract class _$AssociationHistoryResponseCopyWith<$Res>
    implements $AssociationHistoryResponseCopyWith<$Res> {
  factory _$AssociationHistoryResponseCopyWith(
          _AssociationHistoryResponse value,
          $Res Function(_AssociationHistoryResponse) then) =
      __$AssociationHistoryResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, String token, List<History> histories});
}

/// @nodoc
class __$AssociationHistoryResponseCopyWithImpl<$Res>
    extends _$AssociationHistoryResponseCopyWithImpl<$Res>
    implements _$AssociationHistoryResponseCopyWith<$Res> {
  __$AssociationHistoryResponseCopyWithImpl(_AssociationHistoryResponse _value,
      $Res Function(_AssociationHistoryResponse) _then)
      : super(_value, (v) => _then(v as _AssociationHistoryResponse));

  @override
  _AssociationHistoryResponse get _value =>
      super._value as _AssociationHistoryResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? token = freezed,
    Object? histories = freezed,
  }) {
    return _then(_AssociationHistoryResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      histories: histories == freezed
          ? _value.histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<History>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssociationHistoryResponse extends _AssociationHistoryResponse {
  const _$_AssociationHistoryResponse(
      {this.result = '', this.token = '', this.histories = const <History>[]})
      : super._();

  factory _$_AssociationHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_AssociationHistoryResponseFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String result;
  @JsonKey(defaultValue: '')
  @override
  final String token;
  @JsonKey(defaultValue: const <History>[])
  @override
  final List<History> histories;

  @override
  String toString() {
    return 'AssociationHistoryResponse(result: $result, token: $token, histories: $histories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AssociationHistoryResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.histories, histories) ||
                const DeepCollectionEquality()
                    .equals(other.histories, histories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(histories);

  @JsonKey(ignore: true)
  @override
  _$AssociationHistoryResponseCopyWith<_AssociationHistoryResponse>
      get copyWith => __$AssociationHistoryResponseCopyWithImpl<
          _AssociationHistoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AssociationHistoryResponseToJson(this);
  }
}

abstract class _AssociationHistoryResponse extends AssociationHistoryResponse {
  const factory _AssociationHistoryResponse(
      {String result,
      String token,
      List<History> histories}) = _$_AssociationHistoryResponse;
  const _AssociationHistoryResponse._() : super._();

  factory _AssociationHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$_AssociationHistoryResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  List<History> get histories => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AssociationHistoryResponseCopyWith<_AssociationHistoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}
