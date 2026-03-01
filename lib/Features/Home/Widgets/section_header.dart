import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title
  });

final String title;
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
              onPressed: () {},
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
