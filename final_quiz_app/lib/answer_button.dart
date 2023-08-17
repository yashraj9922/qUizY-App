import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, {super.key, required this.onTap});
  final String answerText; //positional argument
  final void Function() onTap; //named argument

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 300,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey,
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 18,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
        child: Text(answerText),
      ),
    );
  }
}
