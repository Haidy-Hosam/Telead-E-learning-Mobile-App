import 'package:e_learning_mobile_app/Core/CommonWidgets/extension.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/iconproject.dart';
import 'package:e_learning_mobile_app/Core/Constans/AppImage.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';
import 'package:e_learning_mobile_app/Features/Explore/listdata/listdatainstractor.dart';
import 'package:e_learning_mobile_app/Features/Explore/pages/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopMentors extends StatelessWidget {
  const TopMentors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: AppColors.backgraund,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AllCategorySearch()),
              );
            },
            icon: SvgPicture.asset(
              IconsApp.iconsearcblack,
              width: 20,
              height: 20,
            ),
          ),
          20.w,
        ],

        leading: IconButton(
          padding: EdgeInsets.all(0),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(IconsApp.iconBack),
        ),

        leadingWidth: 80,

        title: Text(
          "Top Mentors",
          style: TextStyles.subtitle.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.blackColor,
            fontFamily: "Mulish",
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            13.h,
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Column(children: [20.h, Divider(), 20.h]);
                },
                itemCount: 7,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        ClipOval(
                          child: SvgPicture.asset(
                            AppImages.imageblack,
                            width: 66,
                            height: 66,
                          ),
                        ),
                        11.w,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Instractor.name[index],
                              style: TextStyles.subtitle.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              Instractor.course[index],
                              style: TextStyles.body.copyWith(
                                fontFamily: "Mulish",
                                fontWeight: FontWeight.w700,
                                color: AppColors.gray,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
