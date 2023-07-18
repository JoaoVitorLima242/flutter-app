import 'package:flutter/material.dart';
import 'dart:math';
import 'package:first_app/white_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 34, 75, 223),
          ),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: WhiteText(
              'Roll Dice',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
