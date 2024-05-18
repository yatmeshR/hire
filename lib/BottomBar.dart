// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:futurehire/editSkills.dart';
import 'package:futurehire/explore_page/ui/explore_page.dart';
import 'package:futurehire/notice_page/ui/notice_page_ui.dart';
import 'package:futurehire/skills.dart';
import 'package:futurehire/skills_page/ui/skills_page.dart';
import 'homepage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'skills_list.dart';
import 'package:futurehire/skills.dart';

class BottomBar extends StatefulWidget {
  BottomBar({ required this.si});
  int si;
  @override
  State<BottomBar> createState() => _BottomBarState(si);
}

class _BottomBarState extends State<BottomBar> {
  _BottomBarState(this._selectedIndex);
  int _selectedIndex;

// List of all the pages

  final List<Widget> _screens = [
    HomePage(),
    //Skills(),
    SkillsPage(),
    ExplorePage(),
    NoticePage()

    // Add more screens here
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.white,
          child: GNav(
            gap: 8,
            // Need to make changes here for better looking bottom bar
            backgroundColor: Colors.white,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.white,
            tabBorderRadius: 10.0,
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            // padding: EdgeInsets.all(20.0),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.article,
                text: 'Skills',
              ),
              GButton(
                icon: Icons.explore,
                text: 'Explore',
              ),
              GButton(
                icon: Icons.notifications_active,
                text: 'Notice',
              ),
              // GButton(icon: Icons.forum)
            ],
          ),
        ),
        body: _screens[_selectedIndex],
      ),
    );
  }
}
