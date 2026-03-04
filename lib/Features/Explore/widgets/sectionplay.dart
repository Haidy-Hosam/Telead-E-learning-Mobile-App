import 'package:e_learning_mobile_app/Core/CommonWidgets/extension.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/iconproject.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';



import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Sectionplay extends StatelessWidget {
  const Sectionplay({super.key, required this.name, required this.number, required this.time});
  final String name;
  final String number;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.lightBlue,
          maxRadius: 23,
          child: Text(number),
        ),
        6.w,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: AppTextStyles.caption.copyWith(
                fontSize: 16,
                color: AppColors.blackColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              time,
              style: AppTextStyles.caption.copyWith(
                fontSize: 13,
                color: AppColors.gray,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Spacer(),
        SvgPicture.asset(IconsApp.iconplay),
        // PrimaryButton(
        //   title: "Enroll Course - \$55",
        //   onPressed: () {},
        // ),
      ],
    );
  }
}

