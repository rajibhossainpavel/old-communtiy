// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'association_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssociationHistoryResponse _$_$_AssociationHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _$_AssociationHistoryResponse(
    result: json['result'] as String? ?? '',
    token: json['token'] as String? ?? '',
    histories: (json['histories'] as List<dynamic>?)
            ?.map((e) => History.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_AssociationHistoryResponseToJson(
        _$_AssociationHistoryResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'token': instance.token,
      'histories': instance.histories,
    };
