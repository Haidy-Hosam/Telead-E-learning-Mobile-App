import 'package:e_learning_mobile_app/Core/CommonWidgets/extension.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/filed_search.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/iconproject.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllCategorySearch extends StatelessWidget {
  AllCategorySearch({super.key});
  final List<String> recentSearches = [
    "3D Design",
    "UI/UX Design",
    "Flutter Development",
    "Graphic Design",
    "Digital Marketing",
    "Web Development",
    "Cyber Security",
    "Motion Graphics",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(left: 25),
          onPressed: () {},
          icon: SvgPicture.asset(IconsApp.iconBack),
        ),
        title: Text(
          "Search",
          style: TextStyles.subtitle.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.blackColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 30,
          bottom: 34,
        ),
        child: Column(
          children: [
            FiledSearch(
              hintText: "Search for..",
              iconPath: IconsApp.iconSearch,
            ),
          30.h,

            Row(
              children: [
                Text(
                  "Recents Search",
                  style: TextStyles.subtitle.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "SEE ALL",
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.w800,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),

            30.h,

            Expanded(
              child: ListView.separated(
                itemCount: recentSearches.length,
                separatorBuilder: (context, index) =>
                    30.h,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        recentSearches[index],
                        style: TextStyles.body.copyWith(color: AppColors.gray),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.close_outlined),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
