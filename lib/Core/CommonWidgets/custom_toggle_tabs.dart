import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:flutter/material.dart';

class CustomToggleTabs extends StatelessWidget {
  final List<String> tabsNames;
  final void Function(int value)? onTabChanged;
  final int curTab;

  const CustomToggleTabs({
    super.key,

    this.onTabChanged,
    required this.curTab,
    required this.tabsNames,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: List.generate(2, (index) {
        final isSelected = curTab == index;
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
                tabsNames[index],
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
