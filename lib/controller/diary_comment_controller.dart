import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/model/diary/diary.dart';
import 'package:oshiruco_app/model/response/user_detail_response/user_detail_response.dart';
import 'package:oshiruco_app/model/user/user.dart';
import 'package:oshiruco_app/repository/communication_repository.dart';
import 'package:oshiruco_app/repository/diaries_repository.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/state/comment_message.dart';
import 'package:oshiruco_app/state/diary_comment_state.dart';

class DiaryCommentController extends StateNotifier<DiaryCommentState> {
  DiaryCommentController({
    required Diary diary,
    required String uuid,
    required DiariesRepositoryInterface diariesRepositoryInterface,
    required UsersRepositoryInterface usersRepositoryInterface,
    required CommunicationRepositoryInterface communicationRepositoryInterface,
  }) : super(const DiaryCommentState()) {
    _diary = diary;
    _uuid = uuid;
    _diariesRepository = diariesRepositoryInterface;
    _usersRepository = usersRepositoryInterface;
    _communicationRepository = communicationRepositoryInterface;

    loadInitialData();
  }

  late final Diary _diary;
  late final String _uuid;
  late final DiariesRepositoryInterface _diariesRepository;
  late final UsersRepositoryInterface _usersRepository;
  late final CommunicationRepositoryInterface _communicationRepository;

  TextEditingController? _textEditingController;
  late StreamSubscription<QuerySnapshot<Map<String, dynamic>>>
      _firebaseListener;

  Future<void> loadInitialData() async {
    final diaryId = _diary.id;

    final communications = await _communicationRepository.communications();

    _firebaseListener = FirebaseFirestore.instance
        .collection('/${dotenv.env['FS_COLLECTION_DIARY_COMMENTS'] ?? ''}')
        .where('diaryID', isEqualTo: diaryId)
        .orderBy('postedAt', descending: false)
        .snapshots()
        .listen((event) async {
      // 重複を除くため、toSetしてからtoListする
      final uuids = event.docs
          .map((e) => e['commentUserUuid'].toString())
          .toSet()
          .toList();

      await _diariesRepository.markAsReadComments(diaryId);

      if (uuids.isEmpty) {
        state = state.copyWith(
          isOwn: _uuid == _diary.user?.uuid,
          commentMessages: [],
        );
        return;
      }

      final requests = <Future<UserDetailResponse>>[];
      for (final uuid in uuids) {
        requests.add(_usersRepository.fetchUserByUuid(uuid));
      }

      final userRequests = <UserDetailResponse>[];
      try {
        final response = await Future.wait<UserDetailResponse>(
          requests,
          cleanUp: (success) => userRequests.add(success),
        );
        userRequests.addAll(response);
      } catch (e) {
        // todo error handling
      }

      final blockUserUUIDs = communications.blockUUIDs.toSet();
      final users = <User>[];
      for (final result in userRequests) {
        // リジェクトユーザーも非表示にしたいので block のリストに入れる
        if (result.user.isBlock || result.user.isRejected) {
          blockUserUUIDs.add(result.user.uuid);
        } else {
          users.add(result.user);
        }
      }

      final excludedBlockUserDocs = event.docs
          .where(
            (e) => !blockUserUUIDs.contains(
              e['commentUserUuid'].toString(),
            ),
          )
          .toList();

      final ms = excludedBlockUserDocs.map(
        (e) {
          final uuid = e['commentUserUuid'].toString();
          final diaryID = e['diaryID'].toString();
          final photoPath = e['photoPath'].toString();
          final postedAt = (e['postedAt'] as Timestamp).toDate();
          final message = e['text'].toString();
          final user = users.cast<User?>().firstWhere(
                (element) => element?.uuid == uuid,
                orElse: () => null,
              );

          return CommentMessage(
            commentUserUuid: uuid,
            diaryID: diaryID,
            photoPath: photoPath,
            postedAt: postedAt,
            message: message,
            user: user,
            isOwn: uuid == _uuid,
          );
        },
      ).toList();

      // indexをはる必要があるためアプリ側でソートする
      ms.sort((a, b) {
        return b.postedAt?.compareTo(a.postedAt ?? DateTime.now()) ?? 0;
      });

      state = state.copyWith(
        isOwn: _uuid == _diary.user?.uuid,
        commentMessages: ms,
      );
    }, onError: (Object o) {
      // todo error handling
    });
  }

  void setTextController(TextEditingController controller) {
    _textEditingController ??= controller;
  }

  Future<void> onTapSend(
    BuildContext context,
  ) async {
    final diaryUuid = _diary.user?.uuid ?? '';
    if (diaryUuid.isEmpty || state.text.trim().isEmpty) {
      return;
    }

    try {
      await _diariesRepository.postDiaryComment(
        text: state.text.trim(),
        diaryId: _diary.id,
        diaryUserUUID: diaryUuid,
      );
      state = state.copyWith(text: '');
      _textEditingController?.clear();

      // todo リフレッシュ
    } catch (e) {
      showErrorDialog(context, e);
    }
  }

  void updateText(String v) {
    state = state.copyWith(text: v);
  }

  @override
  void dispose() {
    _firebaseListener.cancel();
    super.dispose();
  }
}
