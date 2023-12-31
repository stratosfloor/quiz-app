import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onClick,
  });

  final String answerText;
  final void Function() onClick;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 54, 13, 58),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 45,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45),
            )),
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
