import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:future_progress_dialog/future_progress_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/controller/diary_comment_controller.dart';
import 'package:oshiruco_app/controller/highlights_text_word_controller.dart';
import 'package:oshiruco_app/extension/date_extension.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/diary/diary.dart';
import 'package:oshiruco_app/provider/diary_comment_provider.dart';
import 'package:oshiruco_app/provider/diary_provider.dart';
import 'package:oshiruco_app/provider/highlights_text_word_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/comment_message.dart';
import 'package:oshiruco_app/state/diary_comment_state.dart';
import 'package:oshiruco_app/widget/component/diary_cell.dart';
import 'package:oshiruco_app/widget/component/highlight_text_widget.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';
import 'package:oshiruco_app/widget/component/user_icon.dart';

class DiaryCommentScreen extends HookConsumerWidget {
  DiaryCommentScreen(this.diary, {Key? key}) : super(key: key);

  static const paramDiaryId = 'diary';
  final searchController = TextEditingController();
  final Diary diary;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(diaryCommentProvider(diary));
    final controller = ref.watch(diaryCommentProvider(diary).notifier);
    final diaryController = ref.watch(diaryProvider.notifier);
    final htWordController = ref.watch(highlightsTextWordProvider.notifier);

    final comments = state.commentMessages?.length ?? 0;
    final latestDiary = diary.copyWith(comments: comments);
    final searchIcon = useState(Icons.search);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      for (var cmn in state.commentMessages!) {
        htWordController.updatedClickableText(cmn.message);
      }
      htWordController.updateFoundLinks();
      diaryController.updateComments(diary, comments);
      diaryController.markAsRead(diary.id);
    });

    return WillPopScope(
      onWillPop: () async {
        htWordController.clearClickableLinks();
        return true;
      },
      child: Scaffold(
        appBar: oshirucoAppBar(title: '${diary.user?.nickname}さんの日記', actions: [
          IconButton(
              onPressed: () {
                if (searchIcon.value == Icons.search) {
                  searchIcon.value = Icons.close;
                  htWordController.updateFoundLinks();
                } else {
                  searchIcon.value = Icons.search;
                  htWordController.updateOnSearchWords(' ');
                }
              },
              icon: Icon(searchIcon.value, color: Colors.white)),
        ]),
        backgroundColor: OshirucoColors.background,
        body: SafeArea(
          child: Column(
            children: [
              Visibility(
                visible: searchIcon.value == Icons.close,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: OshirucoColors.green),
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                  ),
                  child: TextField(
                    onChanged: (value) =>
                        htWordController.updateOnSearchWords(value),
                    controller: searchController,
                    keyboardType: TextInputType.multiline,
                    autofocus: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: '検索キーワードを入力してください',
                      hintStyle: OshirucoTextStyles.smallGrey,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    DiaryCell(
                      diary: latestDiary,
                      isOwn: state.isOwn,
                      onTapSmile: () {
                        // todo implement me
                      },
                      onTapComment: () {},
                    ),
                    const SizedBox(height: 8),
                    _messages(state.commentMessages),
                  ],
                ),
              ),
              Visibility(
                visible: searchIcon.value == Icons.search,
                child:
                    _inputField(context, state, controller, htWordController),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _messages(List<CommentMessage>? messages) {
    if (messages == null) {
      return const Center(
        child: OshirucoCircleProgressIndicator(),
      );
    }

    if (messages.isEmpty) {
      return _emptyState();
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, index) {
        final message = messages[index];
        return _MessageCell(message);
      },
      reverse: true,
      itemCount: messages.length,
    );
  }

  Column _emptyState() {
    return Column(
      children: [
        const SizedBox(height: 80),
        Assets.images.noDataComment.image(height: 136),
        const SizedBox(height: 32),
        const Text(
          'まだ、コメントがありません',
          style: OshirucoTextStyles.largeGreenBold,
        ),
        const SizedBox(height: 28),
        const Text(
          '最初のコメントを投稿しましょう。',
          style: OshirucoTextStyles.medium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Container _inputField(
      BuildContext context,
      DiaryCommentState state,
      DiaryCommentController controller,
      HighlightsTextWordController htWordController) {
    final textController = useTextEditingController();
    controller.setTextController(textController);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 6,
      ),
      color: Colors.white,
      child: Container(
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 160,
                ),
                child: TextField(
                  onChanged: controller.updateText,
                  controller: textController,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'メッセージを入力',
                    hintStyle: OshirucoTextStyles.mediumGrey,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: () {
                htWordController.updatedClickableText(textController.text);
                showDialog<void>(
                  context: context,
                  builder: (_) => FutureProgressDialog(
                    controller.onTapSend(context),
                  ),
                );
              },
              child: Icon(
                Icons.send,
                size: 28,
                color: state.text.trim().isEmpty
                    ? Colors.grey
                    : OshirucoColors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MessageCell extends StatelessWidget {
  const _MessageCell(this.message);

  final CommentMessage message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: message.isOwn ? _ownMessage() : _otherMessage(),
    );
  }

  Widget _otherMessage() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () =>
              routemaster.push('/friends/detail/${message.user?.uuid ?? ''}'),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: SizedBox(
              height: 36,
              width: 36,
              child: UserIcon(
                message.user?.photoPaths ?? '',
                message.user?.gender ?? '',
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message.user?.nickname ?? '',
                style: OshirucoTextStyles.medium,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Flexible(
                    child: _text(),
                  ),
                  const SizedBox(width: 8),
                  _time(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _ownMessage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _time(),
              const SizedBox(width: 8),
              Flexible(
                child: _text(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// 当日: 時間のみ
  /// 同じ年: 月日+時間
  /// 違う年: 年月日+時間
  Widget _time() {
    final now = DateTime.now();
    final postedAt = message.postedAt;
    if (postedAt == null) {
      return const SizedBox();
    }
    final today = now.yyyymmdd() == postedAt.yyyymmdd();
    final thisYear = now.year == postedAt.year;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!today)
          Text(
            thisYear ? postedAt.mmdd() : postedAt.yyyymmdd(),
            style: OshirucoTextStyles.smallGrey,
          ),
        Text(
          message.postedAt?.hhmm() ?? '',
          style: OshirucoTextStyles.smallGrey,
        ),
      ],
    );
  }

  Container _text() {
    return Container(
      decoration: BoxDecoration(
        color: message.isOwn ? OshirucoColors.green : Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      child: TextHighlightWidget(
        diaryText: message.message,
        textStyle: message.isOwn
            ? OshirucoTextStyles.mediumWhite
            : OshirucoTextStyles.medium,
      ),
    );
  }
}
