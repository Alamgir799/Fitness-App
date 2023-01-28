import 'package:fitness/const/app_strings.dart';
import 'package:fitness/ui/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../theme/app_theme.dart';



class ProfileDetails extends StatefulWidget {
  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  //final _auth = FirebaseAuth.instance;

  final TextEditingController emailController = new TextEditingController();
  RxBool darkMode = false.obs;
  //final box = GetStorage();

  Future logOut(context) async {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(AppStrings.sureDelete),
          content: Row(
            children: [
              ElevatedButton(
                onPressed: () async {
                  // await FirebaseAuth.instance.signOut().then(
                  //       (value) => Fluttertoast.showToast(
                  //       msg: "Logout Successfull."),
                  // );
                  // await box.remove('uid');
                  // Get.toNamed(splash);
                },
                child: const Text(AppStrings.yes),
              ),
              SizedBox(
                width: 10.w,
              ),
              ElevatedButton(
                onPressed: () => Get.back(),
                child: const Text(AppStrings.no),
              ),
            ],
          ),
        ));
  }

  Future delete(context) async {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(AppStrings.sureDelete),
          content: Row(
            children: [
              ElevatedButton(
                onPressed: () async {
                  // await FirebaseAuth.instance.signOut().then(
                  //       (value) => Fluttertoast.showToast(
                  //       msg: "Delete Successfull."),
                  // );
                  // await box.remove('uid');
                  // Get.toNamed(splash);
                },
                child: const Text(AppStrings.yes),
              ),
              SizedBox(
                width: 10.w,
              ),
              ElevatedButton(
                onPressed: () => Get.back(),
                child: const Text(AppStrings.no),
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              children: [
                //for circle avtar image

                SizedBox(height: 50.h),
                Container(
                  width: MediaQuery.of(context).size.width * 0.80, //80% of width,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                         "Hello",
                        ),
                        IconButton(
                          onPressed: () {
                            //Get.to(ProfileUpdate());
                          },
                          icon: Icon(Icons.edit),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.h),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 4,
                    child: Column(
                      children: [
                        //row for each deatails

                        Divider(
                          height: 0.6,
                        ),

                        ListTile(
                          leading: Icon(Icons.topic),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(AppStrings.changeTheme),
                              Obx(
                                    () => Switch(
                                  value: darkMode.value,
                                  onChanged: (bool value) {
                                    darkMode.value = value;
                                    Get.changeTheme(darkMode.value == false
                                        ? AppTheme().lightTheme(context)
                                        : AppTheme().darkTheme(context));
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                InkWell(
                  onTap: () {
                    Get.toNamed(forgot);
                    // _auth.sendPasswordResetEmail(
                    //     email: emailController.text.toString());
                  },
                  child: Align(
                    alignment: Alignment.topRight,
                      child: Text(AppStrings.forgetPassword)),
                ),

                Spacer(),
                Container(
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => logOut(context),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.logout,
                                color: Colors.green,
                              ),
                              SizedBox(width: 10),
                              Text(
                                AppStrings.logOut,
                                style:
                                TextStyle(color: Colors.green, fontSize: 16.sp),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => delete(context),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.delete_outline,
                                color: Colors.red,
                              ),
                              SizedBox(width: 10),
                              Text(
                                AppStrings.delete,
                                style: TextStyle(
                                    color: Colors.redAccent, fontSize: 16.sp),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
