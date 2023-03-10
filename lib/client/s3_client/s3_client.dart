import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:oshiruco_app/application/flavor.dart';
import 'package:oshiruco_app/client/api_client/oshiruco_api_client.dart';
import 'package:oshiruco_app/client/s3_client/s3_upload_helper.dart';

class S3Client extends S3UploadHelper {
  S3Client({required String uuid, required final OshirucoApiClient client})
      : _uuid = uuid,
        _client = client;
  final String _uuid;
  final OshirucoApiClient _client;

  Future<String> uploadProfileImage(String path) async {
    const width = 640;
    if (path == null || path.isEmpty) {
      return '';
    }
    try {
      final properties = await FlutterNativeImage.getImageProperties(path);
      final ext = path.split('.').last;
      final fileName = '${DateTime.now().millisecondsSinceEpoch}.$ext';
      final pWidth = properties.width ?? 1.0;
      final pHeight = properties.height ?? 0.0;
      final image = await FlutterNativeImage.compressImage(
        path,
        quality: 80,
        targetWidth: width,
        targetHeight: (pHeight * width / pWidth).round(),
      );
      final isSuccess = await _uploadImage(
        folderPath: 'user/$_uuid',
        fileName: fileName,
        file: image,
        type: BucketNameType.userContents,
      );
      return isSuccess ? '$_uuid/$fileName' : '';
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<bool> uploadCertificate(File file) async {
    const width = 800;
    // 拡張子取得
    final properties = await FlutterNativeImage.getImageProperties(file.path);
    // TODO(takaaki): API側でファイル名は固定でdrivers.jpgとなっていた・・・、どうもありがとうございました。
    final pWidth = properties.width ?? 0.01;
    final pHeight = properties.height ?? 0.0;
    final image = await FlutterNativeImage.compressImage(
      file.path,
      quality: 100,
      targetWidth: width,
      targetHeight: (pHeight * width / pWidth).round(),
    );
    try {
      final isSuccess = await _uploadImage(
        folderPath: _uuid,
        fileName: 'drivers.jpg',
        file: image,
      );
      // await file.delete();
      return isSuccess;
    } catch (e) {
      rethrow;
    }
  }

  Future<String> uploadGroupImage(File file) async {
    const width = 400;
    // 拡張子取得
    final ext = file.path.split('.').last;
    final properties = await FlutterNativeImage.getImageProperties(file.path);

    final fileName = '${DateTime.now().millisecondsSinceEpoch}.$ext';
    final pWidth = properties.width!;
    final pHeight = properties.height!;
    final image = await FlutterNativeImage.compressImage(
      file.path,
      quality: 80,
      targetWidth: width,
      targetHeight: (pHeight * width / pWidth).round(),
    );
    final isSuccess = await _uploadImage(
      folderPath: 'group',
      fileName: fileName,
      file: image,
      type: BucketNameType.groupContents,
    );

    await image.delete();

    return isSuccess ? 'group/$fileName' : '';
  }

  /// chatで使用するImage保存用
  Future<String> uploadChatImage(File file) async {
    const width = 800;
    // 拡張子取得
    final ext = file.path.split('.').last;
    final properties = await FlutterNativeImage.getImageProperties(file.path);
    final pWidth = properties.width!;
    final pHeight = properties.height!;
    final fileName = '$_uuid/${DateTime.now().millisecondsSinceEpoch}.$ext';

    final image = await FlutterNativeImage.compressImage(file.path,
        quality: 80,
        targetWidth: width,
        targetHeight: (pHeight * width / pWidth).round());
    // アップロードにはuser/が必要
    final isSuccess = await _uploadImage(
      folderPath: 'user',
      fileName: fileName,
      file: image,
      type: BucketNameType.userContents,
    );

    await image.delete();

    return isSuccess ? fileName : '';
  }

  Future<String> uploadDiaryImage(File file) async {
    // 拡張子取得
    final ext = file.path.split('.').last;
    final properties = await FlutterNativeImage.getImageProperties(file.path);

    final fileName = '${DateTime.now().millisecondsSinceEpoch}.$ext';

    final ph = properties.height;
    final pw = properties.width;

    if (ph == null || pw == null) {
      throw Exception('selected image size is null.');
    }

    const width = 640;

    final image = await FlutterNativeImage.compressImage(file.path,
        quality: 80,
        targetWidth: width,
        targetHeight: (ph * width / pw).round());

    final isSuccess = await _uploadImage(
      folderPath: 'user/$_uuid',
      fileName: fileName,
      file: image,
      type: BucketNameType.userContents,
    );

    if (isSuccess) {
      await image.delete();
    }
    return isSuccess ? '$_uuid/$fileName' : '';
  }

  /// uuid/filenameを返す
  /// 動画を参照時のpathは video/user/{uuid}/{filename}.mp4となる
  Future<String> uploadDiaryMovie(File file) async {
    // 拡張子取得
    final ext = file.path.split('.').last;
    final fileName = '${DateTime.now().millisecondsSinceEpoch}.$ext';

    // アップロードにはuser/が必要
    final isSuccess = await _uploadMovie(
      folderPath: 'user/$_uuid',
      fileName: fileName,
      file: file,
    );

    debugPrint('file: $file');

    if (isSuccess) {
      await file.delete();
    }
    debugPrint('movie upload is Success $isSuccess');

    return isSuccess ? '$_uuid/$fileName' : '';
  }

  Future<String> uploadSelfHistoryImage(String path) async {
    const width = 640;
    if (path == null) {
      return '';
    }
    try {
      final properties = await FlutterNativeImage.getImageProperties(path);
      final ext = path.split('.').last;
      final fileName = '${DateTime.now().millisecondsSinceEpoch}.$ext';
      final pWidth = properties.width ?? 1.0;
      final pHeight = properties.height ?? 0.0;
      final image = await FlutterNativeImage.compressImage(
        path,
        quality: 80,
        targetWidth: width,
        targetHeight: (pHeight * width / pWidth).round(),
      );
      final isSuccess = await _uploadImage(
        folderPath: 'user/$_uuid',
        fileName: fileName,
        file: image,
        type: BucketNameType.userContents,
      );
      return isSuccess ? '$_uuid/$fileName' : '';
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<bool> _uploadImage({
    required String folderPath,
    required String fileName,
    required File file,
    BucketNameType type = BucketNameType.certificate,
  }) {
    if (flavor != Flavor.development) {
      return upload(
        folderPath: folderPath,
        fileName: fileName,
        file: file,
        type: type,
      );
    }
    switch (type) {
      case BucketNameType.certificate:
        return _client.uploadIdFile(
          fileName: fileName,
          file: file,
        );
      case BucketNameType.userContents:
        return _client.uploadUserFile(
          fileName: fileName,
          file: file,
        );
      case BucketNameType.groupContents:
        return _client.uploadGroupFile(
          fileName: fileName,
          file: file,
        );
    }
  }

  Future<bool> _uploadMovie({
    required String folderPath,
    required String fileName,
    required File file,
  }) {
    if (flavor != Flavor.development) {
      return upload(
        folderPath: folderPath,
        fileName: fileName,
        file: file,
        type: BucketNameType.userContents,
      );
    }

    return _client.uploadMovieFile(
      fileName: fileName,
      file: file,
    );
  }
}
