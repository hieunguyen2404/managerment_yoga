import 'package:flutter/material.dart';
import 'package:managerment_yoga/colorsfile.dart';
import 'package:managerment_yoga/screens/home/widget/book_rating.dart';

class BestOfTheDayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 195, // Reduced height to avoid overflow
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 24, vertical: 16), // Adjusted padding
              height: 195, // Set to match the container height
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.43),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Live a more expressive life with this connective practice.",
                    style: TextStyle(
                      fontSize: 11,
                      color: kLightBlackColor,
                    ),
                  ),
                  SizedBox(height: 8), // Adjusted spacing
                  Text(
                    "Simple Meditation Ignite Creativity",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Atharva Kulkarni",
                    style: TextStyle(
                      color: kLightBlackColor,
                    ),
                  ),
                  SizedBox(height: 8), // Adjusted spacing
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BookRating(score: 4.9),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "I bought my first Moleskine freshman year of college. The hard cover and smooth pages gave this organization-loving Virgo a jolt of excitement.",
                          maxLines: 2, // Reduced max lines
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: -27,
            top: -7,
            child: Image.asset(
              "images/mm4.png",
              width: size.width * .40,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              // child: TwoSideRoundedButton(
              //   text: "Start",
              //   radius: 24,
              //   press: () {},
              // ),
            ),
          )
        ],
      ),
    );
  }
}
