import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/extension/int_extension.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/block/block.dart';
import 'package:oshiruco_app/provider/block_controller_provider.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';
import 'package:oshiruco_app/widget/component/oshiruco_divider.dart';
import 'package:oshiruco_app/widget/component/user_cell.dart';

class BlockScreen extends HookConsumerWidget {
  const BlockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(blockControllerProvider);
    return Scaffold(
      backgroundColor: OshirucoColors.background,
      appBar: oshirucoAppBar(title: 'ブロックユーザー'),
      body: _body(context, state.blockUsers),
    );
  }

  Widget _body(BuildContext context, List<Block>? blocks) {
    if (blocks == null) {
      return const Center(
        child: OshirucoCircleProgressIndicator(),
      );
    }

    if (blocks.isEmpty) {
      return _emptyState(context);
    }

    return ListView.separated(
      itemCount: blocks.length,
      itemBuilder: (context, index) {
        final block = blocks[index];
        return UserCell(
          userIcon: block.userIcon,
          nickname: block.nickname,
          age: block.age.toOshirucoAge(),
          gender: block.gender,
          livePlace: block.livePlace,
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const OshirucoDivider(),
    );
  }

  Center _emptyState(BuildContext context) {
    final displaySize = MediaQuery.of(context).size;
    final paddingHeight = displaySize.height * 0.14;
    final imageWidth = displaySize.width * 0.4;
    return Center(
      child: Column(
        children: [
          SizedBox(height: paddingHeight),
          Assets.images.noDataInformation.image(width: imageWidth),
          const SizedBox(height: 20),
          const Text(
            'ブロックしたユーザーはいません',
            style: OshirucoTextStyles.largeGreenBold,
          ),
          const SizedBox(height: 40),
          const Text(
            'やりとりしたくないお相手をブロックできます。\nもちろんお相手の方には通知されませんので\nご安心ください。',
            textAlign: TextAlign.center,
            style: OshirucoTextStyles.medium,
          ),
        ],
      ),
    );
  }
}
