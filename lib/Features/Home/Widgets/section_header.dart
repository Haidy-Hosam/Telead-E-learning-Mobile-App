import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';
import 'package:e_learning_mobile_app/Core/functions/navigations.dart';
import 'package:e_learning_mobile_app/Features/Categories/views/online_courses_view.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.title, this.onPressed});

  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.body.copyWith(
            fontWeight: FontWeight.w900,
            fontSize: 18,
          ),
        ),
        Row(
          children: [
            TextButton(
              onPressed: onPressed
              ,
              child: Text(
                "SEE ALL",
                style: TextStyles.body.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColors.primaryColor,
              size: 15,
            ),
          ],
        ),
      ],
    );
  }
}
