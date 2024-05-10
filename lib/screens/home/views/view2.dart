import 'package:flutter/material.dart';
import 'package:managerment_yoga/screens/home/widget/best_of_the_day_card.dart';

class View2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "Best of the ",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: "day",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        BestOfTheDayCard(),
        const SizedBox(height: 15),
        // Add more widgets below if needed
      ],
    );
  }
}
