import 'package:e_learning_mobile_app/Core/functions/navigations.dart';
import 'package:e_learning_mobile_app/Features/Auth/Login/login_screen.dart';
import 'package:e_learning_mobile_app/Features/Auth/Widgets/auth_redirect_text.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/primary_button.dart';
import 'package:e_learning_mobile_app/Core/Constans/AppImage.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/socialButton.dart';
import 'package:e_learning_mobile_app/Features/Auth/Registure%20Now/registure_now_screen.dart';
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 80,
                ),
                child: SvgPicture.asset(
                  AppImages.logosvg2,
                  width: 220,
                  fit: BoxFit.cover,
                ),
              ),
              // SizedBox(height: 70),
              Text(
                "Let’s you in",
                style: TextStyles.headline.copyWith(fontSize: 24),
              ),
              SizedBox(height: 30),

              SocialButton(
                imagePath: AppImages.googlecoloredsvg,
                title: "Continue with Google",
              ),
              const SizedBox(height: 10),
              SocialButton(
                imagePath: AppImages.applecoloredsvg,
                title: "Continue with  Apple",
              ),

              const SizedBox(height: 60),

              Align(
                alignment: Alignment.center,
                child: Text(
                  "( or )",
                  style: TextStyles.subtitle.copyWith(color: AppColors.gray),
                ),
              ),
              const SizedBox(height: 30),

              PrimaryButton(
                title: 'Sign In with Your Account',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                isStartAligned: true,
              ),
              const SizedBox(height: 40),

              Align(
                alignment: Alignment.center,
                child: AuthRedirectText(
                  first: "Don’t have an Account?",
                  sec: ' SIGN UP',
                  onTap: () {
                    pushReplacement(context, Registure_Now());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
