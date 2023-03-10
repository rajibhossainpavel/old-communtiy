import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/dialog.dart';
import 'package:oshiruco_app/client/remote_config/config.dart';
import 'package:oshiruco_app/model/diary/diary.dart';
import 'package:oshiruco_app/model/enum/diary_type.dart';
import 'package:oshiruco_app/model/remote_config/banner/banner.dart'
    as rc_banner;
import 'package:oshiruco_app/model/response/diaries/find_by_type_response.dart';
import 'package:oshiruco_app/repository/diaries_repository.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/diary_state.dart';
import 'package:oshiruco_app/widget/component/snack_bar/message_snack_bar.dart';
import 'package:oshiruco_app/widget/screen/diary/diary_comment_screen.dart';

enum DiaryTab {
  recent,
  matched,
}

class DiaryController extends StateNotifier<DiaryState> {
  DiaryController(
    this._uuid,
    this._diariesRepository,
  ) : super(DiaryState(uuid: _uuid)) {
    _fetchBanner();
  }

  final String _uuid;
  final DiariesRepository _diariesRepository;

  Future<void> loadInitialData(BuildContext context) {
    return loadDiaryIfNeeded(context, DiaryTab.recent);
  }

  Future<void> loadDiaryIfNeeded(BuildContext context, DiaryTab tab) async {
    if (_getLastIdFromDiaryTab(tab).isNotEmpty || isLoadingFromDiaryTab(tab)) {
      return;
    }

    try {
      await Future.delayed(Duration.zero, () async {
        _setLoading(true, tab);
        await _fetchDiaryWithTab(tab: tab);
      });
    } catch (e) {
      showErrorDialog(context, e);
    } finally {
      _setLoading(false, tab);
    }
  }

  void _setLoading(bool value, DiaryTab tab) {
    switch (tab) {
      case DiaryTab.recent:
        state = state.copyWith(isLoadingRecent: value);
        break;
      case DiaryTab.matched:
        state = state.copyWith(isLoadingMatched: value);
        break;
    }
  }

  void markAsRead(String diaryId) {
    state = state.copyWith(
      recentDiaries: _clearUnread(state.recentDiaries, diaryId),
      matchedDiaries: _clearUnread(state.matchedDiaries, diaryId),
    );
  }

  List<Diary> _clearUnread(List<Diary> diaries, String diaryId) {
    return diaries
        .map((diary) => diary.id == diaryId ? diary.copyWith(unread: 0) : diary)
        .toList();
  }

  void refreshDiaryWithTab(BuildContext context, DiaryTab tab) {
    _fetchDiaryWithTab(tab: tab);
  }

  Future<void> _fetchDiaryWithTab(
      {required DiaryTab tab, String lastId = ''}) async {
    // lastIDのときは初回取得の為、初期化する
    if (lastId.isEmpty) {
      _resetDiaries(tab);
    }

    DiariesFindByTypeResponse diaries;
    if (tab == DiaryTab.recent) {
      diaries = await _diariesRepository.findByType(
        type: DiaryType.recent,
        lastId: lastId,
      );
    } else {
      diaries = await _diariesRepository.findMatched(lastId: lastId);
    }

    if (diaries.message == "not found") {
      _setHasNext(false, tab);
      return;
    }

    _addDiaries(tab, diaries);
  }

  void _addDiaries(DiaryTab tab, DiariesFindByTypeResponse diaries) {
    switch (tab) {
      case DiaryTab.recent:
        state = state.copyWith(
          recentDiaries: [
            ...state.recentDiaries,
            ...diaries.diaries,
          ],
        );
        break;
      case DiaryTab.matched:
        state = state.copyWith(
          matchedDiaries: [
            ...state.matchedDiaries,
            ...diaries.diaries,
          ],
        );
        break;
    }
  }

  Future<void> onTapSmile(BuildContext context, Diary diary) async {
    if (!diary.isSmiled || state.isLoadingSmile) {
      return;
    }

    try {
      state = state.copyWith(isLoadingSmile: true);

      final smileNum = await _diariesRepository.smile(
        diary.id,
        diaryUserId: diary.user?.userID ?? '',
      );

      if (smileNum < 0) {
        throw Exception();
      }
      _updateSmile(diary);

      showMessageSnackBar(
        context,
        message: 'スマイルしました。ありがとうございます。',
      );
    } catch (e) {
      showMessageSnackBar(
        context,
        message: 'スマイルに失敗しました。',
      );
    } finally {
      state = state.copyWith(isLoadingSmile: false);
    }
  }

  void onTapComment(Diary diary) {
    final diaryJsonString = jsonEncode(diary.toJson());
    routemaster.push(
      '/diary/comment',
      queryParameters: {DiaryCommentScreen.paramDiaryId: diaryJsonString},
    );
  }

  void updateComments(Diary diary, int comments) {
    final recent = state.recentDiaries;
    final matched = state.matchedDiaries;

    final newRecent = _updateDiaryComments(recent, diary, comments);
    final newMatched = _updateDiaryComments(matched, diary, comments);

    state = state.copyWith(
      recentDiaries: newRecent,
      matchedDiaries: newMatched,
    );
  }

  List<Diary> _updateDiaryComments(
      List<Diary> diaries, Diary diary, int comments) {
    final index = diaries.indexWhere((d) => d.id == diary.id);
    if (index == -1) {
      return diaries;
    }
    final updated = diaries.toList();
    updated[index] = diary.copyWith(comments: comments);
    return updated;
  }

  void _updateSmile(Diary diary) {
    final recent = state.recentDiaries;
    final matched = state.matchedDiaries;

    final newRecent = _updateDiarySmile(recent, diary);
    final newMatched = _updateDiarySmile(matched, diary);

    state = state.copyWith(
      recentDiaries: newRecent,
      matchedDiaries: newMatched,
    );
  }

  List<Diary> _updateDiarySmile(List<Diary> diaries, Diary diary) {
    return diaries
        .map((e) => e.id == diary.id
            ? e.copyWith(isSmiled: false, smile: e.smile + 1)
            : e)
        .whereType<Diary>()
        .toList();
  }

  void _fetchBanner() {
    final banner = Config.getBanner(rc_banner.BannerPlace.diaries);
    state = state.copyWith(banner: banner);
  }

  void onTapUser(Diary diary) {
    if (diary.user?.uuid == _uuid) {
      routemaster.push('/edit_my_page');
      return;
    }

    final uuid = diary.user?.uuid;
    if (uuid == null) {
      return;
    }
    routemaster.push('/friends/detail/$uuid');
  }

  void onTapMyDiary() {
    routemaster.push('diaries/$_uuid');
  }

  void onReachBottom(DiaryTab tab) {
    final lastId = _getLastIdFromDiaryTab(tab);
    _fetchDiaryWithTab(tab: tab, lastId: lastId);
  }

  String _getLastIdFromDiaryTab(DiaryTab tab) {
    var diaries = <Diary>[];
    switch (tab) {
      case DiaryTab.recent:
        diaries = state.recentDiaries;
        break;
      case DiaryTab.matched:
        diaries = state.matchedDiaries;
        break;
    }

    if (diaries.isEmpty) {
      return '';
    }
    return diaries.last.id;
  }

  bool isLoadingFromDiaryTab(DiaryTab tab) {
    switch (tab) {
      case DiaryTab.recent:
        return state.isLoadingRecent;
      case DiaryTab.matched:
        return state.isLoadingMatched;
    }
  }

  void _setHasNext(bool value, DiaryTab tab) {
    switch (tab) {
      case DiaryTab.recent:
        state = state.copyWith(hasNextRecent: value);
        break;
      case DiaryTab.matched:
        state = state.copyWith(hasNextMatched: value);
        break;
    }
  }

  bool hasNextFromDiaryTab(DiaryTab tab) {
    switch (tab) {
      case DiaryTab.recent:
        return state.hasNextRecent;
      case DiaryTab.matched:
        return state.hasNextMatched;
    }
  }

  void _resetDiaries(DiaryTab tab) {
    switch (tab) {
      case DiaryTab.recent:
        state = state.copyWith(recentDiaries: [], hasNextRecent: true);
        break;
      case DiaryTab.matched:
        state = state.copyWith(matchedDiaries: [], hasNextMatched: true);
        break;
    }
  }
}
