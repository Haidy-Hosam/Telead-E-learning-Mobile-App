import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.imagePath, required this.title});
  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox
    (  width: double.infinity,

      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(12),
          backgroundColor:AppColors.backgraund,
          shadowColor: Colors.transparent,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
      
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromRGBO(0, 0, 0, 0.08),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Center(
                child: SvgPicture.asset(
                  imagePath,
                  width: 18,
                  height: 18,
                  fit: BoxFit.contain,
                ),
              ),
            ),
      
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyles.subtitle.copyWith(color: AppColors.gray , fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
