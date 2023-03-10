// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_association_block_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetAssociationBlockResponse _$_$_GetAssociationBlockResponseFromJson(
    Map<String, dynamic> json) {
  return _$_GetAssociationBlockResponse(
    result: json['result'] as String? ?? '',
    token: json['token'] as String? ?? '',
    blocks: (json['blocks'] as List<dynamic>?)
            ?.map((e) => Block.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_GetAssociationBlockResponseToJson(
        _$_GetAssociationBlockResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'token': instance.token,
      'blocks': instance.blocks,
    };
