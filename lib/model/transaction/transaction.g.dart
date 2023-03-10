// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$_$_TransactionFromJson(Map<String, dynamic> json) {
  return _$_Transaction(
    createdAt: json['createdAt'] as String? ?? '',
    kind: json['kind'] as String? ?? '',
    kindName: json['kindName'] as String? ?? '',
    delta: json['delta'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'kind': instance.kind,
      'kindName': instance.kindName,
      'delta': instance.delta,
    };
