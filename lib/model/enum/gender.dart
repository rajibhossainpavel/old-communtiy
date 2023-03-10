import 'package:oshiruco_app/gen/assets.gen.dart';

enum Gender {
  male,
  female,
  other,
}

extension GenderExtension on Gender {
  static Gender fromString(String s) {
    switch (s) {
      case '男性':
        return Gender.male;
      case '女性':
        return Gender.female;
      default:
        return Gender.other;
    }
  }

  String toLabel() {
    switch (this) {
      case Gender.male:
        return '男性';
      case Gender.female:
        return '女性';
      case Gender.other:
        return 'その他';
    }
  }

  AssetGenImage toImage() {
    switch (this) {
      case Gender.male:
        return Assets.images.userMan;
      case Gender.female:
        return Assets.images.userWoman;
      case Gender.other:
        return Assets.images.userOther;
    }
  }
}
