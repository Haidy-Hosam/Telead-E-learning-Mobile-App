import 'package:e_learning_mobile_app/Core/CommonWidgets/extension.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/iconproject.dart';
import 'package:e_learning_mobile_app/Core/Constans/AppImage.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';
import 'package:e_learning_mobile_app/Features/Explore/listdata/listdatainstractor.dart';
import 'package:e_learning_mobile_app/Features/Explore/widgets/commentw.dart';
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        13.h,
                        Row(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                AppImages.imageinstractor,
                                width: 54,
                                height: 54,
                              ),
                            ),
                            12.w,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "William S. Cunningha",
                                  style: TextStyles.body.copyWith(
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "Graphic Design",
                                  style: TextStyles.caption.copyWith(
                                    color: AppColors.gray,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            SvgPicture.asset(IconsApp.iconmassege),
                          ],
                        ),
                        12.h,
                        Divider(),
                        20.h,
                        Text(
                          "What You’ll Get",
                          style: TextStyles.body.copyWith(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        20.h,
                        SizedBox(
                          width: double.infinity,
                          height: 300,
                          child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return 25.h;
                            },
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 7,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  SvgPicture.asset(
                                    Instractor.icondetalis[index],
                                  ),
                                  16.w,
                                  Text(
                                    Instractor.name[index],
                                    style: TextStyles.caption.copyWith(
                                      color: AppColors.gray,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        Text(
                          "Reviews",
                          style: TextStyles.body.copyWith(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        20.h,
                        Commentw(
                          image: AppImages.imageinstractor,
                          name: "William S. Cunningham",
                          text:
                              "The Course is Very Good dolor sit amet, consect tur adipiscing elit. Naturales divitias dixit parab les esse, quod parvo",
                          time: "2 Weeks Agos",
                          num: "578",
                        ),
                        Commentw(
                          image: AppImages.imageinstractor,
                          name: "Martha E. Thompson",
                          text:
                              "The Course is Very Good dolor sit amet, consect tur adipiscing elit. Naturales divitias dixit parab les esse, quod parvo",
                          time: "2 Weeks Agos",
                          num: "578",
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
