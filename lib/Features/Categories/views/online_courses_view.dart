import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:e_learning_mobile_app/Features/Categories/widgets/course_item.dart';
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                spacing: 12,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                  Text(curTab == 0 ? 'Online Courses' : 'Mentors'),
                ],
              ),
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
              Row(
                spacing: 20,
                children: List.generate(
                  2,
                  (index) => Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        curTab = index;
                      }),
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: curTab == index
                              ? AppColors.greenColor
                              : AppColors.lightGreenColor,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          index == 0 ? 'Courses' : 'Mentors',
                          style: TextStyles.body.copyWith(
                            fontWeight: FontWeight.w800,
                            color: curTab == index
                                ? AppColors.whiteColor
                                : AppColors.blackColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
                      curTab == 0 ? CourseItem() : MentorItem(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
