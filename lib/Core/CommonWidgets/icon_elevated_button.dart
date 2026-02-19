import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconElevatedButton extends StatelessWidget {
  const IconElevatedButton({super.key, required this.imagePath});

  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(10),
        backgroundColor: Colors.white, // Button color
      ),
      child: SvgPicture.asset(
        imagePath,
        height: 35,
        width: 35,
      ),
    );
  }
}
