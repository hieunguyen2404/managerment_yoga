import 'package:flutter/material.dart';
import 'package:managerment_yoga/colorsfile.dart';
import 'package:managerment_yoga/screens/detail/widget/book_info.dart';
import 'package:managerment_yoga/screens/detail/widget/chapter_card.dart';
import 'package:managerment_yoga/screens/home/widget/book_rating.dart';
import 'package:managerment_yoga/screens/home/widget/rounded_button.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * .5 - 40,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/bg.png"),
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 19),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * .1,
                        ),
                        BookInfo()
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.only(top: size.height * .4 + 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ChapterCard(
                        name: "Mrigi Mudra",
                        tag: "Beginning pranayama students",
                        chapterNumber: 1,
                        size: Size(100, 100),
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Right Nostril",
                        tag: "Left nostril with ring-little fingers",
                        size: Size(100, 100),
                        chapterNumber: 2,
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Nostril Open",
                        tag: "Open and exhale slowly through the left",
                        size: Size(100, 100),
                        chapterNumber: 3,
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Nadi Shodhana",
                        tag: "Ratio breathing, Seed mantras",
                        size: Size(100, 100),
                        chapterNumber: 4,
                        press: () {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      // style: Theme.of(context).textTheme.display1,
                      children: [
                        TextSpan(text: "You might also "),
                        TextSpan(
                          text: "likes...",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 24, top: 24, right: 150),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: const Color(0xFFFFF8F9),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    color: kBlackColor,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Supported Headstand\n",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Maven",
                                      style: TextStyle(color: kBlackColor),
                                    ),
                                  ],
                                ),
                              ),
                              const Row(
                                children: [
                                  BookRating(
                                    score: 4.9,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  // Expanded(
                                  //   child: RoundedButton(
                                  //     text: "Start",
                                  //     verticalPadding: 10,
                                  //   ),
                                  // ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          "images/mm3.png",
                          width: 150,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
