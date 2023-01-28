// ignore_for_file: sort_child_properties_last

import 'dart:io';
import 'dart:ui';
import 'package:fitness/const/app_colors.dart';
import 'package:fitness/const/app_strings.dart';
import 'package:fitness/ui/route/route.dart';
import 'package:fitness/ui/styles/styles.dart';
import 'package:fitness/ui/widgets/customeTextField.dart';
import 'package:fitness/ui/widgets/custome_button.dart';
import 'package:fitness/ui/widgets/toast_message.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../widgets/background_img_property.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _nameController = TextEditingController();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  TextEditingController _phoneController = TextEditingController();

  XFile? image;

  pickGalleryImage() async {
    final ImagePicker picker = ImagePicker();
    image =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 50);
    setState(() {});
  }

  final _formkey = GlobalKey<FormState>();
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
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Form(
                          key: _formkey,
                          autovalidateMode: AutovalidateMode.always,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 40.h),
                              ),
                              Center(
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Card(
                                      child: Container(
                                        height: 100.h,
                                        width: 100.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(50.r),
                                          ),
                                        ),
                                        child: image == null
                                            ? Icon(
                                          Icons.person_outlined,
                                          size: 40.w,
                                          color: Colors.black54,
                                        )
                                            : ClipRRect(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(50.r),
                                          ),
                                          child: Image.file(
                                            File(image!.path),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50.r),
                                        ),
                                      ),
                                      elevation: 5,
                                    ),
                                    Positioned(
                                      bottom: -10,
                                      child: InkWell(
                                        onTap: () => pickGalleryImage(),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50.r),
                                        ),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.purple,
                                          radius: 20.r,
                                          child: Icon(
                                            Icons.camera_alt_outlined,
                                            size: 20.w,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              customFormField(TextInputType.name, _nameController,
                                  context, AppStrings.name, (value) {
                                    if (value == null || value.isEmpty) {
                                      return "this field can't be empty";
                                    } else {
                                      return null;
                                    }
                                  },
                                  prefixIcon: Icon(
                                    Icons.person_outline,
                                    size: 20.w,
                                  )),
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
                                    AppStrings.passWord, (value) {
                                  if (value == null || value.isEmpty) {
                                    return "this field can't be empty";
                                  } else if (value.length < 8) {
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
                              customFormField(TextInputType.name, _phoneController,
                                  context, AppStrings.name, (value) {
                                    if (value == null || value.isEmpty) {
                                      return "this field can't be empty";
                                    } else if (value.length > 11) {
                                      return "Can't be more than 11 digit.";
                                    }
                                    return null;
                                  },
                                  prefixIcon: Icon(
                                    Icons.phone,
                                    size: 20.w,
                                  )),
                              SizedBox(height: 20.h),
                              fitnessButton(AppStrings.signUp, () {
                                if (image == null) {
                                  Utils().toastMessage(AppStrings.selectImage);
                                } else if (_formkey.currentState!.validate() &&
                                    image != null) {
                                  Get.toNamed(bottomNav);
                                }
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
                                            text: AppStrings.signIn,
                                            style: AppStyles().richTextStyleTwo,
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () => Get.toNamed(login),
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
                  ))
            ],
          )),
    );
  }
}
