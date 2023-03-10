enum SelfHistoryStatus {
  draft,
  done,
  published,
}

extension SelfHistoryExtension on SelfHistoryStatus {
  String toParam() {
    switch (this) {
      case SelfHistoryStatus.draft:
        return 'draft';
      case SelfHistoryStatus.done:
        return 'done';
      case SelfHistoryStatus.published:
        return 'published';
    }
  }

  bool getSwitchStatus() {
    switch (this) {
      case SelfHistoryStatus.draft:
        return false;
      default:
        return true;
    }
  }

  static SelfHistoryStatus fromString(String str) {
    switch (str) {
      case 'disable':
        return SelfHistoryStatus.draft;
      case 'draft':
        return SelfHistoryStatus.draft;
      case 'progress':
        return SelfHistoryStatus.draft;
      case 'done':
        return SelfHistoryStatus.done;
      case 'published':
        return SelfHistoryStatus.published;
      case '':
        return SelfHistoryStatus.draft;
      default:
        throw UnimplementedError('unimplemented error');
    }
  }
}
