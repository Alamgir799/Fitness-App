import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ExecrisePage extends StatefulWidget {
  const ExecrisePage({super.key});

  @override
  State<ExecrisePage> createState() => _ExecrisePageState();
}

class _ExecrisePageState extends State<ExecrisePage> {
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
                itemCount: 5??0,
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
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwXMOu9GusK1SZBlvy5r39gTeW6M2QEa54Uw&usqp=CAU"
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
                }),
          ),
          SizedBox(height: 10.h),
          SizedBox(height: 15.h),
          Container(
            height: 400.h,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: EdgeInsets.only(left: 16.w, top: 16),
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
                                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLklL6q5iaxovBl-nFYI3ozXh3TidQKfV3Pw&usqp=CAU"),
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