import '../module/string.dart' as s;
import '../module/digit.dart' as d;
import '../module/sms.dart' as sms;
import '../module/time.dart' as t;

extension Farsi on String {
  int smsPageCount() => sms.smsPageCount(this);

  Duration timeToRead() => t.timeToRead(this);

  String toFarsiString() => d.digitToFarsiString(digits: this);

  String toEnglishNumber() => d.digitToEnglish(this);

  String toFarsiNumber() => d.digitToFarsi(this);

  List<Map<String, int>> mostWords() => s.mostWords(this);

  List<Map<String, int>> leastWords() => s.leastWords(this);

  int wordsCount({bool unique = false}) => s.wordsCount(this, unique: unique);

  List<String> words({bool unique = false}) => s.words(this, unique: unique);

  Map<String, int> wordsRepetition(
          {bool sorted = false, s.Order order = s.Order.descending}) =>
      s.wordsRepetition(this, sorted: sorted, order: order);

  Map<String, int> charsRepetition(
          {bool sorted = false,
          s.Order order = s.Order.descending,
          bool ignoreSpace = true}) =>
      s.charsRepetition(this,
          sorted: sorted, order: order, ignoreSpace: ignoreSpace);

  List<Map<String, int>> mostChars({bool ignoreSpace = true}) =>
      s.mostChars(this, ignoreSpace: ignoreSpace);

  List<Map<String, int>> leastChars({bool ignoreSpace = true}) =>
      s.leastChars(this, ignoreSpace: ignoreSpace);
}
