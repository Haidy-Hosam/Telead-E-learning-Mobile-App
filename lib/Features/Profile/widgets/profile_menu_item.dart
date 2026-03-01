import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
    required this.onTap,
  });
  final IconData icon;
  final String title;
  final Widget? trailing;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(spacing: 14, children: [Icon(icon), Text(title)]),
        Row(
          spacing: 15,
          children: [trailing ?? SizedBox(), Icon(Icons.arrow_forward_ios)],
        ),
      ],
    );
  }
}
