import 'package:e_learning_mobile_app/Core/Constans/AppImage.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:e_learning_mobile_app/Features/Home/Widgets/app_searchformfield.dart';
import 'package:e_learning_mobile_app/Features/Home/Widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 30),
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
            SizedBox(height: 30),
            AppSearchFormField(
              title: 'Search for...',
              prefix: Icon(Icons.search, color: AppColors.gray),
              sufix: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(AppImages.filtter_svg),
              ),
            ),
            SizedBox(height: 30),
            Image.asset(AppImages.OFFER),
            SizedBox(height: 30),

            SectionHeader(title: 'Categories'),
            SizedBox(height: 20),
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
            SizedBox(height: 20),

            SectionHeader(title: 'Polupar Courses'),
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
            SizedBox(height: 25),

            SectionHeader(title: 'Top Mentor'),
            // SizedBox(
            //   height: 140,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: mentors.length,
            //     itemBuilder: (context, index) {
            //       return _buildTopMentorCard(mentors[index].name);
            //     },
            //   ),
            // ),
          ],
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

// Widget _buildTopMentorCard(String name) {
//   return Padding(
//     padding: const EdgeInsets.only(right: 16),
//     child: Column(
//       children: [
//         Container(
//           height: 90,
//           width: 90,
//           decoration: BoxDecoration(
//             color: Colors.black,
//             borderRadius: BorderRadius.circular(20),
//           ),
//         ),
//         const SizedBox(height: 8),
//         Text(
//           name,
//           style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
//         ),
//       ],
//     ),
//   );
// }
