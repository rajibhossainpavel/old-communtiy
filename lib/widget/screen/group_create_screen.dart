import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/provider/group_screen_provider.dart';
import 'package:oshiruco_app/widget/component/green_round_button.dart';
import 'package:oshiruco_app/widget/component/round_button.dart';

class GroupCreateScreen extends HookConsumerWidget {
  const GroupCreateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(groupCreateScreenProvider);
    final controller = ref.watch(groupCreateScreenProvider.notifier);
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('グループ作成'),
      ),
      body: GestureDetector(
        onTap: () {
          final currentScope = FocusScope.of(context);
          if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  _sampleImage(ref, width),
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
                  ),
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
                      ),
                    ),
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
                  textInputAction: TextInputAction.done,
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
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: GreenRoundButton(
                  'グループを作成する',
                  () => controller.onPressedSubmit(context),
                  controller.canSubmit(),
                  isLoading: state.isLoading,
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sampleImage(WidgetRef ref, double width) {
    final state = ref.watch(groupCreateScreenProvider);
    if (state.selectedImage != '') {
      return Image.file(
        File(state.selectedImage),
        width: width,
      );
    }
    return Assets.images.emptyOshiruco.image(
      width: width,
    );
  }
}
