import 'package:fitness/const/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../const/app_colors.dart';
import 'profile_pages/my_challenges-screen.dart';
import 'profile_pages/profile_details_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 32.h, left: 16.w),
                  child:
                      Text(AppStrings.goodmorning, style: TextStyle(fontSize: 24.sp)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.h),
              child: TabBar(
                labelColor:AppColors.buttonColor ,
                unselectedLabelColor: Colors.grey,
                indicatorWeight: 2.5,
                indicatorColor: AppColors.buttonColor,
                labelStyle: TextStyle(fontSize: 14.sp),
                //labelStyle: style18(Colors.white),
                controller: tabController,
                tabs: [
                  Tab(
                    text: AppStrings.myChallenges,
                  ),
                  Tab(
                    text: AppStrings.profileDetails,
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  MyChallengesScreen(),
                      ProfileDetails(),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
