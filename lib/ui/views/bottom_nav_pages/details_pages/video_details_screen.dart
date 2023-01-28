
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:fitness/const/app_strings.dart';
import 'package:fitness/ui/widgets/custome_details_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../const/app_colors.dart';

class VideoDetailsScreen extends StatefulWidget {
  @override
  _VideoDetailsScreenState createState() => _VideoDetailsScreenState();
}

class _VideoDetailsScreenState extends State<VideoDetailsScreen>
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
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20.sp),
        ),
        elevation: 0,
        centerTitle: true,
        //title: Text(widget.detailsData['type'], style: style22),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.favorite_outline_outlined)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1.5,
                      child: Image.network(
                          "https://firebasestorage.googleapis.com/v0/b/fitness-f7af3.appspot.com/o/images%2Fenergy-boosting-workout.jpg?alt=media&token=98c9502d-23e6-47f3-b336-1b209e88afe9"),
                    ),
                    detailCustomWidget(
                      "150",
                      "comments",
                      "Most of the people in the gym had their headphones in and were inside of their own world, oblivious to what was going on in all of the surrounding areas. The majority of the conversations that were going on were most often strictly gym based questions.",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6syuL-y2sVymMgHC3M7qIgCHrfa723s_yVw&usqp=CAU",
                      "Alhaz Ahammed",
                      "Developer",
                    )
                  ],
                ),
                Container(
                  // height: 50,
                  width: MediaQuery.of(context).size.height,

                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.h, vertical: 1.h),
                        child: TabBar(
                          labelColor:AppColors.buttonColor ,
                          unselectedLabelColor: Colors.grey,
                          indicatorWeight: 2.5,
                          indicatorColor: AppColors.buttonColor,
                          labelStyle: TextStyle(fontSize: 14.sp),
                          controller: tabController,
                          tabs: [
                            Tab(
                              text: AppStrings.releted,
                            ),
                            Tab(
                              text: AppStrings.reviews,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Center(
                        child: Text(
                          AppStrings.emty,
                        ),
                      ),
                      Center(
                        child: Text(
                         AppStrings.emty,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}