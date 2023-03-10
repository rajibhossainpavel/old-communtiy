import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/controller/application_initialize_controller.dart';
import 'package:oshiruco_app/controller/fcm_token_controller.dart';
import 'package:oshiruco_app/provider/api_client_provider.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/repository/application_repository.dart';
import 'package:oshiruco_app/repository/device_information_repository.dart';
import 'package:oshiruco_app/state/application_initialize_state/application_initialize_state.dart';

final deviceInfoRepoProvider = Provider(
  (ref) => DeviceInformationRepository(),
);

final applicationInitRepoProvider = Provider<ApplicationRepository>(
  (ref) => ApplicationRepository(
    client: ref.watch(oshirucoClientProvider),
  ),
);

final applicationInitializeProvider = StateNotifierProvider<
    ApplicationInitializeController, ApplicationInitializeState>(
  (ref) => ApplicationInitializeController(
    usersRepository: ref.read(usersRepositoryProvider),
    deviceInfoRepo: ref.read(deviceInfoRepoProvider),
    authInstance: FirebaseAuth.instance,
    appController: ref.watch(appProvider.notifier),
  ),
);

final fcmTokenProvider = Provider<FcmTokenController>(
  (ref) => FcmTokenController(
    client: ref.watch(oshirucoClientProvider),
  ),
);
