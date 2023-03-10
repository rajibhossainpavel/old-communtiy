import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/controller/greeting_controller.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/provider/application_initialize_provider.dart';
import 'package:oshiruco_app/provider/greeting_controller_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/state/greeting_state.dart';
import 'package:oshiruco_app/widget/component/green_outlined_button.dart';
import 'package:oshiruco_app/widget/component/green_round_button.dart';

class GreetingScreen extends HookConsumerWidget {
  const GreetingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(greetingControllerProvider);
    final controller = ref.watch(greetingControllerProvider.notifier);
    final initializeController =
        ref.watch(applicationInitializeProvider.notifier);
    final fcmController = ref.watch(fcmTokenProvider);
    final loadInitialData = useCallback(() async {
      final initialData =
          await initializeController.loadInitialData(context, ref);
      await fcmController.registerFcmToken();
      return initialData;
    }, [fcmController]);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Assets.images.greetingHeader.image(),
              _body(context, controller, state),
              const SizedBox(height: 24),
              _Term(),
              const SizedBox(height: 24),
              if (Platform.isAndroid) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: GreenRoundButton(
                    'ログイン',
                    () async {
                      try {
                        controller.setLoading(true);
                        final isSuccess =
                            await initializeController.login(context, ref);
                        if (isSuccess) {
                          await fcmController.registerFcmToken();
                        }
                      } finally {
                        if (controller.mounted) {
                          controller.setLoading(false);
                        }
                      }
                    },
                    state.isInputted && !state.isLoading,
                  ),
                ),
                const SizedBox(height: 24),
                const Text('または'),
                const SizedBox(height: 24),
              ],
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: GreenRoundButton(
                  '新規登録',
                  () async {
                    try {
                      controller.setLoading(true);
                      await loadInitialData();

                      controller.onTapNext(context);
                    } finally {
                      controller.setLoading(false);
                    }
                  },
                  state.isInputted && !state.isLoading,
                ),
              ),
              const SizedBox(height: 24),
              GestureDetector(
                onTap: () => controller.onTapVersion(context, ref),
                child: Center(
                  child: Text(
                    'version ${state.version}',
                    style: OshirucoTextStyles.smallGreyBold,
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _body(BuildContext context, GreetingController controller,
      GreetingState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          const Text(
            'おしるこは、今まで体験したことの無い、'
            '時間や距離を超えた、人生の新たな生きがいを発見できるワクワクした場所です。',
            style: OshirucoTextStyles.medium,
          ),
          const SizedBox(height: 24),
          const Text(
            '実年齢から50歳若いおしるこ年齢を採用、士業、医療、旅行など専門家へ相談、'
            '50歳までの歴史を自分史として共有、個人間の技術能力交流で仕事発見、'
            '趣味嗜好が合う仲間と繋がります。',
            style: OshirucoTextStyles.medium,
          ),
          const SizedBox(height: 24),
          const Text(
            '皆さまと共におしるこ自治区を、夢のある場所にしていきましょう。',
            style: OshirucoTextStyles.medium,
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Assets.icons.admin.image(height: 60, width: 60),
              const Text(
                'おしるこ自治会',
                style: OshirucoTextStyles.medium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Term extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(greetingControllerProvider);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: Text(
              '下記リンクを必ずタップしてお読みください。\nタップしないと先に進めません。',
              style: OshirucoTextStyles.small,
            ),
          ),
          const SizedBox(height: 24),
          GreenOutlinedButton(
            onTap: () => routemaster.push('term-of-use'),
            label: '利用規約を読む',
          ),
          const SizedBox(height: 24),
          _checkBox(
            'サービス内容と規約を確認し、同意します。',
            state.termOfUse,
            () =>
                ref.read(greetingControllerProvider.notifier).onTapTermOfUse(),
          ),
          const SizedBox(height: 24),
          GreenOutlinedButton(
            onTap: () => routemaster.push('privacy-policy'),
            label: 'プライバシーポリシーを読む',
          ),
          const SizedBox(height: 24),
          _checkBox(
            'プライバシーポリシーの内容を確認し、同意します。',
            state.privacyPolicy,
            () => ref
                .read(greetingControllerProvider.notifier)
                .onTapPrivacyPolicy(),
          ),
        ],
      ),
    );
  }

  Widget _checkBox(String title, bool checked, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            IgnorePointer(
              child: Checkbox(
                value: checked,
                activeColor: OshirucoColors.green,
                onChanged: (value) {},
              ),
            ),
            Flexible(
              child: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}
