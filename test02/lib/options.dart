import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Option 1"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Option 2"),
            ),
          ],
        ),
        const SizedBox(height: 22.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Option 3"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Option 4"),
            ),
          ],
        ),
      ],
    );
  }
}
