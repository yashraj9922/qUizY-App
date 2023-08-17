import 'package:final__quiz_app/answer_button.dart';
import 'package:final__quiz_app/data/questions.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    var currentQuestion = questions[0];

    return SizedBox(
      width: double
          .infinity, //use as much width as u can..be as much wide as possible
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              currentQuestion.questionText,
              style: const TextStyle(
                color: Color.fromARGB(255, 10, 76, 115),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton(currentQuestion.answers[0], onTap: () {}),
          AnswerButton(currentQuestion.answers[1], onTap: () {}),
          AnswerButton(currentQuestion.answers[2], onTap: () {}),
          AnswerButton(currentQuestion.answers[3], onTap: () {}),
        ],
      ),
    );
  }
}
