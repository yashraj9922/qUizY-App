import 'package:flutter/material.dart';
import 'package:try_2/options.dart';
import 'package:try_2/questionBox.dart';
import 'package:try_2/bottomNavigationBar.dart';

void main() => runApp(const QuizApp());

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("qUizY")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 100),
              QuestionBox(),
              const SizedBox(height: 30),
              Options(),
            ],
          ),
        ),
        bottomNavigationBar: const BtmNavBar(),
      ),
    );
  }
}
