import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/enum/diary_type.dart';
import 'package:oshiruco_app/provider/create_diary_provider.dart';
import 'package:oshiruco_app/state/create_diary_state.dart';
import 'package:oshiruco_app/widget/component/green_round_button.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';
import 'package:oshiruco_app/widget/component/oshiruco_divider.dart';
import 'package:oshiruco_app/widget/component/user_icon.dart';
import 'package:oshiruco_app/widget/screen/media_screen.dart';
import 'package:video_player/video_player.dart';

class CreateDiaryScreen extends HookConsumerWidget {
  const CreateDiaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createDiaryProvider);
    final controller = ref.watch(createDiaryProvider.notifier);
    final focusNode = useFocusNode();
    final scrollController = useScrollController();
    scrollController.addListener(() {
      focusNode.unfocus();
    });

    final user = state.user;

    return Scaffold(
      backgroundColor: OshirucoColors.background,
      appBar: oshirucoAppBar(title: '投稿'),
      body: ListView(
        controller: scrollController,
        shrinkWrap: true,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 56,
                  width: 56,
                  child: user != null
                      ? UserIcon(user.photoPaths, user.gender)
                      : const SizedBox(),
                ),
                Expanded(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: 300,
                    ),
                    child: TextField(
                      maxLength: 140,
                      maxLines: 8,
                      focusNode: focusNode,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: '投稿内容を入力',
                        contentPadding:
                            EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      onChanged: controller.updateTweet,
                      onTap: () {
                        if (focusNode.hasPrimaryFocus) {
                          focusNode.unfocus();
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          _media(state, controller.videoPlayerController, context),
          const OshirucoDivider(),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      controller.onTapPhoto(context);
                      focusNode.unfocus();
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.icons.member
                            .image(width: 22, color: OshirucoColors.darkGreen),
                        const SizedBox(width: 4),
                        const Text(
                          '写真を追加',
                          style: OshirucoTextStyles.mediumDarkGreenBold,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      controller.onTapMovie(context);
                      focusNode.unfocus();
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.movie_outlined,
                          size: 24,
                          color: OshirucoColors.darkGreen,
                        ),
                        SizedBox(width: 4),
                        Text(
                          '動画を追加',
                          style: OshirucoTextStyles.mediumDarkGreenBold,
                        ),
                      ],
                    ),
                  ),
                ),
                // todo 音声は初期リリースには含まない
                // Expanded(
                //   child: GestureDetector(
                //     onTap: () {
                //       controller.onTapVoice();
                //     },
                //     child: Row(
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Assets.icons.member
                //             .image(width: 22, color: OshirucoColors.darkGreen),
                //         const SizedBox(width: 4),
                //         const Text(
                //           '音声を追加',
                //           style: OshirucoTextStyles.mediumDarkGreenBold,
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24,
                  width: 34,
                  child: Checkbox(
                    value: state.onlyMatched,
                    activeColor: OshirucoColors.green,
                    onChanged: (checked) =>
                        controller.onUpdateOnlyMatched(checked ?? false),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: RichText(
                      text: const TextSpan(
                        style: OshirucoTextStyles.small,
                        children: [
                          TextSpan(text: '仲間だけに日記投稿の場合、1投稿'),
                          TextSpan(
                            text: '50ポイント',
                            style: OshirucoTextStyles.smallBold,
                          ),
                          TextSpan(text: '必要です。チェックをして日記を投稿すると'),
                          TextSpan(
                            text: '50ポイント消費',
                            style: OshirucoTextStyles.smallBold,
                          ),
                          TextSpan(text: 'します。'),
                        ],
                      ),
                    ),
                    onTap: () => focusNode.unfocus(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child: GreenRoundButton(
            '日記を投稿する',
            () {
              controller.createDiary(context);
            },
            state.isEnableSubmit,
          ),
        ),
      ),
    );
  }

  Widget _media(CreateDiaryState state, VideoPlayerController? videoController,
      BuildContext context) {
    if (state.imagePath.isNotEmpty) {
      return GestureDetector(
        onTap: () {
          showDialog<void>(
            context: context,
            builder: (context) {
              return MediaScreen(
                type: enumToString(MediaScreenType.photo),
                filePath: state.imagePath,
                url: '',
              );
            },
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          color: Colors.white,
          // alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 160),
            child: Image.file(File(state.imagePath)),
          ),
        ),
      );
    }

    if (state.moviePath.isEmpty ||
        videoController == null ||
        !videoController.value.isInitialized) {
      return const SizedBox();
    }

    return GestureDetector(
      onTap: () {
        showDialog<void>(
          context: context,
          builder: (context) {
            return MediaScreen(
              type: enumToString(MediaScreenType.movie),
              filePath: state.moviePath,
              url: '',
            );
          },
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 40),
        color: Colors.white,
        alignment: Alignment.center,
        height: 200,
        child: AspectRatio(
          aspectRatio: videoController.value.aspectRatio,
          child: VideoPlayer(videoController),
        ),
      ),
    );
  }
}
