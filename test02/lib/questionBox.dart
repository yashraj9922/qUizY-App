import 'package:flutter/widgets.dart';

class QuestionBox extends StatelessWidget {
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
              borderRadius:
                  BorderRadius.circular(20.0), // Adjust the radius as needed
              border: Border.all(
                color: const Color.fromARGB(255, 2, 48, 75), // Border color
                width: 2.0, // Border width
              ),
            ),
            child: const Center(
              child: Text(
                'Question',
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
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
