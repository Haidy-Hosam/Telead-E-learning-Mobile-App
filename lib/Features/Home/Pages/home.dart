import 'package:e_learning_mobile_app/Core/Constans/AppImage.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';
import 'package:e_learning_mobile_app/Core/functions/navigations.dart';
import 'package:e_learning_mobile_app/Features/Categories/views/online_courses_view.dart';
import 'package:e_learning_mobile_app/Features/Explore/pages/mentor_details.dart';
import 'package:e_learning_mobile_app/Features/Explore/pages/popular_courses.dart';
import 'package:e_learning_mobile_app/Features/Explore/pages/search.dart';
import 'package:e_learning_mobile_app/Features/Explore/pages/single_course_detalis.dart';
import 'package:e_learning_mobile_app/Features/Explore/pages/top_mentors.dart';
import 'package:e_learning_mobile_app/Features/Home/Widgets/app_searchformfield.dart';
import 'package:e_learning_mobile_app/Features/Home/Widgets/poluparcourses_card.dart';
import 'package:e_learning_mobile_app/Features/Home/Widgets/section_header.dart';
import 'package:e_learning_mobile_app/Features/Home/data/popular_courses_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> mentors = ["Sonja", "Jensen", "Victoria", "Castaldo", "Smith"];
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Ronald A. Martin',
                          style: TextStyles.headline.copyWith(
                            color: AppColors.blackColor,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          'What Would you like to learn Today?\nSearch Below.',
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(AppImages.bell_svg, width: 45, height: 45),
                ],
              ),

              const SizedBox(height: 30),

              GestureDetector(
                onTap: () {
                  pushTo(context, AllCategorySearch());
                },
                child: Hero(
                  tag: 'search',
                  child: Material(
                    child: AppSearchFormField(
                      title: 'Search for...',
                      prefix: Icon(Icons.search, color: AppColors.gray),
                      sufix: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(AppImages.filtter_svg),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              Image.asset(AppImages.OFFER),

              const SizedBox(height: 30),

              SectionHeader(
                title: 'Categories',
                onPressed: () {
                  pushTo(context, OnlineCoursesView());
                },
              ),

              const SizedBox(height: 20),

              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCategory("3D Design", false),
                    _buildCategory("Arts & Humanities", true),
                    _buildCategory("Graphic Design", false),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              SectionHeader(
                title: 'Popular Courses',
                onPressed: () {
                  pushTo(context, PopularCourses());
                },
              ),

              const SizedBox(height: 15),

              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildPopularCourses("All", false),
                    _buildPopularCourses("Graphic Design", true),
                    _buildPopularCourses("3D Design", false),
                    _buildPopularCourses("Arts & Humanities", false),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                height: 270,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: popularCoursesDatax.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: GestureDetector(
                        onTap: () => pushTo(context, SingleCourseDetalis()),
                        child: Poluparcourses(
                          course: popularCoursesDatax[index],
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 25),

              SectionHeader(
                title: 'Top Mentor',
                onPressed: () {
                  pushTo(context, TopMentors());
                },
              ),
              SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: mentors.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => pushTo(context, MentorDetails()),
                      child: _buildTopMentorCard(mentors[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCategory(String text, bool isSelected) {
  return Padding(
    padding: const EdgeInsets.only(right: 24),
    child: Text(
      text,
      style: TextStyles.body.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 15,
        color: isSelected ? AppColors.primaryColor : AppColors.gray2,
      ),
    ),
  );
}

Widget _buildPopularCourses(String text, bool isSelected) {
  return Padding(
    padding: const EdgeInsets.only(right: 12),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.greenColor : AppColors.lightGrayColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        text,
        style: TextStyles.body.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: isSelected ? AppColors.whiteColor : AppColors.gray,
        ),
      ),
    ),
  );
}

Widget _buildTopMentorCard(String name) {
  return Padding(
    padding: const EdgeInsets.only(right: 16),
    child: Column(
      children: [
        Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}
