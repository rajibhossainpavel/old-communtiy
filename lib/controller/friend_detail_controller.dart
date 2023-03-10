import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/controller/friend_screen_controller.dart';
import 'package:oshiruco_app/controller/matching_controller.dart';
import 'package:oshiruco_app/model/diary/diary.dart';
import 'package:oshiruco_app/model/enum/friend_matching_type.dart';
import 'package:oshiruco_app/model/enum/friend_options.dart';
import 'package:oshiruco_app/repository/association_repository.dart';
import 'package:oshiruco_app/repository/chat_repository.dart';
import 'package:oshiruco_app/repository/diaries_repository.dart';
import 'package:oshiruco_app/repository/groups_repository.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/repository/visit_history_repository.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/friend_detail_state/friend_detail_state.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_complete_greeting.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_complete_matching.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_shortage_greeting.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_sigle_selector.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_violation_report.dart';
import 'package:oshiruco_app/widget/component/dialog/greeting_dialog.dart';
import 'package:oshiruco_app/widget/component/snack_bar/message_snack_bar.dart';
import 'package:oshiruco_app/widget/screen/diary/diary_comment_screen.dart';

class FriendDetailController extends StateNotifier<FriendDetailState> {
  FriendDetailController({
    required String uuid,
    required MatchingController matchingController,
    required FriendScreenController friendListController,
    required DiariesRepositoryInterface diaryRepository,
    required UsersRepositoryInterface usersRepository,
    required AssociationRepositoryInterface associationRepository,
    required VisitHistoryRepositoryInterface visitHistoryRepository,
    required GroupsRepositoryInterface groupRepository,
    required ChatRepositoryInterface chatRepository,
  })  : _ownUuid = uuid,
        _matchingController = matchingController,
        _friendListController = friendListController,
        _usersRepository = usersRepository,
        _diaryRepository = diaryRepository,
        _associationRepository = associationRepository,
        _visitHistoryRepository = visitHistoryRepository,
        _groupRepository = groupRepository,
        _chatRepository = chatRepository,
        super(const FriendDetailState());

  final String _ownUuid;
  final MatchingController _matchingController;
  final FriendScreenController _friendListController;
  final UsersRepositoryInterface _usersRepository;
  final DiariesRepositoryInterface _diaryRepository;
  final AssociationRepositoryInterface _associationRepository;
  final VisitHistoryRepositoryInterface _visitHistoryRepository;
  final GroupsRepositoryInterface _groupRepository;
  final ChatRepositoryInterface _chatRepository;

  late String _uuid;

  Future<void> loadInitialData(
    String uuid, {
    bool isFromLiked = false,
  }) async {
    _uuid = uuid;
    try {
      final response = await _usersRepository.fetchUserByUuid(uuid);
      final user = response.user;
      final groups = await _groupRepository.groupsFindByUuid(uuid);
      final experts = response.experts;

      final diaryResponse = await _diaryRepository.findByUuid(uuid: uuid);
      final diaries = diaryResponse.diaries;

      final ownResponse = await _usersRepository.fetchUserByUuid(_ownUuid);
      if (ownResponse.user.enableVisitHistory) {
        _visitHistoryRepository.add(_uuid);
      }

      state = state.copyWith(
        user: user,
        matchingType: _matchingController.getFriendMatchingTypeFromUuid(uuid),
        groups: groups,
        experts: experts,
        diaries: diaries,
        latestDiarySmile: diaries.isNotEmpty ? diaries.first.smile : 0,
        isSmiled: diaries.isNotEmpty && diaries.first.isSmiled,
      );
    } catch (e) {
      debugPrint(e.toString());
      throw Exception;
    }
  }

  Diary? get latestDiary => state.diaries.firstOrNull;

  Future<void> onPressedSmile({
    required String diaryId,
    required String diaryUserId,
  }) async {
    final updatedSmileNum = await _diaryRepository.smile(
      diaryId,
      diaryUserId: diaryUserId,
    );

    /// failureで0が帰ってくる
    if (updatedSmileNum < 1) {
      return;
    }
    state = state.copyWith(
      latestDiarySmile: updatedSmileNum,
      isSmiled: state.latestDiarySmile < updatedSmileNum,
    );
  }

  void onTapComment(Diary diary) {
    final diaryJsonString = jsonEncode(diary.toJson());
    routemaster.push(
      'diary/comment',
      queryParameters: {DiaryCommentScreen.paramDiaryId: diaryJsonString},
    );
  }

  Future<void> onPressedOptionButton(BuildContext context) async {
    final isFavorite = state.user?.isFavorite ?? false;
    final result = await showSingleSelectorDialog(
      context: context,
      items: FriendOptions.values
          .where(
            (option) =>
                // お気に入り登録済みの場合は お気に入り登録メニューは出さない
                (isFavorite && option != FriendOptions.favorite) ||

                // お気に入り未登録の場合は お気に入り解除メニューは出さない
                (!isFavorite && option != FriendOptions.unfavorite),
          )
          .map((e) => e.displayString())
          .toList(),
    );
    if (result == null) {
      return;
    }
    final option = FriendOptionsExtension.fromDiaplayString(result);
    final isHideCurrentUser = await _handleOptions(
      context,
      option: option,
    );
    if (isHideCurrentUser) {
      _friendListController.addHiddenUser(_uuid);
    }
  }

  // 戻り値は、true: 該当Userをlistから削除
  Future<bool> _handleOptions(
    BuildContext context, {
    required FriendOptions option,
  }) async {
    switch (option) {
      case FriendOptions.favorite:
        await _favorite(context);
        return false;
      case FriendOptions.unfavorite:
        await _unfavorite(context);
        return false;
      case FriendOptions.block:
        return _block(context);
      case FriendOptions.violation:
        return _violation(context);
      case FriendOptions.cancel:
        // キャンセルの場合は何にもしない
        return false;
    }
  }

  Future<void> _favorite(BuildContext context) async {
    try {
      await _associationRepository.putFavoriteUser(_uuid);
      await showMessageSnackBar(context, message: 'お気に入りに登録しました。');
      Navigator.of(context).pop();
    } catch (e) {
      debugPrint(e.toString());
      _showFailedSnackBar(context);
    }
  }

  Future<void> _unfavorite(BuildContext context) async {
    try {
      await _associationRepository.deleteFavoriteUser(_uuid);
      await showMessageSnackBar(context, message: 'お気に入りを解除しました。');
      Navigator.of(context).pop();
    } catch (e) {
      debugPrint(e.toString());
      _showFailedSnackBar(context);
    }
  }

  Future<bool> _block(BuildContext context) async {
    try {
      // Added Confirmation dialog --start
      bool isConfirmed = await showAlertConfirmationDialog(
          context, '確認メッセージ', '一度ブロックした人を解除する事は出来ません。本当にブロックしますか？', () {});

      if (isConfirmed) {
        //added progress indicator. runs till api call is still in the process
        preventDoubleTap(context);
        await _associationRepository.putBlockUser(_uuid);
        showMessageSnackBar(context, message: 'ブロックしました');
        state = state.copyWith(matchingType: FriendMatchingType.blocked);
        _matchingController.addBlockUuid(_uuid);
        Navigator.pop(context);
        //end
        Navigator.of(context).pop();
      }
      return isConfirmed;
    } catch (e) {
      debugPrint(e.toString());
      _showFailedSnackBar(context);
      return false;
    }
  }

  // 違反報告を最後まで完了したらtrue そうでなければfalseを返す。
  Future<bool> _violation(
    BuildContext context,
  ) async {
    try {
      final user = state.user;
      if (user == null) {
        return false;
      }
      final violationContent =
          await showViolationReportDialog(context: context, user: user);
      if (violationContent == null) {
        return false;
      }
      await _associationRepository.putViolationUser(
        _uuid,
        text: violationContent,
      );
      await showMessageSnackBar(context, message: '違反報告をしました');
      state = state.copyWith(matchingType: FriendMatchingType.blocked);
      Navigator.of(context).pop();
      return true;
    } catch (e) {
      _showFailedSnackBar(context);
      return false;
    }
  }

  Future<void> onPressedActionButton(BuildContext context) async {
    try {
      final user = state.user;

      if (user == null) {
        return;
      }

      switch (state.matchingType) {
        case FriendMatchingType.blocked:
          return showMessageSnackBar(
            context,
            message: 'ブロック中です',
          );
        case FriendMatchingType.matching:
          routemaster.push('/communication/chat/${user.uuid}');
          return;
        case FriendMatchingType.fromLiked:
          await _handleGreeting(context, recommend: true);
          state = state.copyWith(matchingType: FriendMatchingType.matching);

          /// matchingしたタイミングでchatRoomを作成する。
          await _createChatRoom();
          return _friendListController.addHiddenUser(user.uuid);
        case FriendMatchingType.liked:
          return await showMessageSnackBar(
            context,
            message: '${user.nickname}さんからの挨拶待ちです。',
          );
        case FriendMatchingType.initial:
          final message = await showGreetingDialog(
            context,
            user: user,
          );
          if (message == null) {
            return;
          }
          await _handleGreeting(
            context,
            message: message,
          );
          state = state.copyWith(
            matchingType: FriendMatchingType.liked,
          );
          _friendListController.addHiddenUser(user.uuid);
      }
    } catch (e) {
      if (e is LikesShortageException) {
        return _handleShortageGreeting(context);
      }
      showErrorDialog(context, e);
    }
  }

  Future<void> _handleShortageGreeting(BuildContext context) async {
    final res = await showShortageGreetingDialog(
          context,
          'おしるこポイントを挨拶に交換してください。',
        ) ??
        false;
    if (res) {
      routemaster.push('point');
    }
  }

  /// matchingしたタイミングでchatRoomを作成する。
  Future<void> _createChatRoom() async {
    final res = await Future.wait([
      _usersRepository.fetchUserByUuid(_ownUuid),
      _usersRepository.fetchUserByUuid(_uuid),
    ]);

    await _chatRepository.createFriendChatRoom(
      ownUser: res[0].user,
      otherUser: res[1].user,
    );
  }

  Future<void> _handleGreeting(
    BuildContext context, {
    String message = '',
    bool recommend = false,
  }) async {
    final user = state.user;

    if (user == null) {
      return;
    }
    final isMatching = await _associationRepository.likeToUser(
      user.uuid,
      message: message,
      recommend: recommend,
    );
    if (!isMatching) {
      _matchingController.addToLikedUUIDs(
        _uuid,
      );
      return showCompleteGreetingDialog(context, user: user);
    }
    _matchingController.addMatchingUUIDs(_uuid);
    final shouldRouteToMessage = await showCompleteMatchingDialog(
      context,
      user: user,
    );
    if (shouldRouteToMessage ?? false) {
      routemaster.push('/communication/chat/$_uuid');
    }
  }

  Future<void> _showFailedSnackBar(BuildContext context) async {
    showMessageSnackBar(context, message: '処理に失敗しました');
  }
}
