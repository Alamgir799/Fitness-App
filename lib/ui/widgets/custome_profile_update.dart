import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../route/route.dart';

class CustomeProfileChallenges extends StatelessWidget {
  String title;
  String img;
  String item_title;

  CustomeProfileChallenges(
      {required this.title, required this.img, required this.item_title});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(top: 16.sp, left: 12, bottom: 10.w),
            child: Text(
              title,
              style: TextStyle(fontSize: 18.sp),
            )),
        Container(
          height: 140.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (_, i) {
                return Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(blogDetails);
                    },
                    child: Container(
                      width: 280.w,
                      height: 150.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(img),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 20.w, left: 16.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item_title,
                              style: TextStyle(
                                  color: Colors.purple, fontSize: 16.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
