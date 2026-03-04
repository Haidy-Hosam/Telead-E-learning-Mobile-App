import 'package:e_learning_mobile_app/Core/CommonWidgets/extension.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';
import 'package:flutter/material.dart';

class Commentw extends StatelessWidget {
  const Commentw({
    super.key,
    required this.image,
    required this.name,
    required this.text,
    required this.time,
    required this.num,
  });
  final String image;
  final String name;
  final String text;
  final String time;
  final String num;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipOval(child: Image.asset(image, width: 46, height: 46)),
        10.w,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.body.copyWith(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 26,
                    decoration: BoxDecoration(
                      color: AppColors.lightBlue,
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(
                        color: AppColors.primaryColor,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.star, size: 14, color: Colors.orange),
                        2.w,
                        Text(
                          "4.5",
                          style: TextStyles.caption.copyWith(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              8.h,
              Text(
                text,
                style: TextStyles.caption.copyWith(
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              8.h,
              Row(
                children: [
                  const Icon(Icons.favorite, color: Colors.red),
                  8.w,
                  Text(
                    num,
                    style: TextStyles.caption.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  22.w,
                  Text(
                    time,
                    style: TextStyles.caption.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              24.h,
            ],
          ),
        ),
      ],
    );
  }
}
