import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:oshiruco_app/client/api_client/oshiruco_api_client.dart';
import 'package:oshiruco_app/model/concierge_chat/concierge_chat.dart';
import 'package:oshiruco_app/model/concierge_chat_room/concierge_chat_room.dart';

abstract class ConciergeRepositoryInterface {
  // chatRoomの新規作成
  Future<ConciergeChatRoom> createConciergeRoom({
    required String userUUID,
    required String expertID,
    required String message,
  });

  // documentIdに対応するroomを取得(なければnullを返却)
  Future<ConciergeChatRoom?> findConciergeRoom(String documentId);

  // 初めのmessageを作成
  Future<void> createFirstMessage({
    required String documentId,
    required String firstMessage,
  });

  // chatをlimit件取得
  Future<List<ConciergeChat>> fetchConciergeChats(
    String documentId, {
    required int currentMinimumTimeStamp,
    required int limited,
  });

  // message投稿
  Future<void> sendMessage({
    required String uuID,
    required String expertID,
    required String documentID,
    required String message,
  });

  Future<void> sendImage({
    required String expertID,
    required String documentId,
    required String photoPath,
  });

  Future<void> deleteMessage(String docID);

  Future<void> editMessage(ConciergeChat chat);

  // 既読
  Future<void> readTheThread({
    required String userUUID,
    required String expertID,
  });

  // 新規chatのstreamを返却する。
  Stream<QuerySnapshot<Map<String, dynamic>>> streamConciergeChats(
    String chatKey, {
    required int chatReadTimeStamp,
  });

  Future<int> countUnreadChats(
    String documentId, {
    required int chatLatestTimestamp,
  });
}

class ConciergeRepository implements ConciergeRepositoryInterface {
  ConciergeRepository({
    required OshirucoApiClient client,
  }) : _client = client;

  final OshirucoApiClient _client;

  final _conciergeChatRoomReference = FirebaseFirestore.instance
      .collection('/${dotenv.env['FS_COLLECTION_CONCIERGE_CHAT_ROOM'] ?? ''}');

  final _conciergeChatReference = FirebaseFirestore.instance
      .collection('/${dotenv.env['FS_COLLECTION_CONCIERGE_CHAT'] ?? ''}');

  @override
  Future<ConciergeChatRoom?> findConciergeRoom(String documentId) async {
    final snapshot = await _conciergeChatRoomReference.doc(documentId).get();
    final data = snapshot.data();
    if (data == null) {
      return null;
    }
    return ConciergeChatRoom.fromJson(data);
  }

  @override
  Future<ConciergeChatRoom> createConciergeRoom({
    required String userUUID,
    required String expertID,
    required String message,
  }) async {
    final documentID = '${userUUID}_$expertID';
    final now = DateTime.now();

    final nowMS = now.millisecondsSinceEpoch;
    final data = <String, dynamic>{};
    data['recentPosted'] = now;
    data['recentMessage'] = message;
    data['initialState'] = true;

    // filter用
    final members = <String, dynamic>{};
    members['user_$userUUID'] = nowMS;
    members['expert_$expertID'] = nowMS;
    data['members'] = members;

    // 自分
    final userMap = <String, dynamic>{};
    userMap['uuid'] = userUUID;
    userMap['responseState'] = false;
    userMap['readState'] = false;
    data['userData'] = userMap;

    // 専門家
    final expertMap = <String, dynamic>{};
    expertMap['expertID'] = expertID;
    expertMap['responseState'] = true;
    expertMap['readState'] = true;
    data['expertData'] = expertMap;
    await _conciergeChatRoomReference.doc(documentID).set(data);
    data['recentPosted'] = Timestamp.fromDate(now);
    return ConciergeChatRoom.fromJson(data);
  }

  @override
  Future<void> createFirstMessage({
    required String documentId,
    required String firstMessage,
  }) async {
    final now = DateTime.now();
    final chatMessage = ConciergeChat(
      message: firstMessage,
      postedAt: now,
      roomID: <String, int>{
        documentId: now.millisecondsSinceEpoch,
      },
    );
    await _conciergeChatReference.add(
      chatMessage.toJson(),
    );
  }

  @override
  Future<List<ConciergeChat>> fetchConciergeChats(
    String documentId, {
    required int currentMinimumTimeStamp,
    required int limited,
  }) async {
    final chatKey = 'roomID.$documentId';
    final snapshot = await _conciergeChatReference
        .where(chatKey, isLessThan: currentMinimumTimeStamp)
        .orderBy(chatKey, descending: true)
        .limit(limited)
        .get();
    return snapshot.docs.map((doc) {
      return ConciergeChat.fromSnapshot(
        doc,
      );
    }).toList();
  }

  @override
  Future<void> sendMessage({
    required String expertID,
    required String documentID,
    required String message,
    required String uuID,
  }) async {
    final now = DateTime.now();

    // チャット内容の追加
    final chatMessage = ConciergeChat(
      message: message,
      userStatus: true,
      postedAt: now,
      roomID: <String, int>{
        documentID: now.millisecondsSinceEpoch,
      },
    );
    await _conciergeChatReference.add(
      chatMessage.toJson(),
    );

    // 一覧表示用のチャットルームデータ更新
    // FYI. https://github.com/oshiruco/oshiruco_app/blob/release/2.1.4/lib/api/chat_api.dart#L50-L86
    final data = <String, dynamic>{
      'recentPosted': now,
      'recentMessage': message,
      'initialState': false,
      // 管理画面一覧取得用のソート値
      'members': <String, dynamic>{
        "expert_$expertID": now.millisecondsSinceEpoch,
        "user_$uuID": now.millisecondsSinceEpoch,
      },
      // ユーザーのコメントを有状態
      'userData': <String, dynamic>{
        'uuid': uuID,
        'responseState': true,
        'readState': true,
      },
      // コンシェルジュのコメントを無状態
      'expertData': <String, dynamic>{
        'expertID': expertID,
        'responseState': false,
        'readState': false,
      },
    };

    await _conciergeChatRoomReference.doc(documentID).update(data);

    await _sendAfter(expertID: expertID, message: message);
  }

  @override
  Future<void> sendImage({
    required String expertID,
    required String documentId,
    required String photoPath,
  }) async {
    final now = DateTime.now();
    final chatMessage = ConciergeChat(
      photoPath: photoPath,
      userStatus: true,
      postedAt: now,
      roomID: <String, int>{
        documentId: now.millisecondsSinceEpoch,
      },
    );
    await _conciergeChatReference.add(
      chatMessage.toJson(),
    );

    await _sendAfter(expertID: expertID, message: '画像が投稿されました。');
  }

  Future<void> _sendAfter({
    required String expertID,
    required String message,
  }) async {
    await _client.sendNotification(expertID, message);
  }

  @override
  Future<void> deleteMessage(String docID) async {
    await _conciergeChatReference.doc(docID).delete();
  }

  @override
  Future<void> editMessage(ConciergeChat chat) async {
    await _conciergeChatReference
        .doc(chat.id)
        .update({'message': chat.message});
  }

  @override
  Future<void> readTheThread({
    required String userUUID,
    required String expertID,
  }) async {
    final documentID = '${userUUID}_$expertID';
    final data = <String, dynamic>{};

    data['initialState'] = true;

    final userMap = <String, dynamic>{};
    userMap['uuid'] = userUUID;
    userMap['responseState'] = true;
    userMap['readState'] = true;
    data['userData'] = userMap;

    await _conciergeChatRoomReference.doc(documentID).update(data);
  }

  @override
  Stream<QuerySnapshot<Map<String, dynamic>>> streamConciergeChats(
    String chatKey, {
    required int chatReadTimeStamp,
  }) {
    final ref = _conciergeChatReference
        .where(
          chatKey,
          isGreaterThan: chatReadTimeStamp,
        )
        .orderBy(chatKey, descending: true)
        .limit(1);
    return ref.snapshots();
  }

  @override
  Future<int> countUnreadChats(
    String documentId, {
    required int chatLatestTimestamp,
  }) async {
    final chatKey = 'roomID.$documentId';
    final snapshot = await _conciergeChatReference
        .where(chatKey, isGreaterThan: chatLatestTimestamp)
        .orderBy(chatKey, descending: true)
        .get();
    return snapshot.size;
  }
}
