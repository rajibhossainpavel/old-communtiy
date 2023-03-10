import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/controller/group_category_screen_controller.dart';
import 'package:oshiruco_app/controller/group_chat_controller.dart';
import 'package:oshiruco_app/controller/group_chat_sending_controller.dart';
import 'package:oshiruco_app/controller/group_create_screen_controller.dart';
import 'package:oshiruco_app/controller/group_detail_owner_screen_controller.dart';
import 'package:oshiruco_app/controller/group_detail_screen_controller.dart';
import 'package:oshiruco_app/controller/group_edit_screen_controller.dart';
import 'package:oshiruco_app/controller/group_screen_controller.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/provider/s3_client_provider.dart';
import 'package:oshiruco_app/state/group_category_screen_state/group_category_screen_state.dart';
import 'package:oshiruco_app/state/group_chat_sending_state/group_chat_sending_state.dart';
import 'package:oshiruco_app/state/group_chat_state/group_chat_state.dart';
import 'package:oshiruco_app/state/group_detail_owner_screen_state/group_detail_owner_screen_state.dart';
import 'package:oshiruco_app/state/group_detail_screen_state/group_detail_screen_state.dart';
import 'package:oshiruco_app/state/group_screen_state.dart';
import 'package:oshiruco_app/state/group_update_state/group_update_state.dart';

final groupScreenProvider =
    StateNotifierProvider<GroupScreenController, GroupScreenState>(
  (ref) => GroupScreenController(
    groupRepository: ref.read(groupRepositoryProvider),
    usersRepository: ref.read(usersRepositoryProvider),
    uuid: ref.read(uuidProvider),
  ),
);

final groupDetailScreenProvider =
    StateNotifierProvider<GroupDetailScreenController, GroupDetailScreenState>(
  (ref) => GroupDetailScreenController(
    groupRepository: ref.read(groupRepositoryProvider),
    usersRepository: ref.read(usersRepositoryProvider),
  ),
);

final groupCategoryScreenProvider = StateNotifierProvider<
    GroupCategoryScreenController, GroupCategoryScreenState>(
  (ref) => GroupCategoryScreenController(
    groupsRepository: ref.read(groupRepositoryProvider),
  ),
);

final groupCreateScreenProvider = StateNotifierProvider.autoDispose<
    GroupCreateScreenController, GroupUpdateState>(
  (ref) => GroupCreateScreenController(
    groupRepository: ref.read(groupRepositoryProvider),
    s3client: ref.read(s3ClientProvider),
  ),
);

final groupEditScreenProvider =
    StateNotifierProvider<GroupEditScreenController, GroupUpdateState>(
  (ref) => GroupEditScreenController(
    groupRepository: ref.read(groupRepositoryProvider),
    s3client: ref.read(s3ClientProvider),
  ),
);

final groupDetailOwnerScreenProvider = StateNotifierProvider<
    GroupDetailOwnerScreenController, GroupDetailOwnerScreenState>(
  (ref) => GroupDetailOwnerScreenController(
    groupsRepository: ref.read(groupRepositoryProvider),
  ),
);

final groupChatProvider =
    StateNotifierProvider.autoDispose<GroupChatController, GroupChatState>(
  (ref) => GroupChatController(
    groupsRepository: ref.read(groupRepositoryProvider),
    chatRepository: ref.read(chatRepositoryProvider),
    usersRepository: ref.read(usersRepositoryProvider),
    communicationRepository: ref.read(communicationRepositoryProvider),
    uuid: ref.read(uuidProvider),
    chatLatestTimestamps: ref.read(chatLatestTimestampsProvider),
  ),
);

final groupChatSendingProvider = StateNotifierProvider.autoDispose<
    GroupChatSendingController, GroupChatSendingState>(
  (ref) => GroupChatSendingController(
    groupsRepository: ref.read(
      groupRepositoryProvider,
    ),
    chatRepository: ref.read(chatRepositoryProvider),
    s3Client: ref.read(s3ClientProvider),
    uuid: ref.read(uuidProvider),
    uid: ref.read(uidProvider),
  ),
);
