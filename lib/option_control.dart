import 'package:guesstheceleb/option.dart';

class OptionControl {
  List<Options> _option = [
    Options("KBC", "BKC", "CKC", "MKC"),
    Options("A", "B", "C", "D"),
    Options("W", "X", "Y", "Z")
  ];

  String getOption1(int index) {
    return _option[index].option1;
  }

  String getOption2(int index) {
    return _option[index].option2;
  }

  String getOption3(int index) {
    return _option[index].option3;
  }

  String getOption4(int index) {
    return _option[index].option4;
  }

  int optionNumber() {
    return _option.length;
  }
}
