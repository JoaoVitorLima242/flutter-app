import 'package:flutter/material.dart';

import 'package:first_app/white_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 244, 148, 116),
            Color(0xfff8b500),
          ],
        ),
      ),
      child: const Center(
        child: WhiteText(
          text: 'My text',
        ),
      ),
    );
  }
}
