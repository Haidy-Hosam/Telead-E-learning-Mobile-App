import 'package:e_learning_mobile_app/Core/Constans/app_image.dart';
import 'package:e_learning_mobile_app/Core/Style/app_colors.dart';
import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Forgotpasscontainer extends StatelessWidget {
  const Forgotpasscontainer({
    super.key,
    required this.subtitle,
    required this.title,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          SvgPicture.asset(AppImages.greenEmailSvg),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyles.body.copyWith(color: AppColors.gray),
              ),
              Text(
                subtitle,
                style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
