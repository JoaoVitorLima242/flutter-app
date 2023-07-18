import 'package:flutter/material.dart';
import 'package:first_app/white_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiveImage = 'images/dice-2.png';

  void rollDice() {
    setState(() {
      activeDiveImage = 'images/dice-4.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiveImage,
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
