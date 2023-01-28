import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
               // Get.toNamed(mainMenu);
              },
              child: Text(
                "Quiz Now",
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            height: 200.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
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
                                      "",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(height: 2.w),
                                Text("name",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        )),
                                Text("nickName",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
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
                                image: NetworkImage("https://cdn.shopify.com/s/files/1/1876/4703/articles/shutterstock_1966913428_1000x.jpg?v=1633944694"),
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
                })
          ),
        ],
      ),
    );
  }
}