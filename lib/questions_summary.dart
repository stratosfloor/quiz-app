import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: data['correct_answer'] == data['user_answer']
                          ? Colors.green
                          : Colors.red,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: StyledText(
                        text: ((data['question_index'] as int) + 1).toString(),
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 2,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 5),
                          Text(
                            data['question'] as String,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16),
                          ),
                          const SizedBox(height: 5),
                          StyledText(
                            text: data['user_answer'] as String,
                            size: 16,
                            color: const Color.fromARGB(255, 195, 107, 250),
                          ),
                          StyledText(
                              text: data['correct_answer'] as String,
                              size: 16,
                              color:
                                  data['correct_answer'] == data['user_answer']
                                      ? Colors.green
                                      : Colors.red),
                          const SizedBox(height: 10)
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
