import 'package:e_learning_mobile_app/Core/CommonWidgets/primary_buttom.dart';
import 'package:e_learning_mobile_app/Core/Constans/AppImage.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/socialButton.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/socialButton.dart';
import 'package:e_learning_mobile_app/Features/Auth/Registure%20Now.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LETS_YOU_IN extends StatelessWidget {
  const LETS_YOU_IN({super.key});

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
              SizedBox(height: 70),
              Text(
                "Let’s you in",
                style: TextStyles.headline.copyWith(fontSize: 25),
              ),
              SizedBox(height: 30),

              // socialButton(
              //   imagePath: AppImages.googlesvg,
              //   text: "Continue with Google",
              // ),
              SocialButton(
                imagePath: AppImages.googlecoloredsvg,
                title: "Continue with Google",
              ),
              const SizedBox(height: 10),
              SocialButton(
                imagePath: AppImages.applecoloredsvg,
                title: "Continue with Apple",
              ),
              // socialButton(
              //   imagePath: AppImages.applesvg,
              //   text: "Continue with Apple",
              // ),
              const SizedBox(height: 60),

              Align(
                alignment: Alignment.center,
                child: Text(
                  "(or)",
                  style: TextStyles.subtitle.copyWith(color: AppColors.gray),
                ),
              ),
              const SizedBox(height: 30),

              // primaryButtom(text: 'Sign In with Your Account',),
              PrimaryButtom(
                title: 'Sign In with Your Account',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Registure_Now()),
                  );
                },
              ),
              const SizedBox(height: 40),

              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyles.body.copyWith(color: AppColors.gray),
                    ),
                    Text(
                      "SIGN UP",
                      style: TextStyles.subtitle.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.primaryColor,
                        decorationThickness: 2,
                      ),
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
