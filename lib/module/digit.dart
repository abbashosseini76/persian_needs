import '../const/string_values.dart';
import '../const/digit_values.dart';

String digitToFarsi(String text) {
  String result = '';
  final list = text
      .split('')
      .map((element) => englishToFarsi[element] ?? element)
      .toList();
  for (var element in list) {
    result += element;
  }
  return result;
}

String digitToEnglish(String text) {
  String result = '';
  final list = text
      .split('')
      .map((element) => farsiToEnglish[element] ?? element)
      .toList();
  for (var element in list) {
    result += element;
  }
  return result;
}

String digitToFarsiString({required String digits}) {
  digits = checkAndFormatDigits(digits);
  const int splitCount = 3;
  List<String> list = [];
  final lastIndex = digits.length;
  for (int i = lastIndex; i > 0; i -= splitCount) {
    final start = (i - splitCount < 0) ? 0 : (i - splitCount);
    final end = i;
    list.add(digits.substring(start, end));
  }
  return _mergeNameOfAllDigits(list);
}

String checkAndFormatDigits(String digits) {
  digits = digitToEnglish(digits);
  if (int.tryParse(digits) == null) {
    throw Exception('input should only contain `int` value.');
  }
  return digits;
}

String _mergeNameOfAllDigits(List<String> list) {
  String res = '';
  for (int i = 0; i <= list.length - 1; i++) {
    res = '${_threeDigitsNamingWithSuffix(list, i, res)}$res';
  }
  return res;
}

String _threeDigitsNamingWithSuffix(
    List<String> list, int i, String resultTillNow) {
  String res = '';
  String s = list[i];
  String lastNumbers = i > 0 ? list[i - 1] : '000';
  bool isLastNumbers = list.length - 1 == i;

  switch (i) {
    case 0:
      res += _threeDigitsNamingWithoutSuffix(s);
      break;
    case 1:
      res +=
          '${_threeDigitsNamingWithoutSuffix(s)}${_andCheckWithSuffix(lastNumbers, 'هزار', isLastNumbers)}';
      break;
    case 2:
      res +=
          '${_threeDigitsNamingWithoutSuffix(s)}${_andCheckWithSuffix(lastNumbers, 'میلیون', isLastNumbers)}';
      break;
    case 3:
      res +=
          '${_threeDigitsNamingWithoutSuffix(s)}${_andCheckWithSuffix(lastNumbers, 'میلیارد', isLastNumbers)}';
      break;
    case 4:
      res +=
          '${_threeDigitsNamingWithoutSuffix(s)}${_andCheckWithSuffix(lastNumbers, 'بیلیون', isLastNumbers)}';
      break;
    case 5:
      res +=
          '${_threeDigitsNamingWithoutSuffix(s)}${_andCheckWithSuffix(lastNumbers, 'بیلیارد', isLastNumbers)}';
      break;
    case 6:
      res +=
          '${_threeDigitsNamingWithoutSuffix(s)}${_andCheckWithSuffix(lastNumbers, 'تریلیون', isLastNumbers)}';
      break;
    case 7:
      res +=
          '${_threeDigitsNamingWithoutSuffix(s)}${_andCheckWithSuffix(lastNumbers, 'تریلیارد', isLastNumbers)}';
      break;
    case 8:
      res +=
          '${_threeDigitsNamingWithoutSuffix(s)}${_andCheckWithSuffix(lastNumbers, 'کوآدریلیون', isLastNumbers)}';
      break;
    default:
      break;
  }
  return res;
}

String _threeDigitsNamingWithoutSuffix(String s) {
  String result = '';
  if (s.length > 1 && s[s.length - 2] == '1') {
    result += exception[s.substring(s.length - 2, s.length).toString()] ?? '';
    if (s.length > 2) {
      result =
          '${sadgan[s[0]]}${_andCheck(s[0], s.substring(0, s.length))}$result';
    }
  } else {
    final index = s.length - 1;
    final number = s[index];
    result += yekan[number] ?? '';
    if (s.length > 1) {
      final currentIndex = s.length - 2;
      final startIndex = currentIndex + 1;
      final endIndex = s.length;
      final number = s[currentIndex];
      result =
          '${dahgan[number]}${_andCheck(number, s.substring(startIndex, endIndex))}$result';
    }
    if (s.length > 2) {
      final currentIndex = s.length - 3;
      final startIndex = currentIndex + 1;
      final endIndex = s.length;
      final number = s[currentIndex];
      result =
          '${sadgan[number]}${_andCheck(number, s.substring(startIndex, endIndex))}$result';
    }
  }
  return result;
}

String _andCheckWithSuffix(
  String s,
  String suffix,
  bool isLastNumbers,
) {
  for (int i = 0; i < s.length; i++) {
    if (s[i] != '0') {
      return ' $suffix و ';
    }
  }
  return isLastNumbers ? ' $suffix' : '';
}

_andCheck(String current, String substring) {
  if (current == '0') return '';
  for (int i = 0; i < substring.length; i++) {
    if (substring[i] != '0') {
      return ' و ';
    }
  }
  return '';
}
