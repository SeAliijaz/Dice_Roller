import 'package:dice/Game_Page/game_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      ///DebugShowCheckedModeBanner
      debugShowCheckedModeBanner: false,

      ///Theme
      theme: ThemeData(
        primarySwatch: Colors.red,
        backgroundColor: Colors.black,
      ),

      ///Home
      home: DiceGame(),
    );
  }
}
