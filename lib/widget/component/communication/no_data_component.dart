import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';

class NoDataComponent extends StatelessWidget {
  const NoDataComponent({
    required String title,
    required String subTitle,
    required AssetGenImage icon,
    required Future<void> Function() onRefresh,
    Key? key,
  })  : _onRefresh = onRefresh,
        _icon = icon,
        _title = title,
        _subTitle = subTitle,
        super(key: key);

  NoDataComponent.fromLiked({
    required Future<void> Function() onRefresh,
    Key? key,
  }) : this(
          onRefresh: onRefresh,
          icon: Assets.images.noDataLike,
          title: 'まだ挨拶が送られていきていません',
          subTitle: '仲間をつくるために、\nマイページを魅力的に編集しましょう。',
          key: key,
        );

  NoDataComponent.toLike({
    required Future<void> Function() onRefresh,
    Key? key,
  }) : this(
          onRefresh: onRefresh,
          icon: Assets.images.noDataLike,
          title: '送った挨拶はありません',
          subTitle: 'プロフィールから挨拶を送ってみましょう',
          key: key,
        );

  NoDataComponent.message({
    required Future<void> Function() onRefresh,
    Key? key,
  }) : this(
          onRefresh: onRefresh,
          icon: Assets.images.noDataMessage,
          title: 'まだメッセージのやりとりはありません',
          subTitle: '挨拶を送っておしるこ仲間を作りましょう',
          key: key,
        );

  final Future<void> Function() _onRefresh;

  final AssetGenImage _icon;

  final String _title;

  final String _subTitle;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: Center(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _icon.image(height: 120, width: 120),
              const SizedBox(height: 32),
              Text(
                _title,
                textAlign: TextAlign.center,
                style: OshirucoTextStyles.mediumGreenLightBold,
              ),
              const SizedBox(height: 20),
              Text(
                _subTitle,
                textAlign: TextAlign.center,
                style: OshirucoTextStyles.small,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
