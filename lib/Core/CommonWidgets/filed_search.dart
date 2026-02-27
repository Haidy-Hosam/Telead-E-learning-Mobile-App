import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FiledSearch extends StatelessWidget {
  const FiledSearch({
    super.key,
    required this.hintText,
    required this.iconPath,
  });

  final String hintText;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hint: Text(hintText, style: TextStyles.body),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: SvgPicture.asset(iconPath),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            style: BorderStyle.solid,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            style: BorderStyle.solid,
            width: 2,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            style: BorderStyle.solid,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            style: BorderStyle.solid,
            width: 2,
          ),
        ),
      ),
    );
  }
}
