import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';

class EditBottomButtons extends StatelessWidget {
  const EditBottomButtons({
    bool isPreviewActive = false,
    bool isReleaseActive = false,
    required Function(BuildContext) onTapRelease,
    required VoidCallback onTapPreview,
    Key? key,
  })  : _isPreviewActive = isPreviewActive,
        _isReleaseActive = isReleaseActive,
        _onTapPreview = onTapPreview,
        _onTapRelease = onTapRelease,
        super(key: key);

  final bool _isPreviewActive;

  final bool _isReleaseActive;

  final VoidCallback _onTapPreview;

  final Function(BuildContext) _onTapRelease;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            if (_isPreviewActive) {
              _onTapPreview();
            }
          },
          child: Container(
            alignment: Alignment.center,
            width: width / 2,
            color: Colors.white,
            height: 42,
            child: Text(
              'プレビュー',
              style: _isPreviewActive
                  ? OshirucoTextStyles.smallBold
                  : OshirucoTextStyles.smallGrey,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            if (_isReleaseActive) {
              _onTapRelease(context);
            }
          },
          child: Container(
            alignment: Alignment.center,
            width: width / 2,
            color: _isReleaseActive
                ? OshirucoColors.green
                : OshirucoColors.bgGreyDark,
            height: 42,
            child: const Text(
              '公開/更新',
              style: OshirucoTextStyles.smallWhite,
            ),
          ),
        )
      ],
    );
  }
}
