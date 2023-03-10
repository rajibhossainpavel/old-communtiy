// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'points_transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PointsTransactionResponse _$_$_PointsTransactionResponseFromJson(
    Map<String, dynamic> json) {
  return _$_PointsTransactionResponse(
    result: json['result'] as String? ?? '',
    uuid: json['uuid'] as String? ?? '',
    transactions: (json['transactions'] as List<dynamic>?)
            ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    token: json['token'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_PointsTransactionResponseToJson(
        _$_PointsTransactionResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'uuid': instance.uuid,
      'transactions': instance.transactions,
      'token': instance.token,
    };
