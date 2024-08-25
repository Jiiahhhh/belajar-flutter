import 'package:flutter/material.dart';
import 'package:first_project/styled_text.dart';
import 'package:first_project/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

//Constructor dengan positional parameter
class PositionalArguments extends StatelessWidget {
  const PositionalArguments(this.color1, this.color2, {super.key});

  const PositionalArguments.purple({super.key})
      : color1 = Colors.purple,
        color2 = Colors.blue;

  final Color color1;
  final Color color2;

  void rollDice() {}

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: startAlignment,
            end: endAlignment,
            colors: [color1, color2],
          ),
        ),
        child: const Center(child: DiceRoller()));
  }
}

//Constructor dengan namedArguments parameter
class NamedArguments extends StatelessWidget {
  const NamedArguments({super.key, required this.color1, required this.color2});

  final Color color1;
  final Color color2;5

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: startAlignment,
            end: endAlignment,
            colors: [color1, color2],
          ),
        ),
        child: const Center(child: StyledText("Ilal Ganteng")));
  }
}
