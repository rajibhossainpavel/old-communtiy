import 'package:oshiruco_app/model/enum/self_history_key_type.dart';

enum EmotionType {
  joy,
  anger,
  sorrow,
  enjoy,
}

extension EmotionTypeExtension on EmotionType {
  static EmotionType fromString(String s) {
    switch (s) {
      case 'joy':
        return EmotionType.joy;
      case 'anger':
        return EmotionType.anger;
      case 'sorrow':
        return EmotionType.sorrow;
      case 'enjoy':
        return EmotionType.enjoy;
      default:
        throw UnsupportedError('Unsupported EmotionType $s');
    }
  }

  SelfHistoryKeyType toKey() {
    switch (this) {
      case EmotionType.joy:
        return SelfHistoryKeyType.joy;
      case EmotionType.anger:
        return SelfHistoryKeyType.anger;
      case EmotionType.sorrow:
        return SelfHistoryKeyType.sorrow;
      case EmotionType.enjoy:
        return SelfHistoryKeyType.enjoy;
    }
  }

  String toJsonString() {
    switch (this) {
      case EmotionType.joy:
        return 'joy';

      case EmotionType.anger:
        return 'anger';
      case EmotionType.sorrow:
        return 'sorrow';
      case EmotionType.enjoy:
        return 'enjoy';
    }
  }

  static EmotionType parseFromInt(int i) {
    switch (i) {
      case 0:
        return EmotionType.joy;
      case 1:
        return EmotionType.anger;
      case 2:
        return EmotionType.sorrow;
      case 3:
        return EmotionType.enjoy;
      default:
        throw UnsupportedError('Unsupported Emotion index $i');
    }
  }

  String toJaString() {
    switch (this) {
      case EmotionType.joy:
        return '嬉しかった';
      case EmotionType.anger:
        return '嫌だった';
      case EmotionType.sorrow:
        return '悲しかった';
      case EmotionType.enjoy:
        return '楽しかった';
    }
  }
}
