import 'package:flutter/material.dart';

class DiceGame extends StatefulWidget {
  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  @override
  Widget build(BuildContext context) {
    ///Final size
    final Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Game'),
      ),
    );
  }
}
