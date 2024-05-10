import 'package:flutter/material.dart';
import 'package:managerment_yoga/screens/detail/detail_screen.dart';
import 'package:managerment_yoga/screens/home/widget/reading_card_list.dart';

class View1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "What is your \nasana ",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              TextSpan(
                text: "today?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ReadingListCard(
                image: "images/mm2.png",
                title: "Channel-Cleaning Breath",
                auth: "by: Atharva Kulkarni",
                rating: 4.9,
                pressDetails: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailsScreen();
                      },
                    ),
                  );
                },
                pressRead: () {
                  // Implement the pressRead functionality
                },
              ),
              ReadingListCard(
                image: "images/mm1.png",
                title: "Extended Side Angle Pose",
                auth: "Adwait Gondhalekar",
                rating: 4.8,
                pressDetails: () {
                  // Implement the pressDetails functionality
                },
                pressRead: () {
                  // Implement the pressRead functionality
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
