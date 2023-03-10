import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/provider/self_history_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';
import 'package:oshiruco_app/widget/component/self_history/age_edit_unit.dart';
import 'package:oshiruco_app/widget/component/self_history/edit_bottom_buttons.dart';

class EditSelfHistoryScreen extends StatelessWidget {
  const EditSelfHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: oshirucoAppBar(title: '自分史を編集'),
      body: const SafeArea(
        child: EditSelfHistoryScreenBase(),
      ),
    );
  }
}

class EditSelfHistoryScreenBase extends HookConsumerWidget {
  const EditSelfHistoryScreenBase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final ages = [10, 20, 30, 40];
    final controller = ref.watch(editSelfHistoryProvider.notifier);
    final create = useMemoized(
      () => controller.loadInitialData(),
    );
    final snapshot = useFuture(create);
    if (snapshot.hasError) {
      // TODO(qkuronekop): implement error handle
      return const Text('error');
    } else if (snapshot.connectionState == ConnectionState.done) {
    } else {
      return const Center(
        child: OshirucoCircleProgressIndicator(),
      );
    }
    final state = ref.watch(editSelfHistoryProvider);
    return Stack(
      children: [
        Container(
          color: OshirucoColors.bgGreyDark,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: ages
                      .map(
                        (age) => AgeEditUnit(
                          age: age,
                        ),
                      )
                      .toList(),
                ),
              ),
              EditBottomButtons(
                isPreviewActive: state.isPreviewActive(),
                isReleaseActive: state.isReleaseActive(),
                onTapPreview: () => routemaster.push('preview'),
                onTapRelease: (context) => controller.onTapRelease(context),
              ),
            ],
          ),
        ),
        if (state.isLoading)
          AbsorbPointer(
            child: Container(
              alignment: Alignment.center,
              height: size.height,
              width: size.width,
              child: const OshirucoCircleProgressIndicator(),
            ),
          ),
      ],
    );
  }
}
