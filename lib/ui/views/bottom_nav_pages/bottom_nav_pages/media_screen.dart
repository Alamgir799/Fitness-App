// ignore_for_file: prefer_const_constructors

import 'package:fitness/const/app_strings.dart';
import 'package:fitness/ui/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../const/app_colors.dart';

class MediaScreen extends StatelessWidget {
  const MediaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            AppStrings.media,
            style: TextStyle(fontSize: 18.sp),
          ),
          automaticallyImplyLeading: false,
          toolbarHeight: 50.h,
          elevation: 0,
          bottom: TabBar(
            labelColor:AppColors.buttonColor ,
            unselectedLabelColor: Colors.grey,
            indicatorWeight: 2.5,
            indicatorColor: AppColors.buttonColor,
            labelStyle: TextStyle(fontSize: 14.sp),
            tabs: [
              Tab(
                text: AppStrings.videos,
              ),
              Tab(
                text: AppStrings.podcast,
              ),
              Tab(
                text: AppStrings.blog,
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              Container(
                child: GridView.builder(
                    itemCount: 5,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (_, i) {
                      return InkWell(
                        onTap: () {
                          Get.toNamed(videocategory);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.h, horizontal: 10.w),
                          margin: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 10.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQsZW5n59TYyK_mckeDVM-GYgeBBu0Myz-UQ&usqp=CAU"),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 20.h, left: 16.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(AppStrings.categoryTitle,
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                child: GridView.builder(
                    itemCount: 5,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (_, i) {
                      // final data = docs[i].data();
                      return InkWell(
                        onTap: () {
                          Get.toNamed(podcastcategory);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.h, horizontal: 10.w),
                          margin: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 10.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2fvHlnQq9NnGUimcFo51zF50U3xChbS00zQ&usqp=CAU"),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 20.h, left: 16.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(AppStrings.categoryTitle,
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                child: GridView.builder(
                    itemCount: 5,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (_, i) {
                      // final data = docs[i].data();
                      return InkWell(
                        onTap: () {
                          Get.toNamed(blogcategory);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.h, horizontal: 10.w),
                          margin: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 10.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://www.pngkit.com/png/full/420-4201565_more-info-here-sports-fitness-men-and-women.png"),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 20.h, left: 16.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(AppStrings.categoryTitle,
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
