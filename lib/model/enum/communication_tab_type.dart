enum CommunicationTabType {
  message,
  likeTo,
  likeFrom,
}

extension CommunicationTabTypeExtension on CommunicationTabType {
  static CommunicationTabType fromTabIndex(int index) {
    switch (index) {
      case 0:
        return CommunicationTabType.message;
      case 1:
        return CommunicationTabType.likeFrom;
      case 2:
        return CommunicationTabType.likeTo;
      default:
        throw UnsupportedError('Unsupported index $index');
    }
  }
}
