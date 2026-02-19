import 'package:e_learning_mobile_app/Core/Constans/AppImage.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Features/Auth/LETS_YOU_IN.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LETS_YOU_IN()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(AppImages.Oval, width: 280),
            Image.asset(AppImages.Shape, width: 370),
            SvgPicture.asset(AppImages.logosvg, width: 100, fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
