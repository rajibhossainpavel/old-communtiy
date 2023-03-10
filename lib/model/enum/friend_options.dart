enum FriendOptions {
  favorite,
  unfavorite,
  block,
  violation,
  cancel,
}

extension FriendOptionsExtension on FriendOptions {
  static FriendOptions fromDiaplayString(String friendOption) {
    switch (friendOption) {
      case 'お気に入りに追加する':
        return FriendOptions.favorite;
      case 'お気に入りを解除する':
        return FriendOptions.unfavorite;
      case 'ブロックする':
        return FriendOptions.block;
      case '違反報告する':
        return FriendOptions.violation;
      case 'キャンセルする':
        return FriendOptions.cancel;
      default:
        throw UnsupportedError('unsupported string $friendOption');
    }
  }

  String displayString() {
    switch (this) {
      case FriendOptions.favorite:
        return 'お気に入りに追加する';
      case FriendOptions.unfavorite:
        return 'お気に入りを解除する';
      case FriendOptions.block:
        return 'ブロックする';
      case FriendOptions.violation:
        return '違反報告する';
      case FriendOptions.cancel:
        return 'キャンセルする';
    }
  }
}
