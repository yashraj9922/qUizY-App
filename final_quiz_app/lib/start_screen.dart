import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 29, 138, 174), Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          ".?!.qUizY.!?.",
          style: TextStyle(
            color: Color.fromARGB(255, 10, 76, 115),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30),
        Image.asset(
          "assets/images/quiz-logo.png",
          color: const Color.fromARGB(116, 255, 255, 255),
        ),
        // const SizedBox(height: 60),
        // Opacity(
        //   //--> performance incentive approach/ opacity widget
        //   opacity: 0.45,
        //   child: Image.asset("assets/images/quiz-logo.png"),
        // ),
        const SizedBox(height: 60),
        TextButton.icon(
          onPressed: () {
            //....
          },
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
          // child: const Text(
          label: const Text(
            "Start Quiz",
            style: TextStyle(
              color: Color.fromARGB(255, 10, 76, 115),
              fontSize: 15,
            ),
          ),
          icon: const Icon(Icons.rocket_launch_sharp),
          // icon: const Icon(Icons.play_arrow),
        ),
      ],
    ),
    );
  }
}
