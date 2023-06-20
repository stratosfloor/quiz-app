import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_sumary/questions_summary.dart';
import 'package:quiz_app/styled_text.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswers,
    required this.switchScreen,
  });

  final List<String> chosenAnswers;
  final void Function(String restart) switchScreen;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where(
          (data) => data['user_answer'] == data['correct_answer'],
        )
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StyledText(
              text:
                  'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              size: 26,
              color: const Color.fromARGB(255, 220, 81, 245),
              centeredText: true,
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: () {
                switchScreen('quiz');
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 107, 15, 167),
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
