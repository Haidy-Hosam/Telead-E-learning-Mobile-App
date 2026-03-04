import 'package:e_learning_mobile_app/Core/CommonWidgets/extension.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/iconproject.dart';
import 'package:e_learning_mobile_app/Core/Constans/AppImage.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';

import 'package:e_learning_mobile_app/Features/Explore/listdata/listdata.dart';
import 'package:e_learning_mobile_app/Features/Explore/widgets/button_contaner_profil.dart';
import 'package:e_learning_mobile_app/Features/Explore/widgets/commentw.dart';
import 'package:e_learning_mobile_app/Features/Explore/widgets/container_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MentorDetails extends StatefulWidget {
  const MentorDetails({super.key});

  @override
  State<MentorDetails> createState() => _MentorDetailsState();
}

class _MentorDetailsState extends State<MentorDetails> {
  int selectindex = 0;
  late List<bool> isSaved;
  @override
  void initState() {
    isSaved = List.generate(Listdata.images.length, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,

        backgroundColor: AppColors.whiteColor,

        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(IconsApp.iconBack),
          padding: EdgeInsets.all(10),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: AppColors.blackColor.withValues(alpha: 0.15),
                  blurRadius: 15,
                  spreadRadius: 5,
                ),
              ],
            ),
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.4,
            child: Column(
              children: [
                ClipOval(
                  child: SvgPicture.asset(
                    AppImages.imageblack,
                    width: 120,
                    height: 120,
                  ),
                ),
                8.h,
                Text(
                  "Christopher J. Levin",
                  style: TextStyles.subtitle.copyWith(
                    fontSize: 25,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Graphic Designer At Google",
                  style: TextStyles.caption.copyWith(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                10.h,
                Padding(
                  padding: const EdgeInsets.only(right: 69, left: 69),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "26",
                            style: TextStyles.body.copyWith(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          2.h,
                          Text(
                            "Courses",
                            style: TextStyles.caption.copyWith(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            "15800",
                            style: TextStyles.body.copyWith(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          2.h,
                          Text(
                            "Students",
                            style: TextStyles.caption.copyWith(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            "8750",
                            style: TextStyles.body.copyWith(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          2.h,
                          Text(
                            "Ratings",
                            style: TextStyles.caption.copyWith(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                20.h,
                Padding(
                  padding: const EdgeInsets.only(right: 30, left: 30),
                  child: Row(
                    children: [
                      ButtonContanerProfil(
                        text: "Follow",
                        colorText: AppColors.blackColor,
                        colorBorder: AppColors.gray.withValues(alpha: 0.1),
                        colorContainer: AppColors.lightBlue,
                      ),
                      Spacer(),
                      ButtonContanerProfil(
                        text: "Message",
                        colorText: AppColors.whiteColor,
                        colorBorder: AppColors.primaryColor,
                        colorContainer: AppColors.primaryColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 19,
                  right: 19,
                  top: 15,
                  bottom: 34,
                ),
                child: Container(
                  width: 360,
                  height: 490,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.backgraund,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.blackColor.withValues(alpha: 0.1),
                        blurRadius: 12,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 27,
                          left: 27,
                          top: 22,
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          "Sed quanta s alias nunc tantum possitne tanta Nec vero sum nescius esse utilitatem in historia non modo voluptatem.",
                          style: TextStyles.caption.copyWith(
                            fontSize: 13,
                            color: AppColors.gray,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          ContainerButton(
                            text: "Couses",
                            selectedindex: 0,
                            ontap: (index) {
                              setState(() {
                                selectindex = index;
                              });
                            },
                            colorbord: selectindex == 0
                                ? AppColors.lightBlue
                                : AppColors.lightBlueBg,
                            colorcontainer: selectindex == 0
                                ? AppColors.lightBlueBg
                                : AppColors.lightBlue,
                          ),
                          ContainerButton(
                            text: "Ratings",
                            selectedindex: 1,
                            ontap: (index) {
                              setState(() {
                                selectindex = index;
                              });
                            },
                            colorbord: selectindex == 1
                                ? AppColors.lightBlue
                                : AppColors.lightBlueBg,
                            colorcontainer: selectindex == 1
                                ? AppColors.lightBlueBg
                                : AppColors.lightBlue,
                          ),
                        ],
                      ),
                      selectindex == 0
                          ? Expanded(
                              child: ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      right: 20,
                                      left: 20,
                                      top: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 130,
                                          height: 130,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              16,
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              16,
                                            ),
                                            child: Image.asset(
                                              AppImages.blackimage_png,
                                            ),
                                          ),
                                        ),
                                        12.w,
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    maxLines: 1,
                                                    Listdata.title[index],
                                                    style: TextStyles.caption
                                                        .copyWith(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color:
                                                              AppColors.orange,
                                                        ),
                                                  ),
                                                  Spacer(),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        isSaved[index] =
                                                            !isSaved[index];
                                                      });
                                                    },
                                                    child: SvgPicture.asset(
                                                      isSaved[index]
                                                          ? IconsApp
                                                                .iconsaveenable
                                                          : IconsApp.iconsave,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              10.h,
                                              Text(
                                                Listdata.nameCorses[index],

                                                style: TextStyles.body
                                                    .copyWith(
                                                      color:
                                                          AppColors.blackColor,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                maxLines: 1,
                                              ),
                                              4.h,
                                              Row(
                                                children: [
                                                  Text(
                                                    maxLines: 1,
                                                    Listdata.prize[index],
                                                    style: TextStyles.body
                                                        .copyWith(
                                                          color: AppColors
                                                              .primaryColor,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                  ),
                                                  5.w,
                                                  Text(
                                                    maxLines: 1,
                                                    Listdata
                                                        .prizeprimary[index],
                                                    style: TextStyles.body
                                                        .copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          fontSize: 13,
                                                          color: AppColors.gray,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              5.h,
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star_outlined,
                                                    color: Colors.orangeAccent,
                                                    size: 15,
                                                  ),
                                                  Text(
                                                    maxLines: 1,
                                                    Listdata.evaluation[index],
                                                    style: TextStyles.caption
                                                        .copyWith(
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                  ),
                                                  16.w,
                                                  Text(
                                                    maxLines: 1,
                                                    "|",
                                                    style: TextStyles.caption
                                                        .copyWith(
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                  ),
                                                  16.w,
                                                  Text(
                                                    maxLines: 1,
                                                    Listdata.numorder[index],
                                                    style: TextStyles.caption
                                                        .copyWith(
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      10.h,
                                      Divider(indent: 20, endIndent: 20),
                                    ],
                                  );
                                },
                                itemCount: 2,
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                                left: 20,
                              ),
                              child: Column(
                                children: [
                                  10.h,
                                  Commentw(
                                    image: AppImages.imageinstractor,
                                    name: "Heather S. McMullen",
                                    text:
                                        "The Course is Very Good dolor sit amet, con sect tur adipiscing elit. Naturales divitias dixit parab les esse..",
                                    time: "2 Weeks Agos",
                                    num: "760",
                                  ),

                                  Commentw(
                                    image: AppImages.imageinstractor,
                                    name: "Natasha B. Lambert",
                                    text:
                                        "The Course is Very Good dolor sit amet, con sect tur adipiscing elit. Naturales divitias dixit parab les esse..",
                                    time: "2 Weeks Agos",
                                    num: "918",
                                  ),
                                ],
                              ),
                            ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
