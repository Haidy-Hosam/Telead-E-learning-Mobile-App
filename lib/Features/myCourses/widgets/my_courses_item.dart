import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCourseItem extends StatelessWidget {
  const MyCourseItem({super.key, required this.completed});
  final bool completed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
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
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(16),
                ),
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
                      Text('Graphic Design'),
                      Text('Graphic Design Advanced'),
                      Text('⭐ 4.2  |  3 Hrs 06 Mins'),
                      completed
                          ? Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'View Certificate',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )
                          : Row(
                              spacing: 12,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.lightGreenColor,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: LinearProgressIndicator(
                                      value: 93 / 125,
                                      backgroundColor:
                                          AppColors.lightGreenColor,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        AppColors.greenColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      minHeight: 8,
                                    ),
                                  ),
                                ),
                                Text(
                                  '93/125',
                                  style: TextStyle(color: AppColors.blackColor),
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        if (completed)
          Positioned(
            right: 20,
            top: -8,
            child: SvgPicture.asset('assets/images/check.svg'),
          ),
      ],
    );
  }
}
