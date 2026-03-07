import 'package:e_learning_mobile_app/Core/Constans/app_image.dart';
import 'package:e_learning_mobile_app/Core/Style/app_colors.dart';
import 'package:e_learning_mobile_app/Features/Auth/Lets_You_In/lets_you_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LetsYouIn()),
        );
      }
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
            Image.asset(AppImages.oval, width: 280),
            Image.asset(AppImages.shape, width: 370),
            SvgPicture.asset(AppImages.logosvg, width: 100, fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
