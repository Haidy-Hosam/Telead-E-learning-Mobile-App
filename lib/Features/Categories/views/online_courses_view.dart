import 'package:e_learning_mobile_app/Core/CommonWidgets/app_bar_v2_custom.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/custom_toggle_tabs.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/filed_search.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/iconproject.dart';
import 'package:e_learning_mobile_app/Core/Style/app_colors.dart';
import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';
import 'package:e_learning_mobile_app/Features/Categories/widgets/online_course_item.dart';
import 'package:e_learning_mobile_app/Features/Categories/widgets/mentor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnlineCoursesView extends StatefulWidget {
  const OnlineCoursesView({super.key});

  @override
  State<OnlineCoursesView> createState() => _OnlineCoursesViewState();
}

class _OnlineCoursesViewState extends State<OnlineCoursesView> {
  List<bool> savedList = List.generate(8, (_) => false);
  int curTab = 0;
  bool saved = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBarV1Flutter(
      //   title: curTab == 0 ? 'Online Courses' : 'Mentors',
      // ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: SafeArea(
          child: Column(
            children: [
              AppBarV2Custom(title: curTab == 0 ? 'Online Courses' : 'Mentors'),
              SizedBox(height: 16),
              FiledSearch(
                hintText: 'Search for …',
                iconPath: 'assets/icons/FILTER.svg',
              ),
              SizedBox(height: 25),
              CustomToggleTabs(
                curTab: curTab,
                tabsNames: ['Courses', 'Mentors'],
                onTabChanged: (value) {
                  setState(() {
                    curTab = value;
                  });
                },
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyles.body.copyWith(
                        color: AppColors.blackColor,
                      ),
                      children: [
                        TextSpan(text: 'Result for '),
                        TextSpan(
                          text: '“Graphic Design”',
                          style: TextStyles.caption.copyWith(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      Text(
                        curTab == 0 ? '2480 Founds' : '18 Founds',
                        style: TextStyles.caption.copyWith(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) => curTab == 0
                      ? OnlineCourseItem(
                          onTap: () {
                            setState(() {
                              savedList[index] = !savedList[index];
                            });
                          },
                          icon: SvgPicture.asset(
                            savedList[index]
                                ? IconsApp.iconsaveenable
                                : IconsApp.iconsave,
                          ),
                        )
                      : MentorItem(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
