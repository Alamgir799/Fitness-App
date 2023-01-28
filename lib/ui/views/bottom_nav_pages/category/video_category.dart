import 'package:fitness/const/app_strings.dart';
import 'package:fitness/ui/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VideoCategoryScreen extends StatefulWidget {
  @override
  State<VideoCategoryScreen> createState() => _VideoCategoryScreenState();
}

class _VideoCategoryScreenState extends State<VideoCategoryScreen> {
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
        centerTitle: true,
        title: Text(
          AppStrings.category,
        ),
      ),
      body: NestedScrollView(
        controller: ScrollController(keepScrollOffset: true),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverList(
              delegate: SliverChildListDelegate([
              ]),
            ),
          ];
        },
        body: Padding(
          padding: EdgeInsets.only(left: 10.w, right: 10.w),
          child: GridView.builder(
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (_, i) {
                return InkWell(
                  onTap: () {
                    Get.to(videoDetails);
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
                            ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOdZ3Oisrvwfr3GXUYGy9p1OUVdifKLNMliDu49-pEWKzqXbjg-5GdzhEp84vcN4-nxnY&usqp=CAU")),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 48.h, left: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(AppStrings.categoryTitle,
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
