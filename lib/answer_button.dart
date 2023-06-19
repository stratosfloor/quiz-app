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
    return ElevatedButton(
      onPressed: onClick,
      child: Text(answerText),
    );
  }
}
