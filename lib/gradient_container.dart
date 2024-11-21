import 'package:flutter/material.dart';
import 'package:flutter_hello_world/style_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class MyApp extends StatelessWidget {
  const MyApp(this.colors, {super.key});

  final List<Colors> colors;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 26, 2, 80),
                Color.fromARGB(255, 45, 7, 98),
              ],
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: const Center(child: StyleText('Hello World ')),
        ),
      ),
    );
  }
}
