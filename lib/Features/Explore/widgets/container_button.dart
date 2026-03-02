import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    super.key,
    required this.colorbord,
    required this.colorcontainer,
    required this.text,
    required this.selectedindex,
    required this.ontap,
  });
  final Color colorbord;
  final Color colorcontainer;
  final String text;
  final int selectedindex;
  final Function(int) ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>ontap(selectedindex),

      child: Container(
        width: 180,
        height: 52,
        decoration: BoxDecoration(
          color: colorcontainer,
          border: Border.all(width: 3, color: colorbord),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyles.caption.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
            ),
          ),
        ),
      ),
    );
  }
}
