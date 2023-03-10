enum OS {
  android,
  ios,
}

extension OSExtension on OS {
  String stringfy() {
    switch (this) {
      case OS.android:
        return 'android';
      case OS.ios:
        return 'ios';
    }
  }

  static OS fromString(String val) {
    switch (val) {
      case 'android':
        return OS.android;
      case 'ios':
        return OS.ios;
      default:
        throw UnsupportedError('Unsupported OS type');
    }
  }
}
