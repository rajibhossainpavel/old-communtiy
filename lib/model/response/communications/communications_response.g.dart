// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'communications_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommunicationsResponse _$_$_CommunicationsResponseFromJson(
    Map<String, dynamic> json) {
  return _$_CommunicationsResponse(
    result: json['result'] as String,
    toLikedUUIDs: (json['toLikedUUIDs'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    matchedUUIDs: (json['matchedUUIDs'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    blockUUIDs:
        (json['blockUUIDs'] as List<dynamic>).map((e) => e as String).toList(),
    fromLikedUUIDs: (json['fromLikedUUIDs'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$_CommunicationsResponseToJson(
        _$_CommunicationsResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'toLikedUUIDs': instance.toLikedUUIDs,
      'matchedUUIDs': instance.matchedUUIDs,
      'blockUUIDs': instance.blockUUIDs,
      'fromLikedUUIDs': instance.fromLikedUUIDs,
    };
