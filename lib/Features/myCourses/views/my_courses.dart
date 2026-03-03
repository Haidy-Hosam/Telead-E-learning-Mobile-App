import 'package:e_learning_mobile_app/Core/CommonWidgets/app_bar_v2_custom.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/custom_toggle_tabs.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/filed_search.dart';
import 'package:e_learning_mobile_app/Features/myCourses/widgets/my_courses_item.dart';
import 'package:flutter/material.dart';

class MyCoursesView extends StatefulWidget {
  const MyCoursesView({super.key});

  @override
  State<MyCoursesView> createState() => _MyCoursesViewState();
}

class _MyCoursesViewState extends State<MyCoursesView> {
  int curTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: SafeArea(
          child: Column(
            children: [
              AppBarV2Custom(title: 'My Courses'),
              SizedBox(height: 16),
              FiledSearch(
                hintText: 'Search for …',
                iconPath: 'assets/icons/FILTER.svg',
              ),
              SizedBox(height: 25),
              CustomToggleTabs(
                curTab: curTab,
                tabsNames: ['Completed', 'Ongoing'],
                onTabChanged: (value) {
                  setState(() {
                    curTab = value;
                  });
                },
              ),
              SizedBox(height: 22),
              Expanded(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) => curTab == 0
                      ? MyCourseItem(completed: true)
                      : MyCourseItem(completed: false),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
