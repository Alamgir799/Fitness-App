import 'package:fitness/const/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
   TextStyle richTextStyle =
   TextStyle(
     fontSize: 14.sp,
     color: AppColors.buttonColor,
     fontWeight: FontWeight.w400,
   );
   TextStyle richTextStyleTwo =
   TextStyle(
       fontSize: 16.sp,
       fontWeight: FontWeight.w500,
     color: AppColors.buttonColor,
   );
   TextStyle onbordingDescriptionTextStyle =
   TextStyle(
       fontSize: 16.sp,
       fontWeight: FontWeight.w500,
   );
   TextStyle onbordingTitleTextStyle =
   TextStyle(
       fontSize: 22.sp,
       fontWeight: FontWeight.w500,
   );
}
