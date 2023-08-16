// This is main Widget which manages the whole quiz
import 'package:final__quiz_app/question_screen.dart';
import 'package:final__quiz_app/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;// ? --> Widget or null

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }
  // Widget activeScreen = StartScreen(switchScreen);
  //Both the variables and method  creation happens at the same point of time(i.e., simultaneously) --> when the class is instantiated

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 29, 138, 174), Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
