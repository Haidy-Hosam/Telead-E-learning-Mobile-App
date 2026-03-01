import 'package:e_learning_mobile_app/Core/CommonWidgets/primary_button.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:e_learning_mobile_app/Core/functions/navigations.dart';
import 'package:e_learning_mobile_app/Features/Forgot%20Password/Page/verify_fogot_password.dart';
import 'package:e_learning_mobile_app/Features/Forgot%20Password/Widget/forgotpasscontainer.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text(
          'Forgot Password',
          style: TextStyles.headline.copyWith(fontSize: 21),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Select which contact details should we use \n to Reset Your Password',
                textAlign: TextAlign.center,
                style: TextStyles.body.copyWith(
                  color: AppColors.gray,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              Forgotpasscontainer(title: 'Via Email', subtitle: 'priscilla.frank26@gmail.com',),
              SizedBox(height: 15,),
              Forgotpasscontainer(title: 'Via SMS', subtitle: '( +1 ) 480-894-5529',),
              SizedBox(height: 50,),
              PrimaryButton(title: 'Continue', onPressed: () {
                pushTo(context, VerifyFogotPassword());
              },),
            ],
          ),
        ),
      ),
    );
  }
}
