import 'package:flutter/material.dart';
import 'package:managerment_yoga/colorsfile.dart';
import 'package:managerment_yoga/screens/home3/widget/courses.dart';
import 'package:managerment_yoga/screens/home3/widget/custom_app_bar.dart';
import 'package:managerment_yoga/screens/home3/widget/diff_styles.dart';

class Home3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: appPadding * 2),
        child: Column(
          children: [
            CustomAppBar(),
            DiffStyles(),
            Courses(),
          ],
        ),
      ),
    );
  }
}
