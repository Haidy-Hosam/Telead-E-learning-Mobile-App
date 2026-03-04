


import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';
import 'package:flutter/material.dart';

class ButtonContanerProfil extends StatelessWidget {
  const ButtonContanerProfil({
    super.key,
    required this.text,
    required this.colorContainer,
    required this.colorBorder,
    required this.colorText,
    this.h,
    this.w, this.r,
  });
  final String text;
  final Color colorContainer;
  final Color colorBorder;
  final Color colorText;
  final int? h;
  final int? w;
  final int? r;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 60,
      decoration: BoxDecoration(
        color: colorContainer,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: colorBorder, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: AppTextStyles.body.copyWith(
              color: colorText,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
