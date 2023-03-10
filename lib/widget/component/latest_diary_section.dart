import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/model/diary/diary.dart';
import 'package:oshiruco_app/provider/friend_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/comment_button.dart';
import 'package:oshiruco_app/widget/component/smile_button.dart';

class LatestDiarySection extends HookConsumerWidget {
  const LatestDiarySection(
    this._latestDiary, {
    required String uuid,
    Key? key,
  })  : _uuid = uuid,
        super(key: key);

  final Diary _latestDiary;

  final String _uuid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(friendDetailProvider);
    final controller = ref.watch(friendDetailProvider.notifier);
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    _latestDiary.time,
                    style: OshirucoTextStyles.small,
                    textAlign: TextAlign.end,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    _latestDiary.text,
                    style: OshirucoTextStyles.largeGrey,
                  ),
                ),
                if (_latestDiary.thumbNailUrl.isNotEmpty)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(_latestDiary.thumbNailUrl),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmileButton(
                  isSmiled: state.isSmiled,
                  onTap: () => state.isSmiled
                      ? controller.onPressedSmile(
                          diaryId: _latestDiary.id,
                          diaryUserId: _uuid,
                        )
                      : null,
                  smiledNumber: state.latestDiarySmile,
                ),
                CommentButton(
                  commentNumbers: _latestDiary.comments,
                  onTap: () => controller.onTapComment(_latestDiary),
                  // TODO(tamofplease): route to diary comment screen
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget viewAllButton() {
    return GestureDetector(
      onTap: () => routemaster.push('/friends/detail/$_uuid/diaries'),
      child: const Text(
        '全部見る >',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xFF578624),
          fontSize: 12,
        ),
      ),
    );
  }
}
