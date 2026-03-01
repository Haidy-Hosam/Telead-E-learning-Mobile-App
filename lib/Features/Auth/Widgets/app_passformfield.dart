import 'package:flutter/material.dart';

class AppPassFormField extends StatefulWidget {
  const AppPassFormField({
    super.key,
    required this.title,
    this.prefix = const Icon(Icons.lock_outlined),
    this.keyboardType = TextInputType.text,
    this.suffix
  });
  final String title;
  final Icon? prefix;
  final Icon? suffix;
  final TextInputType keyboardType;

  @override
  State<AppPassFormField> createState() => _AppPassFormFieldState();
}

class _AppPassFormFieldState extends State<AppPassFormField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        prefixIcon: widget.prefix,
        suffixIcon:
            widget.suffix ??
            IconButton(
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              icon: obscureText
                  ? Icon(Icons.visibility_off_outlined)
                  : Icon(Icons.remove_red_eye_rounded),
            ),
        labelText: widget.title,
      ),
    );
  }
}
