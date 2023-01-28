// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dots_indicator/dots_indicator.dart';
import 'package:fitness/const/app_strings.dart';
import 'package:fitness/ui/route/route.dart';
import 'package:fitness/ui/styles/styles.dart';
import 'package:fitness/ui/widgets/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  RxInt _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(32.w),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Obx(
                  () => Image.network(AppStrings.images[_currentIndex.toInt()]),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Obx(
                          () => Text(
                            '${AppStrings.title[_currentIndex.toInt()]}',
                            style: AppStyles().onbordingTitleTextStyle,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          '${AppStrings.description[_currentIndex.toInt()]}',
                          style: AppStyles().onbordingDescriptionTextStyle,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Obx(
                          () => DotsIndicator(
                            dotsCount: AppStrings.images.length,
                            position: _currentIndex.toDouble(),
                            decorator: DotsDecorator(),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        fitnessButton(AppStrings.next, () {
                          if (_currentIndex == AppStrings.title.length - 1) {
                            Get.toNamed(signup);
                          } else {
                            _currentIndex + 1;
                          }
                        })
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
