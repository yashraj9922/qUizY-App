import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
//we need to transfer List of Map Objects to List of Widgets
  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data) {
          return Row(
            children: [
              Text(((data['question_index'] as int) + 1).toString()),
              Expanded(
                //expands a child of a Row, Column, or Flex so that the child fills the available space
                child: Column(
                  children: [
                    Text(data['questions']/*accessing map values by keys*/ as String),
                    const SizedBox(height: 5),
                    Text(data['correct_answer'] as String),
                    Text(data['user_answers'] as String),
                  ],
                ),
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}
