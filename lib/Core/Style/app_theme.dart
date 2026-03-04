import 'package:e_learning_mobile_app/Core/Constans/AppFonts.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    fontFamily: AppFonts.Mulish,
    scaffoldBackgroundColor: AppColors.backgraund,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColors.blackColor),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      onSurface: AppColors.blackColor, // الديفولت بتاع لون اي تيكست عندنا
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.whiteColor,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.backgraund,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.gray,
      // showSelectedLabels: false,
      selectedLabelStyle: TextStyles.body.copyWith(
        color: AppColors.primaryColor,
        fontSize: 12,
      ),
      unselectedLabelStyle: TextStyles.body.copyWith(
        color: AppColors.gray,
        fontSize: 10,
      ),
    ),
  );
}
