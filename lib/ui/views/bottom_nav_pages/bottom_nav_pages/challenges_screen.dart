// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fitness/const/app_colors.dart';
import 'package:fitness/const/app_strings.dart';
import 'package:fitness/ui/widgets/back_dialog_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'challenges_pages/exercise_page.dart';
import 'challenges_pages/meal_page.dart';
import 'challenges_pages/quize_page.dart';

class ChallengesScreen extends StatefulWidget {
  const ChallengesScreen({super.key});

  @override
  State<ChallengesScreen> createState() => _ChallengesScreenState();
}

class _ChallengesScreenState extends State<ChallengesScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 30.h,
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.h),
                child: TabBar(
                  labelColor: AppColors.scaffoldColor,
                  unselectedLabelColor: Colors.grey,
                  indicatorWeight: 2,
                  indicatorColor: AppColors.scaffoldColor,
                  controller: tabController,
                  tabs: [
                    Tab(
                      text: AppStrings.meal,
                    ),
                    Tab(
                      text: AppStrings.exercise,
                    ),
                    Tab(
                      text: AppStrings.quiz,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    MealPage(),
                    ExecrisePage(),
                    QuizPage(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      onWillPop: () => _onBackButtonPressed(context),
    );
  }
}

Future<bool> _onBackButtonPressed(BuildContext context) async {
  bool exitApp = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackDialogBox();
      });
  return exitApp ?? false;
}
