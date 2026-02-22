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
              'https://imgs.search.brave.com/bPvYLjMcOtho6DwhZLdC4d2CUG0nDUH7hfS0X_sbKT4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNTM1/MDI3ODE4L3Bob3Rv/L3B1dHRpbmctZ3Jl/ZW4tYXQtc3Vuc2V0/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz1kMkh6cHFOLXI4/c1VCbk85S2UxbTZh/U2J0V05BN0ZkaFQ4/VjBFbFdmODRBPQ',
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
