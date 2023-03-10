import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/provider/visit_history_setting_controller_provider.dart';
import 'package:oshiruco_app/widget/component/oshiruco_app_bar.dart';

class VisitHistorySettingScreen extends HookConsumerWidget {
  const VisitHistorySettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: oshirucoAppBar(title: '足あと設定'),
      backgroundColor: OshirucoColors.background,
      body: _body(context, ref),
    );
  }

  Widget _body(BuildContext context, WidgetRef ref) {
    final state = ref.watch(visitHistorySettingControllerProvider);
    final controller =
        ref.watch(visitHistorySettingControllerProvider.notifier);

    final create = useMemoized(
      () => controller.fetchVisitHistoryEnable(context),
    );
    final snapshot = useFuture(create);

    if (snapshot.connectionState != ConnectionState.done) {
      return const Center(child: CircularProgressIndicator());
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 36),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            '足あと',
            style: OshirucoTextStyles.smallGreyBold,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  '足あとを残す',
                  style: OshirucoTextStyles.medium,
                ),
              ),
              Switch(
                value: state.visitHistoryEnable,
                onChanged: (value) {
                  controller.updateVisitHistoryEnable(value);
                },
                activeColor: OshirucoColors.green,
                inactiveThumbColor: OshirucoColors.gbGrey,
                inactiveTrackColor: OshirucoColors.textGrey,
              ),
            ],
          ),
        )
      ],
    );
  }
}
