import 'package:flutter/material.dart';
import 'package:flutter_hello_world/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class MyApp extends StatelessWidget {
  const MyApp(this.colors, {super.key});

  const MyApp.purple({super.key})
      : colors = const [Colors.deepPurple, Colors.indigo];

  final List<Color> colors;

  void rollDice() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: const Center(child: DiceRoller()),
        ),
      ),
    );
  }
}
