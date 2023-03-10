// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concierge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Concierge _$_$_ConciergeFromJson(Map<String, dynamic> json) {
  return _$_Concierge(
    id: json['id'] as String? ?? '',
    jobId: json['jobId'] as String? ?? '',
    name: json['name'] as String? ?? '',
    iconPath: json['iconPath'] as String? ?? '',
    msgDefault: json['msgDefault'] as String? ?? '',
    msgAzuki: json['msgAzuki'] as String? ?? '',
    msgRestore: json['msgRestore'] as String? ?? '',
    msgClose: json['msgClose'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_ConciergeToJson(_$_Concierge instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jobId': instance.jobId,
      'name': instance.name,
      'iconPath': instance.iconPath,
      'msgDefault': instance.msgDefault,
      'msgAzuki': instance.msgAzuki,
      'msgRestore': instance.msgRestore,
      'msgClose': instance.msgClose,
    };
