import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/controller/chat_controller.dart';
import 'package:oshiruco_app/model/communication_chat/communication_chat.dart';
import 'package:oshiruco_app/model/dating_chat_room/dating_chat_room.dart';
import 'package:oshiruco_app/model/user/user.dart';
import 'package:oshiruco_app/repository/chat_repository.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/state/communication_chat_state/communication_chat_state.dart';

class CommunicationChatController
    extends ChatController<CommunicationChatState> {
  CommunicationChatController({
    required UsersRepositoryInterface usersRepository,
    required ChatRepositoryInterface chatRepository,
    required String uuid,
  })  : _usersRepository = usersRepository,
        _chatRepository = chatRepository,
        _ownUuid = uuid,
        super(
          const CommunicationChatState(),
        );

  final UsersRepositoryInterface _usersRepository;

  final ChatRepositoryInterface _chatRepository;

  final String _ownUuid;

  Future<void> loadInitialData(
    BuildContext context, {
    required String otherUuid,
  }) async {
    try {
      final res = await Future.wait([
        _usersRepository.fetchUserByUuid(_ownUuid),
        _usersRepository.fetchUserByUuid(otherUuid),
      ]);
      final _ownUser = res.first.user;
      final _otherUser = res.last.user;
      final chatRoom = await _findOrCreateChatRoom(
        ownUser: _ownUser,
        otherUser: _otherUser,
      );

      await _chatRepository.readFriendChatRoom(
        chatRoom.id,
        ownUser: _ownUser,
        otherUser: _otherUser,
      );
      debugPrint('roomId: ${chatRoom.id}');
      int currentMinimumTimestamp = DateTime.now().millisecondsSinceEpoch;
      final chats = await _chatRepository.fetchCommunicationChats(
        chatRoom.id,
        limited: 20,
        currentMinimumTimeStamp: currentMinimumTimestamp,
      );
      debugPrint(chats.map((e) => e.roomID).toString());
      debugPrint('chats length: ${chats.length}');

      chatStream = _chatRepository.streamCommunicationChat(
        'roomID.${chatRoom.id}',
        chatReadTimeStamp: currentMinimumTimestamp,
      );

      super.addListeners();

      final timestamp = chats.isNotEmpty
          ? chats.last.postedAt.millisecondsSinceEpoch
          : currentMinimumTimestamp;

      state = state.copyWith(
        otherUser: _otherUser,
        ownUser: _ownUser,
        room: chatRoom,
        chats: chats,
        currentMinimumTimestamp: timestamp,
      );
    } catch (e) {
      showErrorDialog(context, e);
    }
  }

  /// chat画面を閉じるときに既読を更新する。
  Future<void> onPopChatRoom() async {
    final ownUser = state.ownUser;
    final otherUser = state.otherUser;
    if (ownUser == null || otherUser == null) {
      return;
    }
    await _chatRepository.readFriendChatRoom(
      state.room?.id ?? '',
      ownUser: ownUser,
      otherUser: otherUser,
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void listenChatCallBack(QuerySnapshot<Map<String, dynamic>> snapshot) {
    final docs = snapshot.docs;
    final chats = docs
        .map((doc) => CommunicationChat.fromSnapshotAndCheckOwner(
              doc,
              uuid: _ownUuid,
            ))
        .toList();
    if (chats.isEmpty ||
        (state.chats.isNotEmpty && state.chats.contains(chats[0]))) {
      return;
    }

    state = state.copyWith(
      chats: [chats[0], ...state.chats],
      currentMaximumTimeStamp: DateTime.now().millisecondsSinceEpoch,
    );
  }

  @override
  Future<void> loadNextChats() async {
    if (state.room == null || state.isLoading) {
      return;
    }

    final position =
        scrollController.hasClients ? scrollController.position : null;

    state = state.copyWith(isLoading: true);

    /// 表示中の最小timestampの取得(初めは現在時刻)
    final minimumTimestamp = state.currentMinimumTimestamp == 0
        ? DateTime.now().millisecondsSinceEpoch
        : state.currentMinimumTimestamp;

    /// 最小timestampを元に次のchatを取得
    final chats = await _chatRepository.fetchCommunicationChats(
      state.room!.id,
      currentMinimumTimeStamp: minimumTimestamp,
      limited: loadNextChatLimit,
    );

    /// 取得したchatsが上限一杯でなかったら次は取得しない。
    final isLastPage = chats.length < loadNextChatLimit;

    /// 最小timestampの更新
    final newMinimumTimestamp = chats.isNotEmpty
        ? chats.last.postedAt.millisecondsSinceEpoch
        : state.currentMinimumTimestamp;

    state = state.copyWith(
      chats: [...state.chats, ...chats],
      currentMinimumTimestamp: newMinimumTimestamp,
      isLastPage: isLastPage,
      isLoading: false,
    );

    if (position != null) {
      SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        scrollController.jumpTo(position.pixels);
      });
    }
  }

  Future<DatingChatRoom> _findOrCreateChatRoom({
    required User ownUser,
    required User otherUser,
  }) async {
    try {
      final chatRoomMap =
          await _chatRepository.fetchJoinedChatRooms(ownUser.uuid);
      debugPrint('chatRoomMap: $chatRoomMap');
      debugPrint('chatRoomLength: ${chatRoomMap.length}');
      debugPrint('ownUserUuid: ${ownUser.uuid}');
      debugPrint('otherUserUuid ${otherUser.uuid}');

      DatingChatRoom? chatRoom;

      // charRoomが既に存在するなら、それをroomに設定する。
      if (chatRoomMap.keys.contains(otherUser.uuid)) {
        chatRoom = chatRoomMap[otherUser.uuid];
      } else {
        // そうでないなら新規作成してModelをroomに設定する
        chatRoom = await _chatRepository.createFriendChatRoom(
          ownUser: ownUser,
          otherUser: otherUser,
        );
      }
      return chatRoom!;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  Future<DatingChatRoom> getUserChatRoom(
    BuildContext context, {
    required String otherUuid,
  }) async {
    try {
      final res = await Future.wait([
        _usersRepository.fetchUserByUuid(_ownUuid),
        _usersRepository.fetchUserByUuid(otherUuid),
      ]);
      final _ownUser = res.first.user;
      final _otherUser = res.last.user;
      final chatRoom = await _findOrCreateChatRoom(
        ownUser: _ownUser,
        otherUser: _otherUser,
      );

      await _chatRepository.readFriendChatRoom(
        chatRoom.id,
        ownUser: _ownUser,
        otherUser: _otherUser,
      );
      return chatRoom;
    } catch (e) {
      showErrorDialog(context, e);
      rethrow;
    }
  }
}
