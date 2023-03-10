enum Certificate {
  driverLicense,
  passport,
  insuranceCard,
}

extension CertificateLabel on Certificate {
  String toLabel() {
    switch (this) {
      case Certificate.driverLicense:
        return '運転免許証';
      case Certificate.passport:
        return 'パスポート';
      case Certificate.insuranceCard:
        return '保険証';
    }
  }

  String get toRequest {
    switch (this) {
      case Certificate.driverLicense:
        return 'driver';
      case Certificate.passport:
        return 'passport';
      case Certificate.insuranceCard:
        return 'insurance';
    }
  }
}
