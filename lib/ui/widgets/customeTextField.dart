import 'package:fitness/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customFormField(
  keyboardtype,
  controller,
  context,
  hinttext,
  validator, {
  bool obscureText = false,
  suffixIcon,
  prefixIcon,
  prefixStyle,
}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 20.h),
    child: TextFormField(
      keyboardType: keyboardtype,
      style: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
        color: AppColors.buttonColor
          ),
      controller: controller,
      obscureText: obscureText,
      textInputAction: TextInputAction.next,
      validator: validator,
      maxLines: 1,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(15, 15, 20, 15),
        suffixIcon: suffixIcon,
        prefix: prefixIcon,
        prefixStyle: prefixStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrange),
          borderRadius: BorderRadius.circular(10.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.buttonColor),
        ),
        hintText: hinttext,
        hintStyle: TextStyle(
            fontSize: 15.sp, fontWeight: FontWeight.w400,color:AppColors.buttonColor),
      ),
    ),
  );
}
