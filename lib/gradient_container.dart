import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.bgcolor});

  final Color bgcolor;

  @override
  Widget build(context) {
    return (Container(
      decoration: BoxDecoration(
        color: bgcolor,
      ),
      child: const Center(child: StartScreen()),
    ));
  }
}
