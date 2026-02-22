import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/utils/app_lists.dart';
import 'package:flutter/material.dart';

class CustomToggleTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  final void Function(int value)? onTabChanged;
  final int curTab;

  const CustomToggleTabs({
    super.key,
    required this.firstTab,
    required this.secondTab,
    this.onTabChanged,
    required this.curTab,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: List.generate(2, (index) {
        final isSelected = curTab == index;
        final label = AppLists.onlineCoursesTabs[index];
        return Expanded(
          child: GestureDetector(
            onTap: () {
              onTabChanged?.call(index);
            },
            child: Container(
              alignment: Alignment.center,
              height: 48,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColors.greenColor
                    : AppColors.lightGreenColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                label,
                style: TextStyle(
                  color: isSelected
                      ? AppColors.whiteColor
                      : AppColors.blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
