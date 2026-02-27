import 'package:e_learning_mobile_app/Core/CommonWidgets/app_passformfield.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/app_textformfield.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/auth_redirect_text.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/icon_elevated_button.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/primary_button.dart';
import 'package:e_learning_mobile_app/Core/Constans/AppImage.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Registure_Now extends StatelessWidget {
  const Registure_Now({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 90,
                    vertical: 60,
                  ),
                  child: SvgPicture.asset(AppImages.logosvg2, width: 240),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Getting Started.!",
                    style: TextStyles.headline.copyWith(fontSize: 25),
                  ),
                ),
                SizedBox(height: 10),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Create an Account to Continue your allCourses",
                    style: TextStyles.body.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 30),

                AppTextFormField(
                  title: 'Email',
                  prefix: Icon(Icons.email_outlined),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20),

                AppPassFormField(
                  title: 'Password',
                  prefix: const Icon(Icons.lock_outlined),
                ),
                SizedBox(height: 20),

                Row(
                  children: [
                    SvgPicture.asset(
                      AppImages.AgreeIconsvg,
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 10),
                    const Expanded(child: Text("Agree to Terms & Conditions")),
                  ],
                ),
                const SizedBox(height: 30),

                PrimaryButton(title: 'Sign Up', onPressed: () {}),
                SizedBox(height: 10),

                Text(
                  "Or Continue With",
                  style: TextStyles.subtitle.copyWith(
                    color: AppColors.gray,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconElevatedButton(imagePath: AppImages.googlecoloredsvg),
                    SizedBox(width: 60),
                    IconElevatedButton(imagePath: AppImages.applecoloredsvg),
                  ],
                ),
                SizedBox(height: 30),

                AuthRedirectText(first: 'Already have an Account?',sec: ' SIGN IN',),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
