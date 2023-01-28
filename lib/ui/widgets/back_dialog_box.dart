import 'package:fitness/const/app_strings.dart';
import 'package:fitness/ui/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BackDialogBox extends StatelessWidget {
  const BackDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(
        AppStrings.closeApplication,
        style: TextStyle(fontSize: 14.sp),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: Text(AppStrings.no),
        ),
        TextButton(
          onPressed: () {
            Get.toNamed(login);
          },
          child: Text(AppStrings.yes),
        ),
      ],
    );
  }
}