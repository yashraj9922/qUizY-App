import 'package:flutter/material.dart';

class IntroTemplete extends StatelessWidget {
  const IntroTemplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/quiz-logo.png"),
        const SizedBox(height: 30),
        const Text(
          "? ? qUizY-app ? ?",
          style: TextStyle(
            color: Color.fromARGB(255, 10, 76, 115),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30),
        TextButton(
          onPressed: null,
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 187, 218, 231),
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 18,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
          child: const Text(
            "Start Quiz",
            style: TextStyle(
              color: Color.fromARGB(255, 10, 76, 115),
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
