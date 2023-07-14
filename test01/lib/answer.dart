// ignore_for_file: sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({Key? key}) : super(key: key);
  final VoidCallback selectHandler;
  final String answerText;

  // ignore: prefer_const_constructors_in_immutables
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
  width: 280,
  child: ElevatedButton(
    onPressed: selectHandler,
    style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(127, 0, 0, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ) // set the background color
    ),
    child: Text(answerText),
      ),
    );
  }
}
