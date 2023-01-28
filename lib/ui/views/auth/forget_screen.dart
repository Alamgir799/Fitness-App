import 'dart:ui';

import 'package:fitness/const/app_strings.dart';
import 'package:fitness/ui/widgets/customeTextField.dart';
import 'package:fitness/ui/widgets/custome_button.dart';
import 'package:fitness/ui/widgets/toast_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = new TextEditingController();

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
                        child: Form(
                          key: _formKey,
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
                              SizedBox(height: 40.h),
                              fitnessButton(AppStrings.send, () {
                                if (_formKey.currentState!.validate()) {
                                  return Utils().toastMessage("Success");
                                } else {
                                  return null;
                                }
                              }),
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
