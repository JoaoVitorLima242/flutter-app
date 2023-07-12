import 'package:flutter/material.dart';

class WhiteText extends StatelessWidget {
  const WhiteText({super.key, String text = ""});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'text',
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
