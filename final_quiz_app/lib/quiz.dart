// This is main Widget which manages the whole quiz
import 'package:final__quiz_app/data/questions.dart';
import 'package:final__quiz_app/question_screen.dart';
import 'package:final__quiz_app/results_screen.dart';
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
  // Widget? activeScreen; // ? --> Widget or null
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
  // Widget activeScreen = StartScreen(switchScreen);
  //Both the variables and method  creation happens at the same point of time(i.e., simultaneously) --> when the class is instantiated

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionScreen();
  //   });
  // }
  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  // final List<String> selectedAnswers = []; --> need to reset the list to empty list after the quiz is over
  List<String> selectedAnswers = [];
  void chooseAnswer(String clickedAnswer) {
    selectedAnswers.add(clickedAnswer);

    if (selectedAnswers.length == questions.length) {
      setState(
        () {
          selectedAnswers =
              []; //once we are exhausted with the questions resetting the list to empty list
          activeScreen = 'results-screen';
          //need to reset the selectedAnswers list to empty list so that it can be used again
        },
      );
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(onChooseAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(selectedAnswer: selectedAnswers);
    }

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
          // child: activeScreen,--> init state widget
          // child: activeScreen == 'start-screen'
          //     ? StartScreen(switchScreen)
          //     : QuestionScreen(onChooseAnswer: chooseAnswer),
          child: screenWidget,
        ),
      ),
    );
  }
}
