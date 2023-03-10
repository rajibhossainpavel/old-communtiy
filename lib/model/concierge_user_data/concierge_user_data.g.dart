// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concierge_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConciergeUserData _$_$_ConciergeUserDataFromJson(Map<String, dynamic> json) {
  return _$_ConciergeUserData(
    readState: json['readState'] as bool? ?? false,
    responseState: json['responseState'] as bool? ?? false,
    uuid: json['uuid'] as String,
  );
}

Map<String, dynamic> _$_$_ConciergeUserDataToJson(
        _$_ConciergeUserData instance) =>
    <String, dynamic>{
      'readState': instance.readState,
      'responseState': instance.responseState,
      'uuid': instance.uuid,
    };
