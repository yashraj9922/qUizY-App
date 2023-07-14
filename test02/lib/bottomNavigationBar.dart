// ignore: file_names
import 'package:flutter/material.dart';

class BtmNavBar extends StatelessWidget {
  const BtmNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 0, 132, 161),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                backgroundColor: const Color.fromARGB(198, 148, 15, 15),
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0, // Increase the vertical padding as needed
                  horizontal: 24.0, // Increase the horizontal padding as needed
                ),
              ),
              child: const Text("Back"),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                backgroundColor: Color.fromARGB(198, 148, 15, 15),
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0, // Increase the vertical padding as needed
                  horizontal: 24.0, // Increase the horizontal padding as needed
                ),
              ),
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
