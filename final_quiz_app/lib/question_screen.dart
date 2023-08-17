import 'package:final__quiz_app/answer_button.dart';
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
    return SizedBox(
      width: double
          .infinity, //use as much width as u can..be as much wide as possible
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "This is Question...",
            style: TextStyle(
              color: Color.fromARGB(255, 10, 76, 115),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton("Answer 1 goes here...", onTap:() {}),
          AnswerButton("Answer 1 goes here...", onTap:() {}),
          AnswerButton("Answer 1 goes here...", onTap:() {}),
          AnswerButton("Answer 1 goes here...", onTap:() {}),
        ],
      ),
    );
  }
}
