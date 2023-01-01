enum Order {
  ascending,
  descending,
}

List<Map<String, int>> mostWords(String text) {
  final list = wordsRepetition(text, sorted: true, order: Order.descending);
  int max = 0;
  List<Map<String, int>> result = [];
  for (var word in list.entries) {
    if (word.value >= max) {
      result.add({word.key: word.value});
      max = word.value;
    }
  }
  return result;
}

List<Map<String, int>> leastWords(String text) {
  final list = wordsRepetition(text, sorted: true, order: Order.ascending);
  late int min;
  bool firstInit = false;
  List<Map<String, int>> result = [];
  for (var word in list.entries) {
    if (!firstInit) {
      min = word.value;
      firstInit = true;
    }

    if (word.value <= min) {
      min = word.value;
      result.add({word.key: word.value});
    }
  }
  return result;
}

int wordsCount(String text, {bool unique = false}) {
  final list = text.split(' ').where((e) => e != ' ').toList();
  if (!unique) {
    return list.length;
  } else {
    List<String> uniqueList = [];
    for (var s in list) {
      if (!uniqueList.contains(s)) {
        uniqueList.add(s);
      }
    }
    return uniqueList.length;
  }
}

List<String> words(String text, {bool unique = false}) {
  var list = text.split(' ').where((e) => e != ' ').toList();
  if (!unique) {
    return list;
  } else {
    List<String> uniqueList = [];
    for (var s in list) {
      if (!uniqueList.contains(s)) {
        uniqueList.add(s);
      }
    }
    return uniqueList;
  }
}

Map<String, int> wordsRepetition(
  String text, {
  bool sorted = false,
  Order order = Order.descending,
}) {
  Map<String, int> result = {};

  final list = text.split(' ');

  for (String word in list) {
    if (result[word] == null) {
      result[word] = 1;
    } else {
      result[word] = (result[word]! + 1);
    }
  }

  if (sorted) {
    result = Map.fromEntries(result.entries.toList()
      ..sort((e1, e2) => order == Order.ascending
          ? e1.value.compareTo(e2.value)
          : e2.value.compareTo(e1.value)));
  }

  return result;
}

Map<String, int> charsRepetition(
  String text, {
  bool sorted = false,
  Order order = Order.descending,
  bool ignoreSpace = true,
}) {
  Map<String, int> result = {};

  final list =
      ignoreSpace ? text.replaceAll(' ', '').split('') : text.split('');

  for (String letter in list) {
    if (letter == ' ') letter = 'space';
    if (result[letter] == null) {
      result[letter] = 1;
    } else {
      result[letter] = (result[letter]! + 1);
    }
  }

  if (sorted) {
    result = Map.fromEntries(result.entries.toList()
      ..sort((e1, e2) => order == Order.ascending
          ? e1.value.compareTo(e2.value)
          : e2.value.compareTo(e1.value)));
  }

  return result;
}

List<Map<String, int>> mostChars(String text, {bool ignoreSpace = true}) {
  final list = charsRepetition(text,
      sorted: true, order: Order.descending, ignoreSpace: ignoreSpace);
  int max = 0;
  List<Map<String, int>> result = [];
  for (var word in list.entries) {
    if (word.value >= max) {
      result.add({word.key: word.value});
      max = word.value;
    }
  }
  return result;
}

List<Map<String, int>> leastChars(String text, {bool ignoreSpace = true}) {
  final list = charsRepetition(text,
      sorted: true, order: Order.ascending, ignoreSpace: ignoreSpace);
  late int min;
  bool firstInit = false;
  List<Map<String, int>> result = [];
  for (var word in list.entries) {
    if (!firstInit) {
      min = word.value;
      firstInit = true;
    }

    if (word.value <= min) {
      min = word.value;
      result.add({word.key: word.value});
    }
  }
  return result;
}
