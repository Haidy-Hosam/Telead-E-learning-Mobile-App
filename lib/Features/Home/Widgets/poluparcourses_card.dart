import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';
import 'package:e_learning_mobile_app/Features/Home/data/popular_courses_data.dart';
import 'package:flutter/material.dart';

class Poluparcourses extends StatelessWidget {

  final PopularCoursesData course;

  const Poluparcourses({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 221, 221, 221),
            blurRadius: 6,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// الصورة
          Container(
            height: 110,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
            child: Center(
              child: Image.asset(
                course.image,
                fit: BoxFit.cover,
              ),
            ),
          ),

          /// التفاصيل
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// category + bookmark
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      course.category,
                      style: TextStyles.body.copyWith(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    Icon(
                      Icons.bookmark_border,
                      color: AppColors.primaryColor,
                    )
                  ],
                ),

                const SizedBox(height: 6),

                /// title
                Text(
                  course.title,
                  style:TextStyles.body.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                /// price + rating + students
                Row(
                  children: [

                    Text(
                      '\$${course.price}',
                      style:TextStyles.body.copyWith(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(width: 10),
                    const Text('|'),
                    const SizedBox(width: 10),

                    const Icon(Icons.star, size: 14, color: Colors.amber),

                    const SizedBox(width: 4),

                    Text(
                      course.rating.toString(),
                      style: TextStyles.body,
                    ),

                    const SizedBox(width: 10),
                    const Text('|'),
                    const SizedBox(width: 10),

                    Text(
                      course.students.toString(),
                      style:TextStyles.body,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}