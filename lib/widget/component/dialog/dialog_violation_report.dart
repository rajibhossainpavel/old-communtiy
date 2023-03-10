import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/model/user/user.dart';
import 'package:oshiruco_app/widget/component/oshiruco_network_image.dart';

Future<String?> showViolationReportDialog({
  required BuildContext context,
  required User user,
}) {
  return showDialog<String?>(
    context: context,
    builder: (context) {
      return AlertDialog(
        // titlePadding: const EdgeInsets.all(20),
        title: _violationReportTitle(user),
        contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        content: _violationReportContent(context),
      );
    },
  );
}

Widget _violationReportTitle(User user) {
  return Row(
    children: [
      Flexible(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: OshirucoNetworkImage(
            user.photoPaths,
            type: OshirucoImageType.user,
          ),
        ),
      ),
      const SizedBox(width: 10),
      Flexible(
        flex: 3,
        child: Text(
          '${user.nickname} さんを\n違反報告します。',
          style: OshirucoTextStyles.mediumGreyBold,
        ),
      ),
    ],
  );
}

Widget _violationReportContent(BuildContext context) {
  final controller = TextEditingController();
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          '違反内容をお知らせください',
          style: OshirucoTextStyles.smallGrey,
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: controller,
          maxLength: 200,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          maxLines: 4,
          style: OshirucoTextStyles.smallGrey,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(10.0),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: OshirucoColors.bgGreyDark, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: OshirucoColors.bgGreyDark, width: 1.0),
            ),
            hintText: '違反内容を入力しましょう。',
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 46,
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () => Navigator.of(context).pop(controller.text),
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
              side: const BorderSide(
                color: OshirucoColors.darkGreen,
                width: 1,
              ),
            ),
            child: const Text(
              '違反報告する',
              textAlign: TextAlign.center,
              style: OshirucoTextStyles.mediumDarkGreenBold,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                'キャンセルする',
                textAlign: TextAlign.center,
                style: OshirucoTextStyles.mediumDarkGreenBold,
              ),
            ),
            style: TextButton.styleFrom(primary: OshirucoColors.darkGreen),
          ),
        )
      ],
    ),
  );
}
