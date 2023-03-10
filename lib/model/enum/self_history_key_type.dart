enum SelfHistoryKeyType {
  photos,
  caption,
  joy,
  anger,
  sorrow,
  enjoy,
}

extension SelfHistoryKeyTypeExtension on SelfHistoryKeyType {
  String toParam() {
    switch (this) {
      case SelfHistoryKeyType.photos:
        return 'photos';
      case SelfHistoryKeyType.caption:
        return 'photos';
      case SelfHistoryKeyType.joy:
        return 'joy';
      case SelfHistoryKeyType.anger:
        return 'anger';
      case SelfHistoryKeyType.sorrow:
        return 'sorrow';
      case SelfHistoryKeyType.enjoy:
        return 'enjoy';
    }
  }

  String toImageParam() {
    switch (this) {
      case SelfHistoryKeyType.photos:
        return 'photoPath';
      case SelfHistoryKeyType.caption:
        return 'caption';
      default:
        return '';
    }
  }
}
