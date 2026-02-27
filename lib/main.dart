import 'package:e_learning_mobile_app/Core/Constans/AppFonts.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Features/Auth/Splash_Screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
/*11111*/
//بداية التطبيق 
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
          onSurface: AppColors.blackColor, // الديفولت بتاع لون اي تيكت عندنا
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: AppColors.whiteColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      // home: Scaffold(body: ProfileView()),
      home: Scaffold(body: SplashScreen()),
    );
  }
}
