import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({
    super.key,
    required this.questionText,
    required this.userAnswer,
    required this.correctAnswer,
  });

  final String questionText;
  final String userAnswer;
  final String correctAnswer;

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 5),
        StyledText(
          text: questionText,
          color: Colors.white,
          size: 16,
        ),
        const SizedBox(height: 5),
        StyledText(
          text: userAnswer,
          size: 16,
          color: const Color.fromARGB(255, 195, 107, 250),
        ),
        StyledText(
            text: correctAnswer,
            size: 16,
            color: userAnswer == correctAnswer ? Colors.green : Colors.red),
        const SizedBox(height: 10)
      ],
    );
  }
}
