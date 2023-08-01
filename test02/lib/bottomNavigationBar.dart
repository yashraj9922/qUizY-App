import 'package:flutter/material.dart';

class BtmNavBar extends StatelessWidget {
  const BtmNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              backgroundColor: const Color.fromARGB(198, 148, 15, 15),
              padding: const EdgeInsets.symmetric(
                vertical: 14.0,
                horizontal: 22.0,
              ),
            ),
            child: const Text("Back"),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              backgroundColor: const Color.fromARGB(198, 148, 15, 15),
              padding: const EdgeInsets.symmetric(
                vertical: 14.0,
                horizontal: 22.0,
              ),
            ),
            child: const Text("Next"),
          ),
        ],
      ),
    );
  }
}
