import 'package:e_learning_mobile_app/Core/CommonWidgets/primary_button.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:e_learning_mobile_app/Core/functions/navigations.dart';
import 'package:e_learning_mobile_app/Features/Auth/Widgets/app_passformfield.dart';
import 'package:e_learning_mobile_app/Features/Forgot%20Password/Page/verify_fogot_password.dart';
import 'package:flutter/material.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text(
          'Create New Password',
          style: TextStyles.headline.copyWith(fontSize: 21),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create Your New Password',
              textAlign: TextAlign.start,
              style: TextStyles.body.copyWith(
                color: AppColors.blackColor,
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),
            AppPassFormField(title: 'Password'),
            SizedBox(height:25),
            AppPassFormField(title: 'Password'),
        
            SizedBox(height: 50),
            PrimaryButton(
              title: 'Continue',
              onPressed: () {
                pushTo(context, VerifyFogotPassword());
              },
            ),
          ],
        ),
      ),
    );
  }
}
