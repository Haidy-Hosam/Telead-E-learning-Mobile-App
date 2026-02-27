import 'package:e_learning_mobile_app/Core/CommonWidgets/extension.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/iconproject.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:e_learning_mobile_app/Features/Explore/listImag.dart';
import 'package:e_learning_mobile_app/Features/Explore/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PopularCourses extends StatefulWidget {
  const PopularCourses({super.key});

  @override
  State<PopularCourses> createState() => _PopularCoursesState();
}

class _PopularCoursesState extends State<PopularCourses> {
  late List<bool> isSaved;
  @override
  void initState() {
    isSaved = List.generate(Listdata.images.length, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //scaffold
    return Scaffold(
      backgroundColor: AppColors.backgraund,
      //AppBar
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
          onPressed: () {},
          icon: SvgPicture.asset(IconsApp.iconBack),
        ),

        leadingWidth: 80,

        title: Text(
          "Popular Courses",
          style: TextStyles.subtitle.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.blackColor,
          ),
        ),
      ),
      //body
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            57.h,
            //listview
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return 16.h;
                },
                itemCount: Listdata.images.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.blackColor.withValues(alpha: 0.05),
                          spreadRadius: 0,
                          blurRadius: 12,
                          offset: const Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            color: AppColors.blackColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                            child: Image.asset(
                              Listdata.images[index],
                              width: 130,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        14.w,
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(
                                      maxLines: 1,
                                      Listdata.title[index],
                                      style: TextStyles.caption.copyWith(
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.orange,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 20,
                                      top: 15,
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          isSaved[index] = !isSaved[index];
                                        });
                                      },
                                      child: SvgPicture.asset(
                                        isSaved[index]
                                            ? IconsApp.iconsaveenable
                                            : IconsApp.iconsave,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              10.h,
                              Text(
                                Listdata.nameCorses[index],
                                style: TextStyles.body.copyWith(
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              4.h,
                              Row(
                                children: [
                                  Text(
                                    maxLines: 1,
                                    Listdata.prize[index],
                                    style: TextStyles.body.copyWith(
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  5.w,
                                  Text(
                                    maxLines: 1,
                                    Listdata.prizeprimary[index],
                                    style: TextStyles.body.copyWith(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 13,
                                      color: AppColors.gray,
                                      fontWeight: FontWeight.w800,
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
                                    style: TextStyles.caption.copyWith(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  16.w,
                                  Text(
                                    maxLines: 1,
                                    "|",
                                    style: TextStyles.caption.copyWith(
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  16.w,
                                  Text(
                                    maxLines: 1,
                                    Listdata.numorder[index],
                                    style: TextStyles.caption.copyWith(
                                      fontWeight: FontWeight.w800,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
