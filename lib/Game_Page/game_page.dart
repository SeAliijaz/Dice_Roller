import 'dart:math';

import 'package:flutter/material.dart';

class DiceGame extends StatefulWidget {
  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  ///var
  int leftdice = 1;
  int rightdice = 1;
  int sum = 0;

  ///Dice Roller Method
  void diceRoller() {
    leftdice = Random().nextInt(6) + 1;
    rightdice = Random().nextInt(6) + 1;
    sum = leftdice + rightdice;
  }

  @override
  Widget build(BuildContext context) {
    ///Final size
    final Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Dice Game'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: () {
          setState(() {
            diceRoller();
          });
        },
      ),
      body: Container(
        height: s.height,
        width: s.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Image.asset(
                      'images/dice$leftdice.png',
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Text(
                    "$sum",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'images/dice$rightdice.png',
                      height: 150,
                      width: 150,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
