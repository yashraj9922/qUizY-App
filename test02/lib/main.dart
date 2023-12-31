// ignore_for_file: prefer_const_constructors, unused_import
import 'dart:isolate';
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            "qUizY",
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          )),
          backgroundColor: Color.fromARGB(255, 210, 220, 223),
        ),
        backgroundColor: Color.fromARGB(255, 210, 220, 223),
        // backgroundColor: const Color.fromARGB(255, 255, 213, 0),
        body: Column(
          children: const [
            SizedBox(height: 200),
            // Image.asset('images/questionMark.jpeg'),
            // const SizedBox(height: 5),
            QuestionBox(),
            SizedBox(height: 30),
            Options(),
          ],
        ),
        bottomNavigationBar: const BtmNavBar(),
      ),
    );
  }
}
