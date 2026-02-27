import 'package:e_learning_mobile_app/Core/CommonWidgets/primary_button.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/functions/navigations.dart';
import 'package:e_learning_mobile_app/Features/Forgot%20Password/Page/create_new_password.dart';
import 'package:flutter/material.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:pinput/pinput.dart';
import 'dart:async';

class VerifyFogotPassword extends StatefulWidget {
  const VerifyFogotPassword({super.key});

  @override
  State<VerifyFogotPassword> createState() => _VerifyFogotPasswordState();
}

class _VerifyFogotPasswordState extends State<VerifyFogotPassword> {
  int secondsRemaining = 60;
  Timer? timer;

  final TextEditingController pinController = TextEditingController();

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    secondsRemaining = 60;
    timer?.cancel();

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsRemaining > 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gray),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(
          'Forgot Password',
          style: TextStyles.headline.copyWith(fontSize: 21),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Code has been Send to ( +1 ) ***-***-*529',
              textAlign: TextAlign.center,
              style: TextStyles.body.copyWith(
                color: AppColors.gray,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 30),

            /// OTP
            Pinput(
              controller: pinController,
              length: 4,
              defaultPinTheme: defaultPinTheme,
              keyboardType: TextInputType.none,
              onChanged: (value) {
                setState(() {});
              },
            ),

            const SizedBox(height: 20),

            /// Timer
            secondsRemaining > 0
                ? Text(
                    "Resend Code in ${secondsRemaining}s",
                    style: TextStyles.body.copyWith(
                      color: AppColors.gray,
                    ),
                  )
                : TextButton(
                    onPressed: startTimer,
                    child: const Text("Resend Code"),
                  ),

            const SizedBox(height: 30),

            PrimaryButton(
              title: 'Verify',
              onPressed: () {
                if (pinController.text.length == 4) {
                  print("Code: ${pinController.text}");
                  pushTo(context, CreateNewPassword());
                }
              },
            ),

            const SizedBox(height: 40),

            /// Number Pad
            _buildNumberPad(),
          ],
        ),
      ),
    );
  }

  Widget _buildNumberPad() {
    return Column(
      children: [
        _numberRow(1, 2, 3),
        _numberRow(4, 5, 6),
        _numberRow(7, 8, 9),
        const SizedBox(height: 15),
        Row(
          children: [
            _numberButton('*'),
            _numberButton(0),
            Expanded(
              child: IconButton(
                onPressed: () {
                  if (pinController.text.isNotEmpty) {
                    setState(() {
                      pinController.text = pinController.text
                          .substring(0, pinController.text.length - 1);
                    });
                  }
                },
                icon: const Icon(Icons.backspace_outlined),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _numberRow(int a, int b, int c) {
    return Row(
      children: [
        _numberButton(a),
        _numberButton(b),
        _numberButton(c),
      ],
    );
  }

  Widget _numberButton(dynamic number) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (pinController.text.length < 4 && number != '*') {
            setState(() {
              pinController.text += number.toString();
            });
          }
        },
        child: Container(
          height: 65,
          alignment: Alignment.center,
          child: Text(
            "$number",
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}