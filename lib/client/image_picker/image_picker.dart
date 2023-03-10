import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

/// 画像ファイルを選択して返します
/// 権限がない場合は権限リクエストのダイアログを表示します
/// [lowQuality] が true の場合は画像の品質を低品質に変換します
Future<XFile?> pickImageOrRequestPermission(
    BuildContext context, ImageSource source,
    {required bool lowQuality}) async {
  try {
    final file = await ImagePicker().pickImage(
      source: source,
      maxWidth: lowQuality ? 900 : null,
    );

    if (!lowQuality) {
      return file;
    }

    if (file == null) {
      return null;
    }
    return await convertToPng(file);
  } on PlatformException {
    showPermissionDialog(
      context,
      source == ImageSource.camera ? 'カメラ' : 'フォトライブラリ',
    );
    return null;
  }
}

/// 動画ファイルを選択して返します
/// 権限がない場合は権限リクエストのダイアログを表示します
Future<XFile?> pickVideoOrRequestPermission(
  BuildContext context,
  ImageSource source,
) async {
  try {
    return await ImagePicker().pickVideo(source: source);
  } on PlatformException {
    showPermissionDialog(
      context,
      source == ImageSource.camera ? 'カメラ' : 'フォトライブラリ',
    );
    return null;
  }
}

Future<XFile?> convertToPng(XFile file) async {
  final decoded = decodeImage(await file.readAsBytes());
  if (decoded == null) {
    return null;
  }
  final tempDir = await getTemporaryDirectory();
  final filePath = path.join(
    tempDir.path,
    'img_${DateTime.now().millisecondsSinceEpoch}.png',
  );

  final pngBytes = encodePng(decoded);
  await File(filePath).writeAsBytes(pngBytes);
  return XFile.fromData(Uint8List.fromList(pngBytes), path: filePath);
}
