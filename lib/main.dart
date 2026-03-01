import 'package:e_learning_mobile_app/Core/Constans/AppFonts.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:e_learning_mobile_app/Features/Main/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
          selectedLabelStyle: TextStyles.body
              .copyWith(color: AppColors.primaryColor, fontSize: 12), 
          unselectedLabelStyle: TextStyles.body
              .copyWith(color: AppColors.gray, fontSize: 10),
      ),
      ),
      // home: Scaffold(body: ProfileView()),
      // home: Scaffold(body: LoginScreen()),
      home: Scaffold(body: MainAppScreen()),
    );
  }
}
