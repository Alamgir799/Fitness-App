import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../widgets/custome_profile_update.dart';

class MyChallengesScreen extends StatelessWidget {
  const MyChallengesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //tabs
          CustomeProfileChallenges(
              title: "Quiz",
              img:
              "https://lh3.googleusercontent.com/oc44utPsJOPwb9IXuyZRw5zxQScglRIuMn7JkoVgZM09kg56tOtgXki58Odpz2AhUuo_0QToihqUdsHJ8rcMIBcoB6g=w1000",
              item_title: "item_title,"),
          CustomeProfileChallenges(
              title: "Exerise",
              img:
              "https://www.frontsigns.com/wp-content/uploads/2021/07/gym-Interior-design-idea.jpg",
              item_title: "item_title,"),
          CustomeProfileChallenges(
              title: "Meal",
              img:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiamWOZf0AoZ7sRgRFxacydg2JZhXHygwwWPCQXy31pDE6-aTxZh8mlKbYlNmnsJgklm4&usqp=CAU",
              item_title: "item_title,"),

          SizedBox(height: 15.h),
        ],
      ),
    );
  }
}
