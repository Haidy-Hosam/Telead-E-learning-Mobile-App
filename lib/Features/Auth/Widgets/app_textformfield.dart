import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.title,
    required this.prefix,
    this.keyboardType = TextInputType.text,
  });
  final String title;
  final Icon prefix;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: prefix,
        labelText: title,
      ),
    );
  }
}
