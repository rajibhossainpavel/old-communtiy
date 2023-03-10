import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/provider/my_diary_controller_provider.dart';
import 'package:oshiruco_app/widget/component/diary_cell.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';

class UserDiariesScreen extends HookConsumerWidget {
  const UserDiariesScreen(
    this._uuid, {
    Key? key,
  }) : super(key: key);

  final String _uuid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(userDiariesControllerProvider(_uuid).notifier);
    final create = useMemoized(
      () => controller.loadInitialData(context),
    );
    final snapshot = useFuture(create);

    if (snapshot.connectionState != ConnectionState.done) {
      return Scaffold(
        appBar: oshirucoAppBar(title: ''),
        backgroundColor: OshirucoColors.background,
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final state = ref.watch(userDiariesControllerProvider(_uuid));

    return Scaffold(
      appBar: oshirucoAppBar(title: '${state.user?.nickname ?? ''}さんの日記'),
      backgroundColor: OshirucoColors.background,
      body: _body(ref),
    );
  }

  Widget _body(WidgetRef ref) {
    final state = ref.watch(userDiariesControllerProvider(_uuid));
    final controller = ref.watch(userDiariesControllerProvider(_uuid).notifier);

    final diaries = state.diaries;

    return ListView.builder(
      itemBuilder: (context, index) {
        final diary = diaries[index];

        if (state.hasNext || index == diaries.length - 1) {
          controller.onReachBottom(context);
        }

        return DiaryCell(
          diary: diary,
          isOwn: _uuid == diary.user?.uuid,
          onTapSmile: () => controller.onTapSmile(context, diary),
          onTapComment: () => controller.onTapComment(diary),
        );
      },
      itemCount: diaries.length,
    );
  }
}
