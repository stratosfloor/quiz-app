import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          bgcolor: Color.fromARGB(255, 74, 20, 140),
        ),
      ),
    ),
  );
}
