int smsPageCount(String text) {
  if (text.length <= 70) {
    return 1;
  } else if (text.length <= 134) {
    return 2;
  } else {
    return ((text.length - (70 + 134)) ~/ 67) + 2;
  }
}
