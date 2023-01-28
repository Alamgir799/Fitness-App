// ignore_for_file: prefer_const_constructors

import 'package:fitness/const/app_strings.dart';
import 'package:fitness/ui/route/route.dart';
import 'package:fitness/ui/widgets/custome_home_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(AppStrings.dashBord),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customHomeWidget(
              onTab: () => Get.toNamed(podcastDetails),
              title: AppStrings.newestPodcast,
              img:
                  "https://firebasestorage.googleapis.com/v0/b/fitness-f7af3.appspot.com/o/images%2Fenergy-boosting-workout.jpg?alt=media&token=98c9502d-23e6-47f3-b336-1b209e88afe9",
              item_title: "item_title",
            ),
            customHomeWidget(
                onTab: () => Get.toNamed(videoDetails),
                title: AppStrings.recommendedVideo,
                img:
                    "https://media.istockphoto.com/id/615883260/photo/difficult-doesnt-mean-impossible.jpg?s=612x612&w=0&k=20&c=cAEJvjTFRuF9H9gRov1Aj4X4I6xV6DSvMwWsf-2IW-0=",
                item_title: "item_title"),
            customHomeWidget(
                onTab: () => Get.toNamed(blogDetails),
                title: AppStrings.newestBlog,
                img:
                    'https://img.freepik.com/free-photo/young-healthy-man-athlete-doing-exercise-with-ropes-gym-single-male-model-practicing-hard-training-his-upper-body-concept-healthy-lifestyle-sport-fitness-bodybuilding-wellbeing_155003-27879.jpg?w=2000',
                item_title: "item_title"),
          ],
        ),
      ),
    );
  }
}
