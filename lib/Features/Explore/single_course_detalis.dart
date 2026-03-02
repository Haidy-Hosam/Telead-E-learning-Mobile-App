import 'package:e_learning_mobile_app/Core/CommonWidgets/extension.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/iconproject.dart';
import 'package:e_learning_mobile_app/Core/Constans/AppImage.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:e_learning_mobile_app/Features/Explore/widgets/containar_detalis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingleCourseDetalis extends StatefulWidget {
  const SingleCourseDetalis({super.key});

  @override
  State<SingleCourseDetalis> createState() => _SingleCourseDetalisState();
}

class _SingleCourseDetalisState extends State<SingleCourseDetalis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(IconsApp.iconBack),
          padding: EdgeInsets.only(left: 35),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.4,
            decoration: BoxDecoration(
              color: AppColors.blackColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Image.asset(AppImages.blackimage_png),
          ),
          //detalis
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5, left: 5),
                    child: ContainarDetalis(),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      left: 34,
                      right: 34,
                      bottom: 34,
                    ),
                    child: Column(
                      children: [
                        25.h,
                        Row(
                          children: [
                            Text(
                              "Instructor",
                              style: TextStyles.subtitle.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          //
        ],
      ),
    );
  }
}
