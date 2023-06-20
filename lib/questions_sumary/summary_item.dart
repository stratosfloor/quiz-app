import 'package:flutter/material.dart';
import 'package:quiz_app/questions_sumary/question_identifier.dart';
import 'package:quiz_app/questions_sumary/question_summary.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.itemData});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrectAnswer =
        itemData['correct_answer'] == itemData['user_answer'];
    final int questionIndex = itemData['question_index'] as int;
    final String questionText = itemData['question'] as String;
    final String userAnswer = itemData['user_answer'] as String;
    final String correctAnswer = itemData['correct_answer'] as String;

    return Row(
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: questionIndex,
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 15),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Colors.black,
                ),
              ),
            ),
            child: QuestionSummary(
              questionText: questionText,
              userAnswer: userAnswer,
              correctAnswer: correctAnswer,
            ),
          ),
        ),
      ],
    );
  }
}
