// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const quest({Key? key}) : super(key: key);

 final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(50),
      // color: Color.fromARGB(217, 255, 255, 255),
      child: Text(questionText,
          style:
           const TextStyle(color: Color.fromARGB(255, 255, 254, 254),
                fontSize: 18, 
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
          ),
          textAlign: TextAlign.center,
      ),
    ); //by default text widget allocates the space to text whatever needed.....hence there is no point of alignment of text.....so use Container widget
  }
}
//container widget is a special widget which allows u to do bunch of things
//the core of container is always a child 
//child (=Content)..around it padding-->spacing inside the container.....
//border.....margin-->margin is the spacing around container, between container and neighbouring elements 