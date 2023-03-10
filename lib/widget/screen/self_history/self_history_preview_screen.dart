import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/provider/self_history_provider.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';
import 'package:oshiruco_app/widget/component/self_history/generation_unit.dart';

class SelfHistoryPreviewScreen extends HookConsumerWidget {
  const SelfHistoryPreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(previewSelfHistoryProvider);
    return Scaffold(
      appBar: oshirucoAppBar(
        title: '${state.userName}の自分史',
      ),
      body: Container(
        color: OshirucoColors.bgGreyDark,
        child: const SelfHistoryPreviewScreenBase(),
      ),
    );
  }
}

class SelfHistoryPreviewScreenBase extends HookConsumerWidget {
  const SelfHistoryPreviewScreenBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(previewSelfHistoryProvider.notifier);
    final create = useMemoized(
      () => controller.loadInitialData(),
    );
    final snapshot = useFuture(create);
    final state = ref.watch(previewSelfHistoryProvider);
    if (snapshot.hasError) {
      return const Text('error');
    } else if (snapshot.connectionState == ConnectionState.done) {
      return ListView.builder(
        itemBuilder: (context, index) => GenerationUnit(
          history: state.selfHistories[index],
        ),
        itemCount: state.selfHistories.length,
      );
    } else {
      return const Center(
        child: OshirucoCircleProgressIndicator(),
      );
    }
  }
}
