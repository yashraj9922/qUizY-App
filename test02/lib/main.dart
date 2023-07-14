import 'package:flutter/material.dart';
import 'bottomNavigationBar.dart';

void main() => runApp(const quizApp());

// ignore: camel_case_types
class quizApp extends StatelessWidget {
  const quizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("qUizY")),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(child: Text("YAshraj KAdam"),),
        ),
        bottomNavigationBar: const btmNavBar(),
      ),
    );
  }
}
