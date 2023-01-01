import 'persian_needs.dart';

void main() {
  // extensions:
  String text = loremParagraf; // lorem text
  text.timeToRead(); // return Duration()
  '1235'.toFarsiNumber(); // ١۲۳۵
  '١۲۳۵'.toEnglishNumber(); //1235
  12323154.farsiString();
  print('12۲352'.toFarsiString());
}
