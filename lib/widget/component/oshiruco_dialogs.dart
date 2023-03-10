import 'dart:io';

import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';

class OshirucoDialogs {
  static void showStringGroupDialog(
    BuildContext context, {
    required String title,
    required VoidCallback onTap,
  }) {
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        titlePadding: const EdgeInsets.all(15),
        title: GestureDetector(
          onTap: () => {
            onTap(),
            Navigator.of(context).pop(),
          },
          child: Text(
            title,
            style: OshirucoTextStyles.mediumGrey,
          ),
        ),
      ),
    );
  }

  static Future<bool?> chatImageModal(
    BuildContext context, {
    required String title,
    required File file,
  }) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          titlePadding: EdgeInsets.zero,
          contentPadding:
              const EdgeInsets.only(top: 0, left: 16, right: 16, bottom: 0),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Image.file(
                  file,
                  frameBuilder: (context, child, _, obj) => child,
                ),
              ),
              const SizedBox(height: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    child: const Text(
                      'キャンセル',
                      style: TextStyle(
                          color: OshirucoColors.textGrey, fontSize: 16),
                    ),
                    onPressed: () => Navigator.pop(context, false),
                  ),
                  TextButton(
                    child: const Text(
                      '投稿する　',
                      style: TextStyle(
                          color: OshirucoColors.textGrey, fontSize: 16),
                    ),
                    onPressed: () => Navigator.of(context).pop(true),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  static Future<void> publishSelfHistory(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          '自分史を公開しました。',
          style: OshirucoTextStyles.largeGreyBold,
        ),
        contentPadding: const EdgeInsets.fromLTRB(24, 20, 24, 4),
        content: const SingleChildScrollView(
          child: Text(
            '現在、完了になっているものだけが公開されます。途中に設定したものは非公開となります。',
            style: OshirucoTextStyles.mediumGrey,
          ),
        ),
        actionsPadding: const EdgeInsets.only(
          right: 24.0,
          bottom: 0,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              '閉じる',
              style: OshirucoTextStyles.smallGreen,
            ),
          )
        ],
      ),
    );
  }
}
