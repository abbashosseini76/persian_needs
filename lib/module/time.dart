import '../persian_needs.dart';
import 'package:shamsi_date/shamsi_date.dart';

Duration timeToRead(String text) {
  return Duration(seconds: text.split(' ').length ~/ 3);
}

String diffTimeFromNowMiladi(DateTime d, {bool numeric = false}) {
  DateTime now = DateTime.now();
  Duration diff = now.difference(d);
  String s = '';
  String result = '';

  // yeare:
  if (diff.inDays >= 365) {
    s = numeric
        ? (diff.inDays ~/ 365).toString()
        : digitToFarsiString((diff.inDays ~/ 365).toString());
    result += "$s سال پیش";
    return result;
  } else if (diff.inDays >= 30 && diff.inDays < 365) {
    s = numeric
        ? (diff.inDays ~/ 30).toString()
        : digitToFarsiString((diff.inDays ~/ 30).toString());
    result += "$s ماه پیش";
    return result;
  } else if (diff.inDays >= 7 && diff.inDays < 30) {
    s = numeric
        ? (diff.inDays ~/ 7).toString()
        : digitToFarsiString((diff.inDays ~/ 7).toString());
    result += "$s هفته پیش";
    return result;
  } else if (diff.inDays > 0 && diff.inDays < 7) {
    s = numeric
        ? diff.inDays.toString()
        : digitToFarsiString(diff.inDays.toString());
    result += "$s روز پیش";
    return result;
  }
  // hours:
  else if (diff.inHours > 0) {
    s = numeric
        ? diff.inHours.toString()
        : digitToFarsiString(diff.inHours.toString());
    result += "$s ساعت پیش";
    return result;
  }
  // minutes:
  else if (diff.inMinutes > 1) {
    s = numeric
        ? diff.inMinutes.toString()
        : digitToFarsiString(diff.inMinutes.toString());

    result += "$s دقیقه پیش";
    return result;
  }
  // seconds
  else {
    s = numeric
        ? diff.inSeconds.toString()
        : digitToFarsiString(diff.inSeconds.toString());
    result += "$s ثانیه پیش";
    return result;
  }
}

String diffTimeFromNowShamsi(Jalali d, {bool numeric = false}) {
  DateTime before = d.toDateTime();
  DateTime now = DateTime.now();
  Duration diff = now.difference(before);
  String s = '';
  String result = '';

  // yeare:
  if (diff.inDays >= 365) {
    s = numeric
        ? (diff.inDays ~/ 365).toString()
        : digitToFarsiString((diff.inDays ~/ 365).toString());
    result += "$s سال پیش";
    return result;
  } else if (diff.inDays >= 30 && diff.inDays < 365) {
    s = numeric
        ? (diff.inDays ~/ 30).toString()
        : digitToFarsiString((diff.inDays ~/ 30).toString());
    result += "$s ماه پیش";
    return result;
  } else if (diff.inDays >= 7 && diff.inDays < 30) {
    s = numeric
        ? (diff.inDays ~/ 7).toString()
        : digitToFarsiString((diff.inDays ~/ 7).toString());
    result += "$s هفته پیش";
    return result;
  } else if (diff.inDays > 0 && diff.inDays < 7) {
    s = numeric
        ? diff.inDays.toString()
        : digitToFarsiString(diff.inDays.toString());
    result += "$s روز پیش";
    return result;
  }
  // hours:
  else if (diff.inHours > 0) {
    s = numeric
        ? diff.inHours.toString()
        : digitToFarsiString(diff.inHours.toString());
    result += "$s ساعت پیش";
    return result;
  }
  // minutes:
  else if (diff.inMinutes > 1) {
    s = numeric
        ? diff.inMinutes.toString()
        : digitToFarsiString(diff.inMinutes.toString());

    result += "$s دقیقه پیش";
    return result;
  }
  // seconds
  else {
    s = numeric
        ? diff.inSeconds.toString()
        : digitToFarsiString(diff.inSeconds.toString());
    result += "$s ثانیه پیش";
    return result;
  }
}
