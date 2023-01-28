import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class customHomeWidget extends StatelessWidget {
  String title;
  String img;
  String item_title;
  var onTab;

  customHomeWidget(
      {required this.title, required this.img, required this.item_title,required this.onTab,});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(top: 16.sp, left: 12, bottom: 10.w),
            child: Text(
              title,
              style: TextStyle(fontSize: 18.sp,),
            )),
        InkWell(
          onTap: onTab,
          child: Container(
            height: 160.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10.w),
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
                  );
                }),
          ),
        ),
      ],
    );
  }
}
