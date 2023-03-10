import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/controller/friend_detail_controller.dart';
import 'package:oshiruco_app/controller/friend_filtering_controller.dart';
import 'package:oshiruco_app/controller/friend_screen_controller.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/communication_provider.dart';
import 'package:oshiruco_app/provider/repository_provider.dart';
import 'package:oshiruco_app/state/friend_detail_state/friend_detail_state.dart';
import 'package:oshiruco_app/state/friend_filtering_state/friend_filtering_state.dart';
import 'package:oshiruco_app/state/friend_screen_state/friend_screen_state.dart';

final friendScreenProvider =
    StateNotifierProvider<FriendScreenController, FriendScreenState>(
  (ref) => FriendScreenController(
    usersRepository: ref.read(usersRepositoryProvider),
    communicationRepository: ref.read(communicationRepositoryProvider),
  ),
);

final friendDetailProvider = StateNotifierProvider.autoDispose<
    FriendDetailController, FriendDetailState>(
  (ref) => FriendDetailController(
    uuid: ref.read(uuidProvider),
    friendListController: ref.read(friendScreenProvider.notifier),
    matchingController: ref.read(matchingProvider.notifier),
    diaryRepository: ref.read(diariesRepositoryProvider),
    usersRepository: ref.read(usersRepositoryProvider),
    associationRepository: ref.read(associationRepositoryProvider),
    visitHistoryRepository: ref.read(visitHistoryRepositoryProvider),
    groupRepository: ref.read(groupRepositoryProvider),
    chatRepository: ref.read(chatRepositoryProvider),
  ),
);

final filteringProvider =
    StateNotifierProvider<FriendFilteringController, FriendFilteringState>(
  (ref) => FriendFilteringController(
    uuid: ref.read(uuidProvider),
    usersRepository: ref.read(usersRepositoryProvider),
  ),
);
