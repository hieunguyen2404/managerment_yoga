import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:managerment_yoga/colorsfile.dart';
import 'package:managerment_yoga/screens/home/home_screen.dart';
import 'package:managerment_yoga/screens/home3/home_screen3.dart';
import 'package:managerment_yoga/screens/settings/settings_screens.dart';

class HomeScreen2 extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen2> {
  int selectedIconIndex = 2;
  final List<Widget> _children = [
    Placeholder(), // Placeholder added for index 0
    Placeholder(), // Placeholder added for index 1
    HomeScreen(), // HomeScreen widget at index 2
    Placeholder(), // Placeholder added for index 3
    SettingScreen(), // Placeholder added for index 4
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: _children[selectedIconIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index: selectedIconIndex,
        buttonBackgroundColor: primary,
        height: 60.0,
        color: white,
        onTap: (index) {
          setState(() {
            selectedIconIndex = index;
          });
        },
        animationDuration: const Duration(
          milliseconds: 200,
        ),
        items: <Widget>[
          Icon(
            Icons.play_arrow_outlined,
            size: 30,
            color: selectedIconIndex == 0 ? white : black,
          ),
          Icon(
            Icons.access_time_outlined,
            size: 30,
            color: selectedIconIndex == 1 ? white : black,
          ),
          Icon(
            Icons.home_outlined,
            size: 30,
            color: selectedIconIndex == 2 ? white : black,
          ),
          Icon(
            Icons.favorite_border_outlined,
            size: 30,
            color: selectedIconIndex == 3 ? white : black,
          ),
          Icon(
            Icons.settings_outlined,
            size: 30,
            color: selectedIconIndex == 4 ? white : black,
          ),
        ],
      ),
    );
  }
}
