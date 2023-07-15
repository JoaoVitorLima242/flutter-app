import 'package:first_app/white_text.dart';
import 'package:flutter/material.dart';

const startGradientAliginment = Alignment.topRight;
const endGradientAliginment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  const GradientContainer.orange({super.key})
      : colors = const [
          Color(0xFFF49474),
          Color(0xFFF8B500),
        ];

  final List<Color> colors;

  void rollDice() {
    print('ROLL DICE');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startGradientAliginment,
          end: endGradientAliginment,
          colors: colors,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'images/dice-2.png',
              width: 200,
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: rollDice,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff0037F7),
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
        ),
      ),
    );
  }
}
