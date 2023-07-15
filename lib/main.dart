import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 244, 148, 116),
            Color(0xfff8b500),
          ],
        ),
      ),
    ),
  );
}
