// ignore: file_names
import 'package:flutter/material.dart';

class btmNavBar extends StatelessWidget {
  const btmNavBar({super.key});

  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Back"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Next"),
              ),
            ],
          ),
        ),
      );
  }
}
