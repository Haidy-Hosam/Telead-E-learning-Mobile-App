import 'package:e_learning_mobile_app/Core/CommonWidgets/iconproject.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarV2Custom extends StatelessWidget {
  const AppBarV2Custom({
    super.key,
    required this.title,
    this.actionFlag = false,
  });
  final String title;
  final bool actionFlag;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
            SizedBox(width: 12),
            Text(title, style: AppTextStyles.headline.copyWith(fontSize: 21)),
          ],
        ),
        if (actionFlag)
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset(
              IconsApp.iconsearcblack,
              width: 20,
              height: 20,
            ),
          ),
      ],
    );
  }
}
