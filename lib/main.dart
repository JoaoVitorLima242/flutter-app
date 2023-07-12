import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              colors: [Color.fromARGB(255, 244, 148, 116), Color(0xfff8b500)],
            ),
          ),
          child: const Center(
            child: Text('Hello world!'),
          ),
        ),
      ),
    ),
  );
}
