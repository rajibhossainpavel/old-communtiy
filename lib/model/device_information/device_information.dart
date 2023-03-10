import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oshiruco_app/model/enum/os.dart';

part 'device_information.freezed.dart';

@freezed
class DeviceInformation with _$DeviceInformation {
  const factory DeviceInformation({
    required OS os,
    required String osVersion,
    required String model,
    required String appVersion,
    required String carrier,
    required Locale? locale,
  }) = _DeviceInformation;
  const DeviceInformation._();
}
