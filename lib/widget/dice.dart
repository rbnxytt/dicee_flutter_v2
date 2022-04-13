import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  const Dice({
    Key key,
    @required this.imagePath,
    @required this.onPressed,
  }) : super(key: key);

  final String imagePath;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextButton(onPressed: onPressed, child: Image.asset(imagePath)),
      ),
    );
  }
}
