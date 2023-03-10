import 'package:intl/intl.dart';

extension Parse on DateTime {
  String yyyymmddhhmm({String delimiter = '/'}) {
    final formatter =
        DateFormat('yyyy${delimiter}MM${delimiter}dd HH:mm', 'ja_JP');
    return formatter.format(this);
  }

  String yyyymmdd({String delimiter = '/'}) {
    final formatter = DateFormat('yyyy${delimiter}MM${delimiter}dd', 'ja_JP');
    return formatter.format(this);
  }

  String mmdd({String delimiter = '/'}) {
    final formatter = DateFormat('MM${delimiter}dd', 'ja_JP');
    return formatter.format(this);
  }

  String hhmm() {
    final formatter = DateFormat('HH:mm', 'ja_JP');
    return formatter.format(this);
  }
}
