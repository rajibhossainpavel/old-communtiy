import 'dart:io';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oshiruco_app/application/analytics.dart';
import 'package:oshiruco_app/application/appsflyer.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/client/image_picker/image_picker.dart';
import 'package:oshiruco_app/client/s3_client/s3_client.dart';
import 'package:oshiruco_app/controller/app_controller.dart';
import 'package:oshiruco_app/exception/exception.dart';
import 'package:oshiruco_app/model/enum/certificate.dart';
import 'package:oshiruco_app/model/enum/register_state.dart';
import 'package:oshiruco_app/repository/user_repository.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/upload_certificate_state.dart';

class UploadCertificateController
    extends StateNotifier<UploadCertificateState> {
  UploadCertificateController({
    required UserRepositoryInterface userRepository,
    required S3Client s3Client,
    required AppController appController,
    required String uuid,
    required String uid,
  })  : _userRepository = userRepository,
        _s3Client = s3Client,
        _appController = appController,
        _uid = uid,
        _uuid = uuid,
        super(const UploadCertificateState());

  final UserRepositoryInterface _userRepository;
  final S3Client _s3Client;
  final AppController _appController;
  final String _uuid;
  final String _uid;

  Future<void> onTapTakePhoto(
      BuildContext context, Certificate certificate) async {
    final result = await showModalActionSheet<ImageSource>(
      context: context,
      title: '${certificate.toLabel()}を撮影する',
      actions: [
        const SheetAction(
            icon: Icons.camera_alt, label: 'カメラ', key: ImageSource.camera),
        const SheetAction(
            icon: Icons.photo_album, label: 'ギャラリー', key: ImageSource.gallery)
      ],
    );
    if (result == null) {
      return;
    }
    final pickedFile =
        await pickImageOrRequestPermission(context, result, lowQuality: false);
    state = state.copyWith(imagePath: pickedFile?.path ?? '');
  }

  Future<void> onTapNext(
    BuildContext context, {
    Certificate? certificate,
  }) async {
    try {
      state = state.copyWith(isLoading: true);

      final imagePath = state.imagePath;

      if (certificate == null || imagePath == '') {
        state = state.copyWith(isLoading: false);
        return;
      }
      final isSuccess = await _s3Client.uploadCertificate(File(imagePath));
      if (!isSuccess) {
        showErrorDialogWithMessage(
          context,
          '画像のアップロードに失敗しました。再度お試しください。改善されない場合はお問い合わせください。',
        );
        return;
      }

      final response = await _userRepository.userVerify(
        certificate: certificate,
        uuid: _uuid,
        uid: _uid,
      );
      state = state.copyWith(isLoading: false);
      if (response.result != 'success') {
        _appController.updateFinishedUserVerifyFlag(flag: false);
        showErrorDialogWithMessage(
          context,
          '登録に失敗しました。再度お試しください。改善されない場合はお問い合わせください。',
        );
        return;
      }

      final registerState = RegisterStateExtension.fromString(response.verify);
      if (registerState != RegisterState.verified) {
        if (registerState == RegisterState.eliminateID) {
          showErrorDialogWithMessage(
            context,
            '規約違反により利用を制限します',
          );
          return;
        }

        throw RegisterStateException(registerState);
      }

      _appController.updateFinishedUserVerifyFlag(flag: true);
      Analytics.registerVerified();
      AppsFlyer().registerStarted(certificate);
      routemaster.replace('/complete-register');
    } catch (e) {
      debugPrint(e.toString());
      showErrorDialog(context, e);
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }
}
