enum PurchaseItemType { consume, subscription }

extension PurchaseItemTypeExtension on PurchaseItemType {
  static PurchaseItemType fromString(String val) {
    switch (val) {
      case 'subscription':
        return PurchaseItemType.subscription;
      case 'consume':
        return PurchaseItemType.consume;
      default:
        throw UnsupportedError('Unsupported Purchase item type');
    }
  }

  String toParam() {
    switch (this) {
      case PurchaseItemType.subscription:
        return 'subscription';
      case PurchaseItemType.consume:
        return 'consume';
    }
  }
}
