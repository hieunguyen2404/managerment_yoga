import 'package:flutter/material.dart';
import 'package:managerment_yoga/colorsfile.dart';
import 'package:managerment_yoga/screens/home/widget/book_rating.dart';
import 'package:managerment_yoga/screens/home/widget/rounded_button.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Cleaning",
              ),
              const Text(
                "Breathing",
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    child: Column(
                      children: [
                        Text(
                          "I bought my first Moleskine freshman year of college. The hard cover and smooth pages gave this organization-loving Virgo a jolt of excitement.",
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        // RoundedButton(
                        //   text: "Asana",
                        //   verticalPadding: 10,
                        // )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      BookRating(score: 4.9)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Image.asset(
          'images/mm2.png',
          height: 200,
        ),
      ],
    );
  }
}
