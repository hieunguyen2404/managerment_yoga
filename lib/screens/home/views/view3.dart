import 'package:flutter/material.dart';

class View3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "Relax ",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: "melodies...",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        // Add more widgets below if needed
      ],
    );
  }
}
