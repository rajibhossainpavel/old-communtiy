import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/model/diary/diary.dart';
import 'package:oshiruco_app/repository/diaries_repository.dart';
import 'package:oshiruco_app/repository/users_repository.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/user_diaries_state/user_diaries_state.dart';
import 'package:oshiruco_app/widget/component/snack_bar/message_snack_bar.dart';
import 'package:oshiruco_app/widget/screen/diary/diary_comment_screen.dart';

class UserDiariesController extends StateNotifier<UserDiariesState> {
  UserDiariesController({
    required String uuid,
    required DiariesRepositoryInterface diariesRepository,
    required UsersRepositoryInterface usersRepository,
  }) : super(const UserDiariesState()) {
    _uuid = uuid;
    _diariesRepository = diariesRepository;
    _usersRepository = usersRepository;
  }

  late final DiariesRepositoryInterface _diariesRepository;
  late final UsersRepositoryInterface _usersRepository;
  late final String _uuid;

  Future<void> loadInitialData(BuildContext context) async {
    try {
      final userResponse = await _usersRepository.fetchUserByUuid(_uuid);
      final diariesResponse = await _diariesRepository.findByUuid(uuid: _uuid);

      if (userResponse.result == 'failure' ||
          diariesResponse.result == 'failure') {
        throw Exception();
      }

      state = state.copyWith(
        user: userResponse.user,
        diaries: diariesResponse.diaries,
      );
    } catch (e) {
      showErrorDialog(context, e);
    }
  }

  Future<void> onTapSmile(BuildContext context, Diary diary) async {
    if (!diary.isSmiled) {
      return;
    }

    try {
      final smileNum = await _diariesRepository.smile(
        diary.id,
        diaryUserId: diary.user?.userID ?? '',
      );

      if (smileNum < 0) {
        throw Exception();
      }
      _updateSmile(diary, smileNum);

      showMessageSnackBar(
        context,
        message: 'スマイルしました。ありがとうございます。',
      );
    } catch (e) {
      showMessageSnackBar(
        context,
        message: 'スマイルに失敗しました。',
      );
    }
  }

  void onTapComment(Diary diary) {
    final diaryJsonString = jsonEncode(diary.toJson());
    routemaster.push(
      'comment',
      queryParameters: {DiaryCommentScreen.paramDiaryId: diaryJsonString},
    );
  }

  var _isFetching = false;

  Future<void> onReachBottom(BuildContext context) async {
    if (_isFetching) {
      return;
    }

    if (!state.hasNext || state.diaries.isEmpty) {
      return;
    }

    _isFetching = true;

    final lastId = state.diaries.last.id;
    try {
      final res = await _diariesRepository.findByUuid(
        uuid: _uuid,
        lastId: lastId,
      );
      final nextDiaries = res.diaries;

      state = state.copyWith(
        diaries: [
          ...state.diaries,
          ...nextDiaries,
        ],
        hasNext: nextDiaries.isNotEmpty,
      );
    } catch (e) {
      showErrorDialog(context, e);
    } finally {
      _isFetching = false;
    }
  }

  void _updateSmile(Diary diary, int smileNum) {
    final diaries = state.diaries;
    if (diaries.isEmpty) {
      return;
    }

    final newDiaries = diaries
        .map(
          (e) => e.id == diary.id
              ? e.copyWith(isSmiled: false, smile: smileNum)
              : e,
        )
        .whereType<Diary>()
        .toList();

    state = state.copyWith(diaries: newDiaries);
  }
}
