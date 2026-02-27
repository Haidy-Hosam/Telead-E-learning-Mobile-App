import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class AuthRedirectText extends StatelessWidget {
  const AuthRedirectText({
    super.key,
    required this.first,
    required this.sec ,
    required this.onTap
  });

final String first;
final String sec;
final VoidCallback onTap ;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: first,
        style: TextStyles.body.copyWith(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        children: [
          TextSpan(
            text: sec,
            style: TextStyle(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w800,
              fontSize: 15,
              decoration: TextDecoration.underline,
              decorationThickness: 2,
            ),
                        recognizer: TapGestureRecognizer()
              ..onTap = onTap,
          ),
          
        ],
      ),
    );
  }
}
