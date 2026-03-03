import 'package:e_learning_mobile_app/Core/CommonWidgets/app_bar_v2_custom.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/custom_toggle_tabs.dart';
import 'package:e_learning_mobile_app/Features/Categories/widgets/online_course_item.dart';
import 'package:e_learning_mobile_app/Features/Categories/widgets/mentor_item.dart';
import 'package:flutter/material.dart';

class OnlineCoursesView extends StatefulWidget {
  const OnlineCoursesView({super.key});

  @override
  State<OnlineCoursesView> createState() => _OnlineCoursesViewState();
}

class _OnlineCoursesViewState extends State<OnlineCoursesView> {
  int curTab = 0;
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
              TextField(
                decoration: InputDecoration(
                  hint: Text('blablabla'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
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
                  Text('Result for “Graphic Design”'),
                  Row(
                    spacing: 5,
                    children: [
                      Text(curTab == 0 ? '2480 Founds' : '18 Founds'),
                      Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) =>
                      curTab == 0 ? OnlineCourseItem() : MentorItem(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
