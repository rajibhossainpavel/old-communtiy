import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/extension/int_extension.dart';
import 'package:oshiruco_app/extension/string_extension.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/diary/diary.dart';
import 'package:oshiruco_app/model/enum/diary_type.dart';
import 'package:oshiruco_app/widget/component/badge.dart';
import 'package:oshiruco_app/widget/component/highlight_text_widget.dart';
import 'package:oshiruco_app/widget/component/oshiruco_divider.dart';
import 'package:oshiruco_app/widget/component/user_icon.dart';
import 'package:oshiruco_app/widget/screen/media_screen.dart';

class DiaryCell extends StatelessWidget {
  const DiaryCell({
    required this.diary,
    required this.isOwn,
    required this.onTapSmile,
    required this.onTapComment,
    this.onTapUser,
    Key? key,
  }) : super(key: key);

  final Diary diary;
  final bool isOwn;
  final VoidCallback onTapSmile;
  final VoidCallback onTapComment;
  final VoidCallback? onTapUser;

  @override
  Widget build(BuildContext context) {
    final user = diary.user;
    if (user == null) {
      return const SizedBox();
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      color: Colors.white,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(diary.time),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 56,
                    width: 56,
                    child: GestureDetector(
                      onTap: onTapUser,
                      child: UserIcon(
                        user.photoPaths,
                        user.gender,
                      ),
                    ),
                  ),
                  if (diary.matched) ...[
                    const SizedBox(height: 4),
                    Container(
                      width: 56,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(color: OshirucoColors.red),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(2),
                        ),
                      ),
                      child: FittedBox(
                        child: Text(
                          '仲間限定',
                          style: OshirucoTextStyles.smallBold
                              .copyWith(color: OshirucoColors.red),
                        ),
                      ),
                    ),
                  ]
                ],
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.nickname,
                      style: OshirucoTextStyles.largeBold,
                    ),
                    Text(
                      'おしるこ年齢(${user.age.toOshirucoAge()}歳) ${user.gender} ${user.livePlace}',
                      style: OshirucoTextStyles.mediumGrey,
                    ),
                    TextHighlightWidget(diaryText: diary.text),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          _media(diary, context),
          const OshirucoDivider(),
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: onTapSmile,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (diary.isSmiled)
                            Assets.icons.smileRed.image(width: 16)
                          else
                            Assets.icons.smileGrey.image(width: 16),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            diary.isSmiled ? 'スマイルする' : 'スマイル済み',
                            style: diary.isSmiled
                                ? OshirucoTextStyles.mediumRed
                                : OshirucoTextStyles.mediumGrey,
                          ),
                          const Spacer(),
                          Text(
                            '${diary.smile}人',
                            style: OshirucoTextStyles.medium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const VerticalDivider(),
                Expanded(
                  child: GestureDetector(
                    onTap: onTapComment,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      color: Colors.transparent,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Assets.icons.commentGreen.image(width: 16),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text(
                            'コメント',
                            style: OshirucoTextStyles.mediumGreen,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          if (diary.unread > 0 && isOwn)
                            Badge(number: diary.unread),
                          const Spacer(),
                          Text(
                            '${diary.comments}件',
                            style: OshirucoTextStyles.medium,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _media(Diary diary, BuildContext context) {
    if (diary.media.isEmpty) {
      return const SizedBox();
    }

    if (diary.type == enumToString(DiaryType.photo)) {
      return GestureDetector(
        onTap: () {
          showDialog<void>(
            context: context,
            builder: (context) {
              return MediaScreen(
                type: diary.type,
                filePath: '',
                url: diary.photoUrl,
              );
            },
          );
        },
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 150),
          child: Image.network(
            diary.photoUrl,
          ),
        ),
      );
    }

    if (diary.type == enumToString(DiaryType.movie)) {
      final movieUrl = 'user/${diary.media}'.toMovieUrl();
      return GestureDetector(
        onTap: () {
          showDialog<void>(
            context: context,
            builder: (context) {
              return MediaScreen(
                type: diary.type,
                filePath: '',
                url: movieUrl,
              );
            },
          );
        },
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 200),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.network(diary.thumbNailUrl),
              ),
              const Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.play_circle_outline,
                  size: 48,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      );
    }

    return const SizedBox();
  }
}
