import 'package:e_learning_mobile_app/Core/functions/navigations.dart';
import 'package:e_learning_mobile_app/Features/Auth/Login/Widget/RememberMe_sqare.dart';
import 'package:e_learning_mobile_app/Features/Auth/Registure%20Now/registure_now_screen.dart';
import 'package:e_learning_mobile_app/Features/Auth/Widgets/app_passformfield.dart';
import 'package:e_learning_mobile_app/Features/Auth/Widgets/app_textformfield.dart';
import 'package:e_learning_mobile_app/Features/Auth/Widgets/auth_redirect_text.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/icon_elevated_button.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/primary_button.dart';
import 'package:e_learning_mobile_app/Core/Constans/AppImage.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:e_learning_mobile_app/Features/Forgot%20Password/Page/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    "Let’s Sign In.!",
                    style: TextStyles.headline.copyWith(fontSize: 25),
                  ),
                ),
                SizedBox(height: 10),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Login to Your Account to Continue your Courses",
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
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RemembermeSqare(),
                    TextButton(
                      onPressed: () {
                        pushTo(context, ForgotPassword());
                      },
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      child: Text('Forgot Password?'),
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                PrimaryButton(title: 'Sign In', onPressed: () {}),
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

                AuthRedirectText(
                  first: "Don’t have an Account?",
                  sec: ' SIGN UP',
                  onTap: () {
                    pushReplacement(context, Registure_Now());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
