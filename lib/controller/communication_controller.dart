import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/model/dating_chat_room/dating_chat_room.dart';
import 'package:oshiruco_app/repository/chat_repository.dart';
import 'package:oshiruco_app/repository/communication_repository.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/state/communication_state/communication_state.dart';

class CommunicationController extends StateNotifier<CommunicationState> {
  CommunicationController({
    required CommunicationRepositoryInterface communicationRepository,
    required ChatRepositoryInterface chatRepository,
    required UsersRepositoryInterface usersRepository,
    required String ownUuid,
  })  : _communicationRepository = communicationRepository,
        _chatRepository = chatRepository,
        _usersRepository = usersRepository,
        _ownUuid = ownUuid,
        super(const CommunicationState());

  final CommunicationRepositoryInterface _communicationRepository;

  final ChatRepositoryInterface _chatRepository;

  final UsersRepositoryInterface _usersRepository;

  final String _ownUuid;

  late StreamSubscription<QuerySnapshot<Map<String, dynamic>>>
      _messageRoomStream;

  Future<void> init(BuildContext context) async {
    try {
      _prepareRoomStream();

      await loadFromLikedUsers(isInitialize: true);

      await loadToLikedUsers(isInitialize: true);

      await loadMatchedUsers();
    } catch (e) {
      debugPrint(e.toString());
      showErrorDialog(context, e);
    }
  }

  @override
  void dispose() {
    _messageRoomStream.cancel();
    super.dispose();
  }

  void _prepareRoomStream() {
    final stream = _chatRepository.streamFetchedJoinedChatRoom(_ownUuid);

    _messageRoomStream = stream.listen(
      (snapshot) {
        final chatRooms = snapshot.docs
            .map((doc) => DatingChatRoom.fromSnapshot(doc))
            .toList();

        final mapper = <String, DatingChatRoom>{};
        for (final room in chatRooms) {
          final otherMemberUUID =
              room.membersData.firstWhere((data) => data.uuid != _ownUuid).uuid;

          if (!mapper.containsKey(otherMemberUUID)) {
            mapper[otherMemberUUID] = room;
          }
        }

        final now = DateTime.now();
        final updatedMatchedUsers = [...state.matchedUsers];
        updatedMatchedUsers.sort(
          (a, b) => (mapper[b.uuid]?.recentPosted ?? now).compareTo(
            mapper[a.uuid]?.recentPosted ?? now,
          ),
        );

        state = state.copyWith(
          uuidChatRoomMapper: mapper,
          matchedUsers: updatedMatchedUsers,
        );
      },
    );
  }

  Future<void> loadMatchedUsers() async {
    final matchedUsers = await _communicationRepository.matchedUser();

    final fetchJoinedChatRooms =
        await _chatRepository.fetchJoinedChatRooms(_ownUuid);
    final now = DateTime.now();

    for (final user in matchedUsers) {
      if (fetchJoinedChatRooms[user.uuid] == null) {
        // マッチングしているがチャットルームが存在しない場合は作成する
        fetchJoinedChatRooms[user.uuid] = await _createChatRoom(user.uuid);
      }
    }

    matchedUsers.sort(
      (a, b) => (fetchJoinedChatRooms[b.uuid]?.recentPosted ?? now).compareTo(
        fetchJoinedChatRooms[a.uuid]?.recentPosted ?? now,
      ),
    );

    state = state.copyWith(
      matchedUsers: matchedUsers,
      uuidChatRoomMapper: fetchJoinedChatRooms,
    );
  }

  Future<void> loadFromLikedUsers({
    bool isInitialize = false,
  }) async {
    if (state.fromLikedUsers.isNotEmpty && state.isLastFromLiked) {
      return;
    }
    final nextPage = isInitialize ? 1 : state.currentToLikedPage + 1;
    final fromLikedUsers =
        await _communicationRepository.fromLikedUser(nextPage);

    final newFromLikedUsers = isInitialize
        ? fromLikedUsers
        : [
            ...state.fromLikedUsers,
            ...fromLikedUsers,
          ];

    state = state.copyWith(
      fromLikedUsers: newFromLikedUsers,
      currentFromLikedPage: nextPage,
      isLastFromLiked: fromLikedUsers.isEmpty,
    );
  }

  Future<void> loadToLikedUsers({
    bool isInitialize = false,
  }) async {
    if (state.toLikedUsers.isNotEmpty && state.isLastToLiked) {
      return;
    }
    final nextPage = isInitialize ? 1 : state.currentToLikedPage + 1;
    final toLikedUsers = await _communicationRepository.toLikedUser(nextPage);

    final newToLikedUsers = isInitialize
        ? toLikedUsers
        : [
            ...state.toLikedUsers,
            ...toLikedUsers,
          ];

    state = state.copyWith(
      toLikedUsers: newToLikedUsers,
      currentToLikedPage: nextPage,
      isLastToLiked: toLikedUsers.isEmpty,
    );
  }

  Future<DatingChatRoom> _createChatRoom(String otherUuid) async {
    final res = await Future.wait([
      _usersRepository.fetchUserByUuid(_ownUuid),
      _usersRepository.fetchUserByUuid(otherUuid),
    ]);

    return await _chatRepository.createFriendChatRoom(
      ownUser: res[0].user,
      otherUser: res[1].user,
    );
  }
}
