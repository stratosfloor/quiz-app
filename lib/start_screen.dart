import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});
  @override
  State<StartScreen> createState() {
    return _StartScreenState();
  }
}

class _StartScreenState extends State<StartScreen> {
  void startQuiz() {
    print('hej');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 300),
        const SizedBox(height: 50),
        const StyledText(
            text: 'Learn Flutter the fun way!!!!',
            size: 26,
            color: Color.fromARGB(255, 220, 130, 236)),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: startQuiz,
          style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 16),
              backgroundColor: const Color.fromARGB(255, 74, 20, 140)),
          child: const Text('Start Quiz!'),
        )
      ],
    );
  }
}