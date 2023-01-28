// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'dart:ui';
import 'package:fitness/const/app_colors.dart';
import 'package:fitness/const/app_strings.dart';
import 'package:fitness/ui/route/route.dart';
import 'package:fitness/ui/styles/styles.dart';
import 'package:fitness/ui/widgets/customeTextField.dart';
import 'package:fitness/ui/widgets/custome_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  RxBool _passwordVisible = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRINkujd01yjz-ChOGz51DsyHqxVqXYJArWTYpNfD0nHhF5V3p0RikGWBGQOl7wCgSatT8&usqp=CAU",
                fit: BoxFit.cover,
              ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
              ),
              Positioned(
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.w, right: 25.w),
                    child: Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20),
                          child: Form(
                            key: _formKey,
                            autovalidateMode: AutovalidateMode.always,
                            child: Column(
                              children: [
                                customFormField(TextInputType.emailAddress,
                                    _emailController, context, AppStrings.email, (value) {
                                      if (value!.isEmpty) {
                                        return ("Please Enter Your Email");
                                      }
                                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                          .hasMatch(value)) {
                                        return ("Please Enter a valid email");
                                      }
                                      return null;
                                    },
                                    prefixIcon: Icon(
                                      Icons.email_outlined,
                                      size: 20.w,
                                    )),
                                Obx(
                                      () => customFormField(
                                      TextInputType.text,
                                      _passwordController,
                                      context,
                                      AppStrings.passWord,
                                          (value) {
                                        if (value == null || value.isEmpty) {
                                          return "this field can't be empty";
                                        }  else if (value.length < 8) {
                                          return "password must be 8 digit";
                                        }
                                        return null;
                                      },
                                      obscureText: !_passwordVisible.value,
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        size: 20.w,
                                      ),
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            _passwordVisible.value =
                                            !_passwordVisible.value;
                                          },
                                          icon: Icon(
                                            _passwordVisible.value
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            size: 20.w,
                                          ))),
                                ),
                                fitnessButton(AppStrings.signIn, () {
                                  Get.toNamed(bottomNav);
                                  // if (_formKey.currentState!.validate()) {
                                  // }else{
                                  //   Utils().toastMessage(AppStrings.somethingRang);
                                  // }
                                }),
                                SizedBox(
                                  height: 5.h,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(forgot);
                                  },
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      AppStrings.forgetPassword,
                                      style: TextStyle(color: AppColors.buttonColor),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Center(
                                  child: RichText(
                                      text: TextSpan(
                                          text: AppStrings.doNotHaveAnyAccount,
                                          style: AppStyles().richTextStyle,
                                          children: [
                                            TextSpan(
                                              text: AppStrings.signUp,
                                              style: AppStyles().richTextStyleTwo,
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () => Get.toNamed(signup),
                                            ),
                                          ])),
                                ),
                                SizedBox(
                                  height: 10.h,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          )),
    );

  }
}
