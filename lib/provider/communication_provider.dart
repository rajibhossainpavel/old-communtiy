import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/controller/communication_chat_controller.dart';
import 'package:oshiruco_app/controller/communication_chat_sending_controller.dart';
import 'package:oshiruco_app/controller/communication_controller.dart';
import 'package:oshiruco_app/controller/matching_controller.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/provider/s3_client_provider.dart';
import 'package:oshiruco_app/state/communication_chat_sending_state/communication_chat_sending_state.dart';
import 'package:oshiruco_app/state/communication_chat_state/communication_chat_state.dart';
import 'package:oshiruco_app/state/communication_state/communication_state.dart';
import 'package:oshiruco_app/state/matching_state/matching_state.dart';

final matchingProvider =
    StateNotifierProvider<MatchingController, MatchingState>(
  (ref) => MatchingController(
    repository: ref.read(
      communicationRepositoryProvider,
    ),
  ),
);

final communicationProvider = StateNotifierProvider.autoDispose<
    CommunicationController, CommunicationState>(
  (ref) => CommunicationController(
    communicationRepository: ref.read(
      communicationRepositoryProvider,
    ),
    chatRepository: ref.read(chatRepositoryProvider),
    usersRepository: ref.read(usersRepositoryProvider),
    ownUuid: ref.read(uuidProvider),
  ),
);

final communicationChatProvider = StateNotifierProvider.autoDispose<
    CommunicationChatController, CommunicationChatState>(
  (ref) => CommunicationChatController(
    usersRepository: ref.read(
      usersRepositoryProvider,
    ),
    chatRepository: ref.read(chatRepositoryProvider),
    uuid: ref.read(uuidProvider),
  ),
);

final communicationChatSendingProvider = StateNotifierProvider<
    CommunicationChatSendingController, CommunicationChatSendingState>(
  (ref) => CommunicationChatSendingController(
    ref.read(chatRepositoryProvider),
    communicationRepository: ref.read(communicationRepositoryProvider),
    s3client: ref.read(s3ClientProvider),
    uuid: ref.read(uuidProvider),
    uid: ref.read(uidProvider),
  ),
);
