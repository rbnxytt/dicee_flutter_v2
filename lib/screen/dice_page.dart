import 'package:dicee/data/dice_data.dart';
import 'package:dicee/widget/dice.dart';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  List<Dice> diceList() => [
        for (int i = 0; i < 2; i++)
          Dice(
            imagePath: DiceData.imageList()[i],
            onPressed: () {
              setState(() {
                DiceData.randomize(i + 1);
              });
            },
          )
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          children: diceList(),
        ),
      ),
    );
  }
}
