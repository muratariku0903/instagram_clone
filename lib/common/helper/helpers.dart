import 'dart:developer' as dev;
import 'package:ntp/ntp.dart';
import 'package:intl/intl.dart';

class Helpers {
  static Future<DateTime> get ntpTime => NTP.now();
  static get dateId async => DateFormat('yyyy-MM').format(await ntpTime);
}

void dump(Object value) {
  print("$value\n${StackTrace.current.toString().split("#")[2]}\n");
}
