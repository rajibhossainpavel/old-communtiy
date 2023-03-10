import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/extension/string_extension.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/provider/group_screen_provider.dart';
import 'package:oshiruco_app/widget/component/green_round_button.dart';
import 'package:oshiruco_app/widget/component/round_button.dart';

class GroupEditScreen extends StatelessWidget {
  const GroupEditScreen({required String groupId, Key? key})
      : _groupId = groupId,
        super(key: key);

  final String _groupId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('グループ更新'),
      ),
      body: GroupEditScreenBase(groupId: _groupId),
    );
  }
}

class GroupEditScreenBase extends HookConsumerWidget {
  const GroupEditScreenBase({required String groupId, Key? key})
      : _groupId = groupId,
        super(key: key);

  final String _groupId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(groupEditScreenProvider.notifier);
    final create = useMemoized(
      () => controller.loadInitialData(_groupId),
    );
    final snapshot = useFuture(create);
    if (snapshot.error != null) {
      return const Center(child: Text('error'));
    } else if (snapshot.connectionState == ConnectionState.done) {
      final state = ref.watch(groupEditScreenProvider);
      final selectedImage = state.selectedImage;
      final width = MediaQuery.of(context).size.width;
      return SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                _sampleImage(
                  context,
                  selectedImage: selectedImage,
                  width: width,
                ),
                Positioned(
                  bottom: 20,
                  width: width,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: RoundButton(
                      Colors.white,
                      '画像を選ぶ',
                      () => controller.onPressedChoosePhoto(context),
                      true,
                      textStyle: OshirucoTextStyles.mediumDarkGreenBold,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'カテゴリー',
                    style: OshirucoTextStyles.smallGrey,
                  ),
                  TextButton(
                      onPressed: () =>
                          controller.onPressedCategorySelectButton(context),
                      child: Text(
                        state.category?.name ?? '選んでください',
                        style: OshirucoTextStyles.mediumGreen,
                      ))
                ],
              ),
            ),
            Container(
              color: OshirucoColors.gbGrey,
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('グループ名'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                scrollPadding: EdgeInsets.zero,
                controller: controller.nameController,
                decoration: const InputDecoration(
                  hintText: 'グループ名は何ですか?',
                  hintStyle: OshirucoTextStyles.smallGrey,
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              color: OshirucoColors.gbGrey,
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('紹介文'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                scrollPadding: EdgeInsets.zero,
                maxLines: 5,
                minLines: 1,
                controller: controller.introduceController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: '紹介文を入力してください',
                  hintStyle: OshirucoTextStyles.smallGrey,
                ),
              ),
            ),
            Container(color: OshirucoColors.gbGrey, height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: GreenRoundButton(
                'グループを更新する',
                () => controller.onPressedSubmit(context),
                controller.canSubmit(),
                isLoading: state.isLoading,
              ),
            ),
          ],
        ),
      );
    } else {
      return const Center(
        child: OshirucoCircleProgressIndicator(),
      );
    }
  }

  Widget _sampleImage(
    BuildContext context, {
    required String selectedImage,
    required double width,
  }) {
    if (selectedImage != '') {
      return Image.network(
        selectedImage.toImageUrl(),
        width: width,
        errorBuilder: (context, o, t) => Image.file(
          File(selectedImage),
          width: width,
        ),
      );
    }
    return Assets.images.emptyOshiruco.image(
      width: width,
    );
  }
}
