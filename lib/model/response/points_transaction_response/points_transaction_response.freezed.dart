// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'points_transaction_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PointsTransactionResponse _$PointsTransactionResponseFromJson(
    Map<String, dynamic> json) {
  return _PointsTransactionResponse.fromJson(json);
}

/// @nodoc
class _$PointsTransactionResponseTearOff {
  const _$PointsTransactionResponseTearOff();

  _PointsTransactionResponse call(
      {String result = '',
      String uuid = '',
      List<Transaction> transactions = const <Transaction>[],
      String token = ''}) {
    return _PointsTransactionResponse(
      result: result,
      uuid: uuid,
      transactions: transactions,
      token: token,
    );
  }

  PointsTransactionResponse fromJson(Map<String, Object> json) {
    return PointsTransactionResponse.fromJson(json);
  }
}

/// @nodoc
const $PointsTransactionResponse = _$PointsTransactionResponseTearOff();

/// @nodoc
mixin _$PointsTransactionResponse {
  String get result => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointsTransactionResponseCopyWith<PointsTransactionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointsTransactionResponseCopyWith<$Res> {
  factory $PointsTransactionResponseCopyWith(PointsTransactionResponse value,
          $Res Function(PointsTransactionResponse) then) =
      _$PointsTransactionResponseCopyWithImpl<$Res>;
  $Res call(
      {String result,
      String uuid,
      List<Transaction> transactions,
      String token});
}

/// @nodoc
class _$PointsTransactionResponseCopyWithImpl<$Res>
    implements $PointsTransactionResponseCopyWith<$Res> {
  _$PointsTransactionResponseCopyWithImpl(this._value, this._then);

  final PointsTransactionResponse _value;
  // ignore: unused_field
  final $Res Function(PointsTransactionResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? uuid = freezed,
    Object? transactions = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PointsTransactionResponseCopyWith<$Res>
    implements $PointsTransactionResponseCopyWith<$Res> {
  factory _$PointsTransactionResponseCopyWith(_PointsTransactionResponse value,
          $Res Function(_PointsTransactionResponse) then) =
      __$PointsTransactionResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String result,
      String uuid,
      List<Transaction> transactions,
      String token});
}

/// @nodoc
class __$PointsTransactionResponseCopyWithImpl<$Res>
    extends _$PointsTransactionResponseCopyWithImpl<$Res>
    implements _$PointsTransactionResponseCopyWith<$Res> {
  __$PointsTransactionResponseCopyWithImpl(_PointsTransactionResponse _value,
      $Res Function(_PointsTransactionResponse) _then)
      : super(_value, (v) => _then(v as _PointsTransactionResponse));

  @override
  _PointsTransactionResponse get _value =>
      super._value as _PointsTransactionResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? uuid = freezed,
    Object? transactions = freezed,
    Object? token = freezed,
  }) {
    return _then(_PointsTransactionResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointsTransactionResponse extends _PointsTransactionResponse {
  const _$_PointsTransactionResponse(
      {this.result = '',
      this.uuid = '',
      this.transactions = const <Transaction>[],
      this.token = ''})
      : super._();

  factory _$_PointsTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PointsTransactionResponseFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String result;
  @JsonKey(defaultValue: '')
  @override
  final String uuid;
  @JsonKey(defaultValue: const <Transaction>[])
  @override
  final List<Transaction> transactions;
  @JsonKey(defaultValue: '')
  @override
  final String token;

  @override
  String toString() {
    return 'PointsTransactionResponse(result: $result, uuid: $uuid, transactions: $transactions, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PointsTransactionResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.uuid, uuid) ||
                const DeepCollectionEquality().equals(other.uuid, uuid)) &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(uuid) ^
      const DeepCollectionEquality().hash(transactions) ^
      const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$PointsTransactionResponseCopyWith<_PointsTransactionResponse>
      get copyWith =>
          __$PointsTransactionResponseCopyWithImpl<_PointsTransactionResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PointsTransactionResponseToJson(this);
  }
}

abstract class _PointsTransactionResponse extends PointsTransactionResponse {
  const factory _PointsTransactionResponse(
      {String result,
      String uuid,
      List<Transaction> transactions,
      String token}) = _$_PointsTransactionResponse;
  const _PointsTransactionResponse._() : super._();

  factory _PointsTransactionResponse.fromJson(Map<String, dynamic> json) =
      _$_PointsTransactionResponse.fromJson;

  @override
  String get result => throw _privateConstructorUsedError;
  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PointsTransactionResponseCopyWith<_PointsTransactionResponse>
      get copyWith => throw _privateConstructorUsedError;
}
