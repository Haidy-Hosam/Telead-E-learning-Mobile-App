
import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';
import 'package:flutter/material.dart';

class ButtonTab extends StatelessWidget {
  const ButtonTab({
    super.key,
    required this.text,
    required this.colorContainer,
    required this.colorBorder,
    required this.colorText,
    required this.w,
  });
  final String text;
  final Color colorContainer;
  final Color colorBorder;
  final Color colorText;

  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: 30,
      decoration: BoxDecoration(
        color: colorContainer,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: colorBorder, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyles.caption.copyWith(
              color: colorText,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}