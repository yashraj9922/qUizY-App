import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,
      {super.key}); //adding switchScreen function as positional argument
//arguments accepted in constructor function is not used in build method
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "q U i z Y",
          style: GoogleFonts.audiowide(
            textStyle: const TextStyle(
              color: Color.fromARGB(255, 10, 76, 115),
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Image.asset(
          "assets/images/quiz-logo.png",
          color: const Color.fromARGB(126, 255, 255, 255),
        ),
        // const SizedBox(height: 60),
        // Opacity(
        //   //--> performance incentive approach/ opacity widget
        //   opacity: 0.45,
        //   child: Image.asset("assets/images/quiz-logo.png"),
        // ),
        const SizedBox(height: 60),
        TextButton.icon(
          onPressed: startQuiz,
          // onPressed: () {
          //   startQuiz();
          // },
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
    );
  }
}
