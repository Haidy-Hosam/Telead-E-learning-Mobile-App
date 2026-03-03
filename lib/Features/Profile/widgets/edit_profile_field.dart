import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';
import 'package:flutter/material.dart';

class EditProfileField extends StatelessWidget {
  final Icon? prefix;
  final Icon? suffix;
  final String hint;
  const EditProfileField({
    super.key,
    this.prefix,
    this.suffix,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0x1A000000),
            offset: const Offset(0, 2),
            blurRadius: 6,
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: prefix,
          hint: Text(hint),
          hintStyle: AppTextStyles.caption,
          suffixIcon: suffix,
        ),
      ),
    );
  }
}
