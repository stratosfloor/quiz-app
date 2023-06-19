import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(
      {required this.text, required this.size, required this.color, super.key});

  final String text;
  final double size;
  final Color color;

  @override
  Widget build(context) {
    return (Text(text,
        style: GoogleFonts.lato(
          color: color,
          fontSize: size,
        )));
  }
}
