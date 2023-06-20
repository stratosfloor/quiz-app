import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start';
  List<String> _selectedAnswers = [];

  void switchScreen(String screen) {
    setState(() {
      if (screen == 'quiz') _selectedAnswers = [];
      activeScreen = screen;
    });
  }

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);
    if (_selectedAnswers.length == questions.length) {
      switchScreen('results');
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 150),
                Color.fromARGB(255, 164, 66, 230),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen == 'start'
              ? StartScreen(
                  switchScreen: switchScreen,
                )
              : activeScreen == 'quiz'
                  ? QuestionsScreen(
                      onSelectAnswer: chooseAnswer,
                    )
                  : ResultScreen(
                      chosenAnswers: _selectedAnswers,
                      switchScreen: switchScreen,
                    ),
        ),
      ),
    );
  }
}
