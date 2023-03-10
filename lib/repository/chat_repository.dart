import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:oshiruco_app/model/communication_chat/communication_chat.dart';
import 'package:oshiruco_app/model/dating_chat_member/dating_chat_member.dart';
import 'package:oshiruco_app/model/dating_chat_room/dating_chat_room.dart';
import 'package:oshiruco_app/model/group_chat/group_chat.dart';
import 'package:oshiruco_app/model/user/user.dart';

abstract class ChatRepositoryInterface {
  /// groupId, 現在表示中の最小timestampを元に、次に表示するべきchatをlimited件数分&時刻降順で取得
  Future<List<GroupChat>> fetchGroupChats(
    String groupId, {
    required String uuid,
    required int currentMinimumTimeStamp,
    required int limited,
  });

  /// GroupChatの形でchatを作成する
  Future<GroupChat> createGroupChat(GroupChat chat);

  /// 新規chatをStreamする。
  Stream<QuerySnapshot<Map<String, dynamic>>> streamGroupChat(
    String chatKey, {
    required int chatReadTimeStamp,
  });

  /// 所属しているchatRoomを{otherUuid: ChatRoom} の形で取得
  Future<Map<String, DatingChatRoom>> fetchJoinedChatRooms(String ownUuid);

  /// 所属しているchatRoomをstreamで返却。(roomに更新があった場合にrebuild)
  Stream<QuerySnapshot<Map<String, dynamic>>> streamFetchedJoinedChatRoom(
    String ownUuid,
  );

  /// chatRoomを新規作成
  Future<DatingChatRoom> createFriendChatRoom({
    required User ownUser,
    required User otherUser,
  });

  /// ownUserのchat投稿によるchatroomの更新
  Future<void> updateFriendChatRoom(
    String roomId, {
    required String ownUserUuid,
    String message = '',
  });

  // /// ownUserによる既読
  Future<void> readFriendChatRoom(
    String roomId, {
    required User ownUser,
    required User otherUser,
  });

  /// chatを新規作成する。
  Future<CommunicationChat> createCommunicationChat(CommunicationChat chat);

  /// roomIdと一致するchatを全件取得
  Future<List<CommunicationChat>> fetchCommunicationChats(
    String roomId, {
    required int currentMinimumTimeStamp,
    int limited = 10,
  });

  /// 新規やりとりchatのStreamSubscriptionを返す。
  Stream<QuerySnapshot<Map<String, dynamic>>> streamCommunicationChat(
    String chatKey, {
    required int chatReadTimeStamp,
  });
}

class ChatRepository implements ChatRepositoryInterface {
  factory ChatRepository() {
    _chatRepository ??= ChatRepository._();
    return _chatRepository!;
  }
  ChatRepository._();

  static ChatRepository? _chatRepository;

  final _datingChatRoomReference = FirebaseFirestore.instance
      .collection('/${dotenv.env['FS_COLLECTION_DATING_CHAT_ROOM'] ?? ''}');

  final _datingChatReference = FirebaseFirestore.instance
      .collection('/${dotenv.env['FS_COLLECTION_DATING_CHAT'] ?? ''}');

  final _groupChatReference = FirebaseFirestore.instance
      .collection('/${dotenv.env['FS_COLLECTION_GROUP_CHAT'] ?? ''}');

  @override
  Future<List<GroupChat>> fetchGroupChats(
    String groupId, {
    required int currentMinimumTimeStamp,
    required String uuid,
    int limited = 10,
  }) async {
    final chatKey = 'groupID.$groupId';
    final snapshot = await _groupChatReference
        .where(chatKey, isLessThan: currentMinimumTimeStamp)
        .orderBy(chatKey, descending: true)
        .limit(limited)
        .get();
    return snapshot.docs
        .map(
          (doc) => GroupChat.fromSnapshotAndCheckOwner(doc, uuid: uuid),
        )
        .toList();
  }

  @override
  Future<GroupChat> createGroupChat(GroupChat chat) async {
    try {
      final chatModel = {
        'groupID': chat.groupID,
        'uuid': chat.uuid,
        'uid': chat.uid,
        'photoPath': chat.photoPath,
        'postedAt': chat.postedAt,
        'message': chat.message,
      };
      await _groupChatReference.add(chatModel);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
    return chat;
  }

  @override
  Stream<QuerySnapshot<Map<String, dynamic>>> streamGroupChat(
    String chatKey, {
    required int chatReadTimeStamp,
  }) {
    final ref = _groupChatReference
        .where(
          chatKey,
          isGreaterThan: chatReadTimeStamp,
        )
        .orderBy(chatKey, descending: true)
        .limit(1);
    return ref.snapshots();
  }

  @override
  Stream<QuerySnapshot<Map<String, dynamic>>> streamFetchedJoinedChatRoom(
      String ownUuid) {
    final key = 'members.$ownUuid';
    debugPrint('chatRoom key: $key');
    final ref = _datingChatRoomReference
        .where(key, isGreaterThan: 0)
        .orderBy(key, descending: true);
    return ref.snapshots();
  }

  @override
  Future<Map<String, DatingChatRoom>> fetchJoinedChatRooms(
      String ownUuid) async {
    final key = 'members.$ownUuid';
    debugPrint('chatRoom key: $key');
    final snapshot = await _datingChatRoomReference
        .where(key, isGreaterThan: 0)
        .orderBy(key, descending: true)
        .get();
    final chatRooms =
        snapshot.docs.map((doc) => DatingChatRoom.fromSnapshot(doc)).toList();

    final map = <String, DatingChatRoom>{};
    for (final room in chatRooms) {
      final otherMemberUUID =
          room.membersData.firstWhere((data) => data.uuid != ownUuid).uuid;

      if (!map.containsKey(otherMemberUUID)) {
        map[otherMemberUUID] = room;
      }
    }

    return map;
  }

  @override
  Future<DatingChatRoom> createFriendChatRoom({
    required User ownUser,
    required User otherUser,
  }) async {
    final now = DateTime.now();

    final nowInMilliseconds = now.millisecondsSinceEpoch;
    final members = [ownUser, otherUser]
        .map(
          (user) => DatingChatMember(
            uuid: user.uuid,
            userName: user.nickname,
          ),
        )
        .toList();
    try {
      final chatRoom = <String, dynamic>{
        'initialState': true,
        'members': {
          ownUser.uuid: nowInMilliseconds,
          otherUser.uuid: nowInMilliseconds,
        },
        'membersData': [
          ...members.map((member) => member.toJson()),
        ],
        'recentMessage': '',
        'recentPosted': Timestamp.fromDate(now),
      };

      final res = await _datingChatRoomReference.add(chatRoom);
      final doc = await res.get();
      return DatingChatRoom.fromDocumentSnapshot(doc);
    } catch (e) {
      debugPrint(e.toString());
      throw Exception();
    }
  }

  @override
  Future<void> updateFriendChatRoom(
    String roomId, {
    required String ownUserUuid,
    String message = '',
  }) async {
    final snapshot = await _datingChatRoomReference.doc(roomId).get();
    final chatRoomModel = DatingChatRoom.fromDocumentSnapshot(snapshot);
    final now = DateTime.now();
    final nowInMilliseconds = now.millisecondsSinceEpoch;
    final members = chatRoomModel.membersData
        .map(
          (user) => DatingChatMember(
            uuid: user.uuid,
            userName: user.userName,
            readState: ownUserUuid == user.uuid,
            responseState: ownUserUuid == user.uuid,
          ),
        )
        .toList();
    try {
      final chatRoom = <String, dynamic>{
        /// initialStateはroomの作成時のみture
        'initialState': false,
        'members': {
          members.first.uuid: nowInMilliseconds,
          members.last.uuid: nowInMilliseconds,
        },
        'membersData': [
          ...members.map((member) => member.toJson()),
        ],
        'recentMessage': message,
        'recentPosted': now,
      };
      await _datingChatRoomReference.doc(roomId).update(chatRoom);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> readFriendChatRoom(
    String roomId, {
    required User ownUser,
    required User otherUser,
  }) async {
    final snapshot = await _datingChatRoomReference.doc(roomId).get();
    final chatRoomModel = DatingChatRoom.fromDocumentSnapshot(snapshot);
    final ownMemberData = chatRoomModel.membersData
        .firstWhere((user) => user.uuid == ownUser.uuid);
    final otherMemberData = chatRoomModel.membersData
        .firstWhere((user) => user.uuid == otherUser.uuid);
    final now = DateTime.now();
    final nowInMilliseconds = now.millisecondsSinceEpoch;
    final members = [ownMemberData, otherMemberData]
        .map(
          (user) => DatingChatMember(
            uuid: user.uuid,
            userName: user.userName,
            // 自分の既読をtrue, 相手の既読はそのままにして更新する
            readState: ownMemberData == user || user.readState,
            responseState: user.responseState,
          ),
        )
        .toList();
    try {
      final chatRoom = <String, dynamic>{
        'initialState': false,
        'members': {
          ownUser.uuid: nowInMilliseconds,
          otherUser.uuid: nowInMilliseconds,
        },
        'membersData': [
          ...members.map((member) => member.toJson()),
        ],
        'recentMessage': chatRoomModel.recentMessage,
        'recentPosted': chatRoomModel.recentPosted,
      };
      await _datingChatRoomReference.doc(roomId).update(chatRoom);
    } catch (e) {
      debugPrint(e.toString());
      throw Exception();
    }
  }

  @override
  Future<CommunicationChat> createCommunicationChat(
      CommunicationChat chat) async {
    try {
      final chatModel = <String, dynamic>{
        'message': chat.message,
        'photoPath': chat.photoPath,
        'roomID': chat.roomID,
        'postedAt': chat.postedAt,
        'uuid': chat.uuid,
        'uid': chat.uid,
      };
      final res = await _datingChatReference.add(chatModel);
      debugPrint('create data ${res.toString()}');
      return chat;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<List<CommunicationChat>> fetchCommunicationChats(
    String roomId, {
    required int currentMinimumTimeStamp,
    int limited = 10,
  }) async {
    final chatKey = 'roomID.$roomId';
    final snapshot = await _datingChatReference
        .where(chatKey, isLessThan: currentMinimumTimeStamp)
        .orderBy(chatKey, descending: true)
        .limit(limited)
        .get();
    return snapshot.docs
        .map(
          (doc) => CommunicationChat.fromJson(
            doc.data(),
          ),
        )
        .toList();
  }

  @override
  Stream<QuerySnapshot<Map<String, dynamic>>> streamCommunicationChat(
    String chatKey, {
    required int chatReadTimeStamp,
  }) {
    final ref = _datingChatReference
        .where(
          chatKey,
          isGreaterThan: chatReadTimeStamp,
        )
        .orderBy(chatKey, descending: true)
        .limit(1);
    return ref.snapshots();
  }
}
