import 'package:e_learning_mobile_app/Core/CommonWidgets/iconproject.dart';
import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarV1Flutter extends StatelessWidget implements PreferredSizeWidget {
  const AppBarV1Flutter({super.key, required this.title, this.actionFlag = false});

  final String title;
  final bool actionFlag;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back),
      ),
      title: Text(title, style: AppTextStyles.headline.copyWith(fontSize: 21)),
      actions: [
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

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
