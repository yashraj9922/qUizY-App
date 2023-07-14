import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {super.key,
      required this.que,
      required this.answerQuestion,
      required this.questionCounter});
  final List<Map<String, Object>> que;
  final int questionCounter;
  final VoidCallback answerQuestion;
    
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(que[questionCounter]['questionText'] as String),
        // ElevatedButton(onPressed: answerQuestion, child: Text('Option 1')),
        // Answer(answerQuestion),
        ...(que[questionCounter]['options'] as List<String>).map((abc) {
          return Answer(answerQuestion, abc);
        }).toList(),
        //instead of having list of maps we should have list of widgets...
        /*a map method executes a function which we have to pass as a arguments in map(...),
            for every element which u are calling in the map.....using ananomys function....we need to return a widget.....*/
      ],
    );
  }
}
