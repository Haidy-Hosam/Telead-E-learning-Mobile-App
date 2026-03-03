import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:flutter/material.dart';

class OnlineCourseItem extends StatelessWidget {
  const OnlineCourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor.withValues(alpha: 0.08),
            offset: const Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(16)),
            child: Image.network(
              width: 130,
              height: 130,
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLat8bZvhXD3ChSXyzGsFVh6qgplm1KhYPKA&s',
              fit: BoxFit.fill,
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Graphic Design'), Icon(Icons.bookmark)],
                  ),
                  Text('Graphic Design Advanced'),
                  Row(
                    spacing: 5,
                    children: [
                      Text('\$28'),
                      Text(
                        '\$42',
                        style: TextStyle(
                          decorationThickness: 1,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  Text('⭐ 4.2  |  7830 Std'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
