import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/widget/component/round_button.dart';

Future<String?> showLoginDialog(
  BuildContext context, {
  required int points,
}) {
  final iconSize = MediaQuery.of(context).size.width * 0.25;

  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(32.0),
          ),
        ),
        contentPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        content: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                height: 328,
              ),
            ),
            Container(
              color: Colors.transparent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        top: 100,
                        child: Assets.images.point.image(
                          width: iconSize,
                        ),
                      ),
                      const SizedBox(height: 200),
                      Assets.images.dialogHeaderLoginBonus.image(),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '${points.toString()}ポイントプレゼント',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: RoundButton(
                      OshirucoColors.green,
                      '受け取る',
                      () => Navigator.of(context).pop(),
                      true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
