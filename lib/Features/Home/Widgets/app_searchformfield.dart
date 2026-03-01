import 'package:flutter/material.dart';

class AppSearchFormField extends StatelessWidget {
  const AppSearchFormField({
    super.key,
    required this.title,
    required this.prefix,
     this.sufix,
    this.keyboardType = TextInputType.text,
  });
  final String title;
  final Widget prefix;
  final Widget? sufix;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      
      decoration: InputDecoration(  
        prefixIcon: prefix,
        suffixIcon: sufix,
        labelText: title,
      ),
    );
  }
}
