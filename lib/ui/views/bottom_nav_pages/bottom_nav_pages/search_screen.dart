// ignore_for_file: prefer_const_constructors

import 'package:fitness/const/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  RxString userInput = "".obs;
  RxString category = 'video'.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 16.w, right: 16.w),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  hintText: AppStrings.writeSomethingHere,
                ),
                onChanged: (value) {
                  userInput.value = value;
                  print(userInput.value);
                },
              ),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.topLeft,
                child: ToggleSwitch(
                  activeBgColor: [Colors.purple],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey[300],
                  inactiveFgColor: Colors.grey[900],
                  initialLabelIndex: 0,
                  totalSwitches: 3,
                  labels: const['Video', 'Blog', 'Podcast'],
                  onToggle: (index) {
                    index == 0
                        ? category.value = 'video'
                        : index == 1
                        ? category.value = 'blog'
                        : category.value = 'podcast';
                  },
                ),
              ),
              // Expanded(
              //     child: Obx(
              //           () => StreamBuilder(
              //           stream: FirebaseFirestore.instance
              //               .collection("items")
              //               .doc(category.value)
              //               .collection(category.value == 'video'
              //               ? 'all-video'
              //               : category.value == 'podcast'
              //               ? 'all-podcast'
              //               : 'all-blogs')
              //               .where(
              //               category.value == 'video'
              //                   ? 'video_title'
              //                   : category.value == 'podcast'
              //                   ? 'podcast_title'
              //                   : 'title',
              //               isGreaterThanOrEqualTo: userInput.value)
              //               .snapshots(),
              //           builder: (_, snapshot) {
              //             if (snapshot.hasError)
              //               //return Text('Error = ${snapshot.error}');
              //
              //               return Center(
              //                 child: Transform.scale(
              //                     scale: 0.9,
              //                     child: CircularProgressIndicator(
              //                       strokeWidth: 2,
              //                       color: Colors.purple,
              //                     )),
              //               );
              //
              //             if (snapshot.hasData) {
              //               final docs = snapshot.data!.docs;
              //               return ListView.builder(
              //                   itemCount: docs.length ?? 0,
              //                   itemBuilder: (_, i) {
              //                     final data = docs[i].data();
              //                     return InkWell(
              //                       onTap: () {
              //                         if (data['type'] == 'video') {
              //                           print('clicked');
              //                           Get.to(VideoDetailsPage(
              //                             detailsData: data,
              //                             category: 'video',
              //                             subCategory: "all-video",
              //                             documentId: data[i].id,
              //                           ));
              //                         }
              //                         if (data['type'] == 'blog') {
              //                           print('clicked');
              //                           Get.to(BlogDetaials(
              //                             detailsData: data,
              //                             category: 'blog',
              //                             subCategory: "all-blogs",
              //                             documentId: data[i].id,
              //                           ));
              //                         }
              //
              //                         if (data['type'] == 'podcast') {
              //                           print('clicked');
              //                           Get.to(
              //                             PodcastDetails(
              //                               detailsData: data,
              //                               category: 'podcast',
              //                               subCategory: "all-podcast",
              //                               documentId: data[i].id,
              //                             ),
              //                           );
              //                         }
              //                       },
              //                       child: Card(
              //                         color: Color(0xFF202835),
              //                         elevation: 5,
              //                         child: Row(children: [
              //                           SizedBox(width: 10.w),
              //                           Container(
              //                             height: 60.h,
              //                             width: 80.w,
              //                             decoration: BoxDecoration(
              //                               image: DecorationImage(
              //                                   fit: BoxFit.cover,
              //                                   image: NetworkImage(
              //                                       category.value == 'video'
              //                                           ? data['thumbnail']
              //                                           : category.value ==
              //                                           'podcast'
              //                                           ? data['thumbnail']
              //                                           : data['thumbnail']
              //                                           .toString())),
              //                             ),
              //                           ),
              //                           SizedBox(width: 10.h),
              //                           Text(
              //                             category.value == 'video'
              //                                 ? data['video_title']
              //                                 : category.value == 'podcast'
              //                                 ? data['podcast_title']
              //                                 : data['title'].toString(),
              //                             style: TextStyle(
              //                                 fontSize: 16.sp, color: Colors.white),
              //                           ),
              //                         ]),
              //                       ),
              //                     );
              //                   });
              //             }
              //
              //             return Center(
              //               child: Transform.scale(
              //                   scale: 0.9,
              //                   child: CircularProgressIndicator(
              //                     strokeWidth: 2,
              //                     color: Colors.purple,
              //                   )),
              //             );
              //           }),
              //     )),
            ],
          ),
        ),
      ),
    );
  }
}
