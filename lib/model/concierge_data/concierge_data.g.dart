// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concierge_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConciergeData _$_$_ConciergeDataFromJson(Map<String, dynamic> json) {
  return _$_ConciergeData(
    readState: json['readState'] as bool? ?? false,
    responseState: json['responseState'] as bool? ?? false,
    expertID: json['expertID'] as String,
  );
}

Map<String, dynamic> _$_$_ConciergeDataToJson(_$_ConciergeData instance) =>
    <String, dynamic>{
      'readState': instance.readState,
      'responseState': instance.responseState,
      'expertID': instance.expertID,
    };
