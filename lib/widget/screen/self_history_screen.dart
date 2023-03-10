import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/provider/self_history_provider.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';
import 'package:oshiruco_app/widget/component/self_history/generation_unit.dart';

class SelfHistoryScreen extends HookConsumerWidget {
  const SelfHistoryScreen(this._uuid, {Key? key}) : super(key: key);

  final String _uuid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selfHistoryState = ref.watch(selfHistoryProvider(_uuid));
    return Scaffold(
      appBar: oshirucoAppBar(
        title: selfHistoryState.nickName,
      ),
      body: Container(
        color: OshirucoColors.background,
        child: SelfHistoryScreenBase(_uuid),
      ),
    );
  }
}

class SelfHistoryScreenBase extends HookConsumerWidget {
  const SelfHistoryScreenBase(this._uuid, {Key? key}) : super(key: key);

  final String _uuid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(selfHistoryProvider(_uuid).notifier);
    final state = ref.watch(selfHistoryProvider(_uuid));
    final create = useMemoized(
      () => controller.loadInitialData(context),
    );
    final snapshot = useFuture(create);
    if (snapshot.hasError) {
      return const Center(
        child: Text('error'),
      );
    } else if (snapshot.connectionState == ConnectionState.done) {
      return ListView.builder(
        itemBuilder: (context, index) => GenerationUnit(
          history: state.selfHistories[index],
        ),
        itemCount: state.selfHistories.length,
      );
    } else {
      return _loadingView();
    }
  }

  Widget _loadingView() {
    return const Center(
      child: OshirucoCircleProgressIndicator(),
    );
  }
}
