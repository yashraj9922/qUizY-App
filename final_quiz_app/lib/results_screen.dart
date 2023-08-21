import 'package:final__quiz_app/data/questions.dart';
import 'package:final__quiz_app/questions_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.selectedAnswer});

  final List<String> selectedAnswer;

  List<Map<String, Object>> getAnswerSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswer.length; i++) {
      summary.add(
        {
          'question_index': i,
          'questions': questions[i].questionText,
          'correct_answer': questions[i].answers[0],
          'user_answers': selectedAnswer[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double
          .infinity, //use as much width as u can..be as much wide as possible
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answerd X out of Y answers correctly!",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  color: Color.fromARGB(255, 4, 54, 83),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            QuestionsSummary(
              getAnswerSummary(),
            ),
            const SizedBox(height: 30),
            TextButton.icon(
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
              // child: const Text(
              label: const Text(
                "Restart",
                style: TextStyle(
                  color: Color.fromARGB(255, 10, 76, 115),
                  fontSize: 15,
                ),
              ),
              icon: const Icon(Icons.restart_alt),
            ),
          ],
        ),
      ),
    );
  }
}
