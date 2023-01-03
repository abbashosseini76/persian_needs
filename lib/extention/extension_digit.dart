import '../module/digit.dart' as d;
import '../module/string.dart' as s;

extension Number on int {
  String farsiString() => d.digitToFarsiString(toString());
  String farsi() => d.digitToFarsi(toString());
  String rialString({bool fromToman = false}) =>
      s.toRialString(toString(), fromToman: fromToman);
  String tomanString({bool fromRial = false}) =>
      s.toTomanString(toString(), fromRial: fromRial);
  int rial() => this.isNegative ? throw Exception('$this is invalid.') : this * 10;
  double toman() => this.isNegative ? throw Exception('$this is invalid.') :  this / 10;
}
