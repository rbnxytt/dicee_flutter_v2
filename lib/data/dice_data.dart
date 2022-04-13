import 'package:dicee/randomizer.dart';

class DiceData {
  static String die1 = Randomizer.randomNumber();
  static String die2 = Randomizer.randomNumber();

  static List<String> imageList() =>
      ['images/dice$die1.png', 'images/dice$die2.png'];

  static void randomize(int num) {
    num == 1
        ? die1 = Randomizer.randomNumber()
        : die2 = Randomizer.randomNumber();
  }
}
