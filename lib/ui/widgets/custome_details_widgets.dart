import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//home details page
Widget detailCustomWidget(
    like, comment, description, profile_img, name, designation) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: Column(
      children: [
        Row(
          children: [
            SizedBox(width: 8.h),
            Icon(Icons.circle, size: 10.sp,),
            SizedBox(width: 8.h),
            Text(
              like,
              style: TextStyle(fontSize: 15.sp,),
            ),
            SizedBox(width: 3.h),
            Text(
              name,
              style: TextStyle(fontSize: 15.sp),
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.comment,
                    size: 18.sp,
                  ),
                  SizedBox(width: 5.w),
                  Text(comment, style: TextStyle(fontSize: 14.sp))
                ],
              ),
            ),
          ],
        ),
        Text(
          description,
          style: TextStyle(
            color: Color(0xFF979292),
            fontSize: 12.sp,
          ),
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            Container(
              height: 60.h,
              width: 60.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(profile_img),
                ),
              ),
            ),
            SizedBox(width: 16.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "title",
                  style: TextStyle(fontSize: 16.sp),
                ),
                SizedBox(height: 4.h),
                Text(
                  designation,
                  style: TextStyle(fontSize: 13.sp),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

// media category page custom widgets
Widget mediaCustomWidget(category_img, category_title) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
    margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6.r),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(category_img),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.only(bottom: 20.h, left: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(category_title,
              style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    ),
  );
}