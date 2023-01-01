import '../module/digit.dart' as d;

extension Number on int {
  String farsiString() => d.digitToFarsiString(toString());
  String farsi() => d.digitToFarsi(toString());
}
