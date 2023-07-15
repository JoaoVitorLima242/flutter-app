import 'package:flutter/material.dart';

import 'package:first_app/white_text.dart';

const startGradientAliginment = Alignment.topRight;
const endGradientAliginment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

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
      child: const Center(
        child: WhiteText('Passing my text'),
      ),
    );
  }
}
