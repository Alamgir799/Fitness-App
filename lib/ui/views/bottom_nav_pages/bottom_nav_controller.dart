// ignore_for_file: prefer_const_constructors

import 'package:fitness/const/app_colors.dart';
import 'package:fitness/const/app_strings.dart';
import 'package:fitness/ui/views/bottom_nav_pages/bottom_nav_pages/challenges_screen.dart';
import 'package:fitness/ui/views/bottom_nav_pages/bottom_nav_pages/home_screen.dart';
import 'package:fitness/ui/views/bottom_nav_pages/bottom_nav_pages/media_screen.dart';
import 'package:fitness/ui/views/bottom_nav_pages/bottom_nav_pages/profile_screen.dart';
import 'package:fitness/ui/views/bottom_nav_pages/bottom_nav_pages/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavController extends StatelessWidget {
  BottomNavController({Key? key}) : super(key: key);
  final _pages = [
    HomeScreen(),
    ChallengesScreen(),
    MediaScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];
  RxInt _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.scaffoldColor,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.home,
                    color: Colors.grey,
                  ),
                  label: AppStrings.home),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.chartSimple,
                    color: Colors.grey,
                  ),
                  label: AppStrings.challenges),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.dumbbell,
                    color: Colors.grey,
                  ),
                  label: AppStrings.media),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.search,
                    color: Colors.grey,
                  ),
                  label: AppStrings.search),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.person,
                    color: Colors.grey,
                  ),
                  label: AppStrings.myProfile),
            ],
            currentIndex: _currentIndex.value.toInt(),
            onTap: (int index) {
              _currentIndex.value = index;
            },
          ),
          body: _pages[_currentIndex.value.toInt()],
        ));
  }
}
