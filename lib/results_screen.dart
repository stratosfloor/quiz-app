import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswers,
  });

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {}

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('ehjalkerjgöaklejgöalkerjgöalkejrg'),
            const SizedBox(height: 30),
            const Text(
                'heerlgkjsaörlkgjöaslrkgjaölkrjgöalkerjgölakejrgölkaejröglkaejrg'),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text('Restart Quiz!'))
          ],
        ),
      ),
    );
  }
}
