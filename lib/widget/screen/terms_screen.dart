import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/provider/terms_controller_provider.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/oshiruco_divider.dart';

class TermsScreen extends HookConsumerWidget {
  const TermsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(termsControllerProvider);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          '各種規約',
          style: OshirucoTextStyles.largeWhite,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _termCell(
            '利用規約',
            () => routemaster.push('term-of-use'),
          ),
          const OshirucoDivider(),
          _termCell(
            'プライバシーポリシー',
            () => routemaster.push('privacy-policy'),
          ),
          const OshirucoDivider(),
          _termCell(
            '特定商取引法に基づく表示',
            () => routemaster.push('law'),
          ),
          const OshirucoDivider(),
          // show licence page
          _termCell(
            'ライセンス',
            () => showLicensePage(
              context: context,
              applicationName: 'おしるこ',
              applicationVersion: state.version,
              applicationLegalese: 'カイト株式会社',
            ),
          ),
        ],
      ),
    );
  }

  Widget _termCell(String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: OshirucoTextStyles.medium,
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: OshirucoColors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
