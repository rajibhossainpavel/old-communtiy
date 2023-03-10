import 'package:oshiruco_app/gen/assets.gen.dart';

enum UserStatus {
  osato,
  omochi,
  oshiruco,
  premium,
}

extension UserStatusExtension on UserStatus {
  static UserStatus fromProductID(String id) {
    final identifier = id.split('_').last;
    switch (identifier) {
      case 'basic':
        return UserStatus.oshiruco;
      case 'light':
        return UserStatus.omochi;
      case 'premium':
        return UserStatus.premium;
      default:
        throw UnsupportedError('Unsupported Status $id');
    }
  }

  String toDatingState() {
    switch (this) {
      case UserStatus.omochi:
        return 'subs_light';
      case UserStatus.oshiruco:
        return 'subs_basic';
      case UserStatus.premium:
        return 'subs_premium';
      default:
        return '';
    }
  }

  String getAmount() {
    switch (this) {
      case UserStatus.omochi:
        return '¥1,000';
      case UserStatus.oshiruco:
        return '¥5,000';
      case UserStatus.premium:
        return '¥8,000';
      default:
        throw UnsupportedError;
    }
  }

  String getTitle() {
    switch (this) {
      case UserStatus.osato:
        return 'おさとう会員';
      case UserStatus.omochi:
        return 'おもち会員';
      case UserStatus.oshiruco:
        return 'おしるこ会員';
      case UserStatus.premium:
        return 'プレミアム会員';
    }
  }

  String getMonthlyPoint() {
    switch (this) {
      case UserStatus.osato:
        return '0';
      case UserStatus.omochi:
        return '10';
      case UserStatus.oshiruco:
        return '100';
      case UserStatus.premium:
        return '250';
    }
  }

  SvgGenImage toSvg() {
    switch (this) {
      case UserStatus.osato:
        return Assets.svgs.memberStatusOsatou;
      case UserStatus.omochi:
        return Assets.svgs.memberStatusOmochi;
      case UserStatus.oshiruco:
        return Assets.svgs.memberStatusOshiruco;
      case UserStatus.premium:
        return Assets.svgs.memberStatusPremium;
    }
  }
}
