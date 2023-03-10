import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/controller/chat_controller.dart';
import 'package:oshiruco_app/model/group_chat/group_chat.dart';
import 'package:oshiruco_app/model/group_detail/group_detail.dart';
import 'package:oshiruco_app/model/group_user/group_user.dart';
import 'package:oshiruco_app/model/response/user_detail_response/user_detail_response.dart';
import 'package:oshiruco_app/repository/chat_repository.dart';
import 'package:oshiruco_app/repository/communication_repository.dart';
import 'package:oshiruco_app/repository/groups_repository.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/state/group_chat_state/group_chat_state.dart';

class GroupChatController extends ChatController<GroupChatState> {
  GroupChatController({
    required GroupsRepository groupsRepository,
    required ChatRepositoryInterface chatRepository,
    required UsersRepositoryInterface usersRepository,
    required CommunicationRepositoryInterface communicationRepository,
    required Map<String, int> chatLatestTimestamps,
    required String uuid,
  })  : _groupsRepository = groupsRepository,
        _chatRepository = chatRepository,
        _usersRepository = usersRepository,
        _communicationRepository = communicationRepository,
        _chatLatestTimestamps = chatLatestTimestamps,
        _ownUuid = uuid,
        super(
          const GroupChatState(),
        );

  final GroupsRepositoryInterface _groupsRepository;

  final ChatRepositoryInterface _chatRepository;

  final UsersRepositoryInterface _usersRepository;

  final CommunicationRepositoryInterface _communicationRepository;

  final Map<String, int> _chatLatestTimestamps;

  int _currentTimestamp = 0;

  List<String> _blockUUIDs = [];

  final String _ownUuid;

  late GroupDetail _currentGroup;

  /// 初回時は現在時刻から探索　＝＞ 遡って10件取得 => 全て既読済み
  /// n回目も現在時刻から探索 => 遡って10件 => 未読、既読の切り分けあり。
  Future<void> loadInitialData(
    BuildContext context, {
    required String groupId,
  }) async {
    try {
      await groupChatRead(groupId);

      final communications = await _communicationRepository.communications();
      _blockUUIDs = communications.blockUUIDs;

      _currentTimestamp = DateTime.now().millisecondsSinceEpoch;

      _currentGroup = await _groupsRepository.groupsDetailFindById(groupId);

      chatStream = _chatRepository.streamGroupChat(
        'groupID.$groupId',
        chatReadTimeStamp: DateTime.now().millisecondsSinceEpoch,
      );

      await super.addListeners();

      state = state.copyWith(
        group: _currentGroup,
        uuidUsersMapper: {
          for (GroupUser user in _currentGroup.users) user.uuid: user,
        },
        chats: [],
        currentMaximumTimeStamp: _currentTimestamp,
      );
      await loadNextChats();
    } catch (e) {
      showErrorDialog(context, e);
    }
  }

  Future<void> groupChatRead(String groupId) async {
    await _groupsRepository.groupChatRead(groupId);
  }

  @override
  void dispose() {
    super.dispose();
  }

  /// 最後に確認したchatを取得する。
  GroupChat? getLastWatchedChat(GroupDetail group, List<GroupChat> chats) {
    _currentTimestamp = DateTime.now().millisecondsSinceEpoch;

    final chatLatestTimestamp = _chatLatestTimestamps[group.id];

    if (chatLatestTimestamp == null) {
      return null;
    }

    /// 最後に開いた時刻よりもtimestampが小さいもの
    return chats.firstWhereOrNull(
        (chat) => chatLatestTimestamp > chat.postedAt.millisecondsSinceEpoch);
  }

  @override
  Future<void> loadNextChats() async {
    final position =
        scrollController.hasClients ? scrollController.position : null;

    state = state.copyWith(isLoading: true);

    final groupId = _currentGroup.id;
    _currentTimestamp = DateTime.now().millisecondsSinceEpoch;

    /// 表示中の最小timestampの取得(初めは現在時刻)
    final minimumTimestamp = state.currentMinimumTimestamp == 0
        ? DateTime.now().millisecondsSinceEpoch
        : state.currentMinimumTimestamp;

    /// 最小timestampを元にchat次のchatを10件取得
    final chats = await _chatRepository.fetchGroupChats(
      groupId,
      uuid: _ownUuid,
      currentMinimumTimeStamp: minimumTimestamp,
      limited: loadNextChatLimit,
    );

    /// 取得したchatsが上限一杯でなかったら次は取得しない。
    final isLastPage = chats.length < loadNextChatLimit;

    final updatedUuidUsersMapper = await _searchUnknownUsers(chats);

    /// 最小timestampの更新
    final newMinimumTimestamp = chats.isNotEmpty
        ? chats.last.postedAt.millisecondsSinceEpoch
        : state.currentMinimumTimestamp;

    final excluded = chats.where((c) => !_blockUUIDs.contains(c.uuid));
    state = state.copyWith(
      chats: [...state.chats, ...excluded],
      currentMinimumTimestamp: newMinimumTimestamp,
      uuidUsersMapper: updatedUuidUsersMapper,
      isLastPage: isLastPage,
      isLoading: false,
      lastLatestChat: state.lastLatestChat ??
          getLastWatchedChat(_currentGroup, [...state.chats, ...chats]),
    );

    if (position != null) {
      SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        scrollController.jumpTo(position.pixels);
      });
    }
  }

  @override
  void listenChatCallBack(QuerySnapshot<Map<String, dynamic>> snapshot) {
    final docs = snapshot.docs;
    if (docs.isEmpty) {
      return;
    }
    final chat = GroupChat.fromSnapshotAndCheckOwner(docs[0], uuid: _ownUuid);
    if (state.chats.isNotEmpty && chat == state.chats.first) {
      return;
    }
    if (_blockUUIDs.contains(chat.uuid)) {
      return;
    }

    state = state.copyWith(
      chats: [chat, ...state.chats],
      currentMaximumTimeStamp: DateTime.now().millisecondsSinceEpoch,
    );
  }

  /// groupに存在しないけど、chatが存在するuser(退会済みなど)を確認する。
  Future<Map<String, GroupUser>> _searchUnknownUsers(
    List<GroupChat> chats,
  ) async {
    final uuidUsersMapper = {...state.uuidUsersMapper};
    final leaveUserIds = chats
        .map((chat) => chat.uuid)
        .where((uuid) => !uuidUsersMapper.containsKey(uuid))
        .toSet();

    final futures =
        leaveUserIds.map((uuid) => _usersRepository.fetchUserByUuid(uuid));

    List<UserDetailResponse> responses = [];
    try {
      responses = await Future.wait(
        futures,
        cleanUp: (success) => responses.add(success),
      );
    } catch (e) {
      // 取得失敗した場合も処理を続行する
      debugPrint('ERROR: $e');
    }

    for (final res in responses) {
      final user = res.user;
      uuidUsersMapper[user.uuid] = GroupUser(
        uuid: user.uuid,
        age: user.age,
        gender: user.gender,
        livePlace: user.livePlace,
        nickname: user.nickname,
        photoPaths: user.photoPaths,
      );
    }

    // ブロックされているユーザーの UUID を追加する
    _blockUUIDs = <String>{
      ..._blockUUIDs,
      ...responses
          .where((res) => res.user.isBlock || res.user.isRejected)
          .map((res) => res.user.uuid)
          .toList()
    }.toList();

    return uuidUsersMapper;
  }
}
