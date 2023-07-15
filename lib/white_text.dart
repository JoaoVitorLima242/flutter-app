import 'package:flutter/material.dart';

class WhiteText extends StatelessWidget {
  const WhiteText(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.normal,
  });

  final FontWeight fontWeight;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: fontWeight,
      ),
    );
  }
}
