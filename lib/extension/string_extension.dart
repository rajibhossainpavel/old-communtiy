import 'package:flutter_dotenv/flutter_dotenv.dart';

extension Validate on String {
  bool isEmail() {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);
  }
}

extension ImageURL on String {
  String toImageUrl() {
    final urlHost = dotenv.env['URL_HOST'].toString();
    if (contains(urlHost)) {
      return this;
    } else if (length > 0 && this[0] != '/') {
      return '$urlHost/$this';
    } else {
      return '$urlHost$this';
    }
  }

  String toMovieUrl() {
    final urlHost = dotenv.env['URL_HOST'].toString();
    if (contains(urlHost)) {
      return this;
    } else if (length > 0 && this[0] != '/') {
      return '$urlHost/video/$this';
    } else {
      return '$urlHost/video/$this';
    }
  }

  List<String> splitPath() {
    return split('::');
  }

  String profilePhoto() {
    final l = split('::');
    return l.isEmpty ? '' : l[0];
  }
}
