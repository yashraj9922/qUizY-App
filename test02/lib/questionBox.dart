import 'package:flutter/material.dart';

class QuestionBox extends StatelessWidget {
  const QuestionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 365.0, // Adjust the width as needed
            height: 170.0, // Adjust the height as needed
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 210, 220, 223),
              borderRadius:
                  BorderRadius.circular(20.0), // Adjust the radius as needed
              // border: Border.all(
              //   color: Color.fromARGB(255, 0, 0, 0), // Border color
              //   width: 2.0, // Border width
              // ),
            ),
            child: const Center(
              child: Text(
                'Question',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 0, 0, 0), // Text color
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
