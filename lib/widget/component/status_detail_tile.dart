import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/model/enum/user_status.dart';
import 'package:oshiruco_app/widget/component/purchase_button.dart';

class StatusDetailTile extends StatelessWidget {
  const StatusDetailTile({
    required SvgPicture svg,
    required String title,
    required String amount,
    required String points,
    required VoidCallback onTap,
    bool isAvailable = true,
    bool isActive = true,
    Key? key,
  })  : _svg = svg,
        _title = title,
        _amount = amount,
        _points = points,
        _onTap = onTap,
        _isActive = isActive,
        _isAvailable = isAvailable,
        super(key: key);

  StatusDetailTile.fromProductDetail({
    required ProductDetails product,
    required VoidCallback onTap,
    required bool isActive,
    required bool isAvailable,
    Key? key,
  }) : this(
          svg: UserStatusExtension.fromProductID(product.id)
              .toSvg()
              .svg(width: 40),
          title: Platform.isIOS ? product.title : product.description,
          amount: UserStatusExtension.fromProductID(product.id).getAmount(),
          points:
              UserStatusExtension.fromProductID(product.id).getMonthlyPoint(),
          onTap: onTap,
          isActive: isActive,
          isAvailable: isAvailable,
          key: key,
        );

  final SvgPicture _svg;

  final String _title;

  final String _amount;

  final String _points;

  final VoidCallback _onTap;

  // 購入済み or not
  final bool _isActive;

  // 購入可能 or not(statusのupgradeが実装される際には削除する予定)
  final bool _isAvailable;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: OshirucoColors.divider,
            width: 0.5,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 12),
          Row(
            children: [
              _svg,
              const SizedBox(width: 8),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _title,
                      style: OshirucoTextStyles.mediumBold,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment:
                _isAvailable ? MainAxisAlignment.end : MainAxisAlignment.center,
            children: [
              Text(
                '月額 $_amount\n月$_pointsポイント付与',
                style: OshirucoTextStyles.mediumBold,
                textAlign: TextAlign.end,
              ),
              const SizedBox(width: 12),
              if (_isAvailable)
                PurchaseButton(
                  onTap: _onTap,
                  isActive: _isActive,
                )
            ],
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
