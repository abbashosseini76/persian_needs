import 'dart:math';
import '../const/lorem_values.dart';

enum Gender {
  random,
  male,
  female,
}

String randomPerson({Gender gender = Gender.random}) {
  String name;
  String family;

  if (gender == Gender.random) {
    gender = Gender.values[(Random().nextInt(2) + 1)]; // 1 = male, 2 = femail
  }
  if (gender == Gender.male) {
    name = randomMaleName;
  } else {
    name = randomFemaleName;
  }

  family = families[Random().nextInt(families.length)];

  return '$name $family';
}

String loremByWordCount({required int count}) {
  String result = '';
  final words = loremSentence.toString().split(' ');
  for (int i = 0; i < count; i++) {
    result += '${words[i%words.length]} ';
  }
  return result;
}

String loremByParagrafCount({required int count}) {
  String result = '';
  for (int i = 0; i < count; i++) {
    result += '$loremParagraf \n';
  }
  return result;
}

get randomSentence => sentences[Random().nextInt(sentences.length)];

get loremIpsumWord => loremWord;

get loremParagraf => paragraf;

get loremSentence => sentence;

get randomMaleName => maleNames[Random().nextInt(maleNames.length)];

get randomFemaleName => femaleNames[Random().nextInt(femaleNames.length)];

get randomFamily => families[Random().nextInt(families.length)];
