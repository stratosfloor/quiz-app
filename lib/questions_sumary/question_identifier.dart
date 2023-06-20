import 'package:flutter/material.dart';

import '../styled_text.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final bool isCorrectAnswer;
  final int questionIndex;

  @override
  Widget build(context) {
    final int questionNumber = questionIndex + 1;

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: isCorrectAnswer ? Colors.green : Colors.red,
      ),
      child: StyledText(
        text: questionNumber.toString(),
        size: 20,
        color: Colors.black,
      ),
    );
  }
}
