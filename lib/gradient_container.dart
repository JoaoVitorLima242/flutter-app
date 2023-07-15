import 'package:flutter/material.dart';

const startGradientAliginment = Alignment.topRight;
const endGradientAliginment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  const GradientContainer.orange({super.key})
      : colors = const [
          Color.fromARGB(255, 244, 148, 116),
          Color(0xfff8b500),
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
      child: Center(
        child: Image.asset(
          'images/dice-2.png',
          width: 200,
        ),
      ),
    );
  }
}
