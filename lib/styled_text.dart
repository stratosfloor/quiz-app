import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(
      {required this.text, required this.size, required this.color, super.key});

  final String text;
  final double size;
  final Color color;

  @override
  Widget build(context) {
    return (Text(
      text,
      style: TextStyle(color: color, fontSize: size),
    ));
  }
}
