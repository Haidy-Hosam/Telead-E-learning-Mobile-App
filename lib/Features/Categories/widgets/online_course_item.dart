import 'package:e_learning_mobile_app/Core/CommonWidgets/extension.dart';
import 'package:e_learning_mobile_app/Core/Style/app_colors.dart';
import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';
import 'package:flutter/material.dart';

class OnlineCourseItem extends StatelessWidget {
  const OnlineCourseItem({super.key, required this.icon, this.onTap});
  final void Function()? onTap;
  final Widget icon;

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
                    children: [
                      Text(
                        'Graphic Design',
                        style: TextStyles.caption.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColors.orange,
                        ),
                      ),
                      GestureDetector(onTap: onTap, child: icon),
                    ],
                  ),
                  Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    'Graphic Design Advanced',
                    style: TextStyles.body.copyWith(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      Text(
                        '\$28',
                        style: TextStyles.body.copyWith(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        '\$42',
                        style: TextStyles.body.copyWith(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 13,
                          color: AppColors.gray,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_outlined,
                        color: Colors.orangeAccent,
                        size: 15,
                      ),
                      Text(
                        maxLines: 1,
                        '4.2',
                        style: TextStyles.caption.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      16.w,
                      Text(
                        maxLines: 1,
                        "|",
                        style: TextStyles.caption.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      16.w,
                      Text(
                        maxLines: 1,
                        '7830 Std',
                        style: TextStyles.caption.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
