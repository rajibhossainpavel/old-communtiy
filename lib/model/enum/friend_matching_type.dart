import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';

enum FriendMatchingType {
  matching,
  liked,
  fromLiked,
  initial,
  blocked,
}

extension FriendMatchingTypeExtension on FriendMatchingType {
  Color getActionButtonColor() {
    switch (this) {
      case FriendMatchingType.matching:
        return OshirucoColors.green;
      case FriendMatchingType.liked:
        return Colors.white;
      case FriendMatchingType.fromLiked:
        return OshirucoColors.red;
      case FriendMatchingType.initial:
        return OshirucoColors.red;
      case FriendMatchingType.blocked:
        return Colors.white;
    }
  }

  TextStyle? getActionButtonTextStyle() {
    switch (this) {
      case FriendMatchingType.matching:
        return OshirucoTextStyles.mediumWhiteBold;
      case FriendMatchingType.liked:
        return OshirucoTextStyles.mediumGreenLightBold;
      case FriendMatchingType.fromLiked:
        return OshirucoTextStyles.mediumWhiteBold;
      case FriendMatchingType.blocked:
        return OshirucoTextStyles.mediumGreenLightBold;
      default:
        return null;
    }
  }

  String getActionButtonTitle() {
    switch (this) {
      case FriendMatchingType.matching:
        return 'メッセージを送る';
      case FriendMatchingType.liked:
        return '挨拶待ち';
      case FriendMatchingType.fromLiked:
        return '挨拶ありがとう';
      case FriendMatchingType.initial:
        return '挨拶する';
      case FriendMatchingType.blocked:
        return 'ブロック中';
    }
  }
}
