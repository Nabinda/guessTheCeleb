import 'package:guesstheceleb/option.dart';

class OptionControl {
  List<Options> _option = [
    Options("HULK", "LOKI", "THOR", "BLACK PANTHER"),
    Options("HULK", "THOR", "LOKI", "RACOON"),
    Options("CAPTAIN MARVEL", "BLACK WIDOW", "SCARLETT WITCH", "GAMORA"),
    Options("CAPTAIN AMERICA", "IRON MAN", "STAR LORD", "LOKI"),
    Options("CAPTAIN MARVEL", "BLACK WIDOW", "SCARLETT WITCH", "GAMORA"),
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
