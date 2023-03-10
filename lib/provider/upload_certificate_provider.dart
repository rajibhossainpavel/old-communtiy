import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/controller/upload_certificate_controller.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/provider/s3_client_provider.dart';
import 'package:oshiruco_app/state/upload_certificate_state.dart';

final uploadCertificateProvider = StateNotifierProvider.autoDispose<
    UploadCertificateController, UploadCertificateState>(
  (ref) => UploadCertificateController(
    s3Client: ref.watch(s3ClientProvider),
    userRepository: ref.watch(userRepositoryProvider),
    appController: ref.watch(appProvider.notifier),
    uid: ref.watch(uidProvider),
    uuid: ref.watch(uuidProvider),
  ),
);
