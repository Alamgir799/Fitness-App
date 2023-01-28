import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealPage extends StatefulWidget {
  const MealPage({super.key});

  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(
            height: 15.h,
          ),
          Container(
            height: 200.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 120.w,
                        height: 200.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: Color(0xFF202835),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.h),
                              child: Container(
                                height: 110.h,
                                width: 110.w,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(6.r),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                     "https://www.nerdfitness.com/wp-content/uploads/2019/01/Staci-doing-parallel-bar-dip-exercise.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(top: 10.h, left: 32.w),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20.sp,
                                    color: Color(0xFFF0BE3D),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text("rating",
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(height: 15.h),
          Container(
            height: 400.h,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: EdgeInsets.only(left: 16.w, top: 10.h),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 60.h,
                            width: 60.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.r),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("https://www.muscleandfitness.com/wp-content/uploads/2015/04/bottomsupKB.jpg?w=1090&quality=86&strip=all"),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16.sp),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "name",
                              style: TextStyle(fontSize: 18.sp),
                            ),
                            SizedBox(height: 4.h),
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}