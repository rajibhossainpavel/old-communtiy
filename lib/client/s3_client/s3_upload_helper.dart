import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:oshiruco_app/client/remote_config/config.dart';
import 'package:oshiruco_app/model/s3_information/s3_information.dart';
import 'package:simple_s3/simple_s3.dart';

enum BucketNameType {
  certificate,
  userContents,
  groupContents,
}

extension BucketNameExtension on BucketNameType {
  String name() {
    switch (this) {
      case BucketNameType.certificate:
        return dotenv.env['S3_BUCKET_CERTIFICATE'] ?? '';
      case BucketNameType.userContents:
      case BucketNameType.groupContents:
        return dotenv.env['S3_BUCKET_CONTENTS'] ?? '';
    }
  }
}

class S3UploadHelper {
  Future<S3Information> _loadS3InformationData() async {
    final value = Config.remoteConfig().getString('s3_info');
    return S3Information.fromString(value);
  }

  Future<bool> upload({
    required String folderPath,
    required String fileName,
    required File file,
    BucketNameType type = BucketNameType.certificate,
  }) async {
    final s3Info = await _loadS3InformationData();
    final _simpleS3 = SimpleS3();
    try {
      final res = await _simpleS3.uploadFile(
        file,
        type.name(),
        s3Info.cognitoPoolId,
        AWSRegions.apNorthEast1,
        fileName: fileName,
        debugLog: true,
        s3FolderPath: folderPath,
        accessControl: S3AccessControl.publicRead,
      );
      debugPrint(res);

      return res != null && res.isNotEmpty;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<bool> delete({
    required String photoPath,
    BucketNameType type = BucketNameType.userContents,
  }) async {
    final s3Info = await _loadS3InformationData();
    try {
      final res = await SimpleS3.delete(photoPath, type.name(),
          s3Info.cognitoPoolId, AWSRegions.apNorthEast1);
      // print('image has been successfully deleted: $res');
      return res;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
