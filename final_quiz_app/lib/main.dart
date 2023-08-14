import 'package:final__quiz_app/introPage/intro_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: IntroPage(),
      ),
    ),
  );
}
