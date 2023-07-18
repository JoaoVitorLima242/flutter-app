import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

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
      child: const Center(child: DiceRoller()),
    );
  }
}
