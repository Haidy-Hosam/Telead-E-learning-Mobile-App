import 'package:e_learning_mobile_app/Core/CommonWidgets/icon_elevated_button.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/primary_buttom.dart';
import 'package:e_learning_mobile_app/Core/Constans/AppImage.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Registure_Now extends StatelessWidget {
  const Registure_Now({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppImages.logosvg2,
                width: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 50),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Getting Started.!",
                  style: TextStyles.headline.copyWith(fontSize: 25),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Create an Account to Continue your allCourses",
                  style: TextStyles.body.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 30),
              PrimaryButtom(title: 'Sign Up', onPressed: () {}, isStartAligned: false),
              SizedBox(height: 30), 
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Or Continue With",
                  style: TextStyles.subtitle.copyWith(color: AppColors.gray),
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconElevatedButton( 
                      imagePath: AppImages.googlecoloredsvg,
                    ),
                    SizedBox(width: 60),
                    IconElevatedButton( 
                      imagePath: AppImages.applecoloredsvg,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
