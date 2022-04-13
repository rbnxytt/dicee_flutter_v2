import "dart:math";

class Randomizer {
  static String randomNumber() {
    Random random = Random();
    int ranNum = random.nextInt(6) + 1;
    return ranNum.toString();
  }
}
