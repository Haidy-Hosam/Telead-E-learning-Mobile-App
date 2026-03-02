import 'package:e_learning_mobile_app/Core/CommonWidgets/extension.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/iconproject.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/textstyle.dart';
import 'package:e_learning_mobile_app/Features/Explore/widgets/container_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContainarDetalis extends StatefulWidget {
  const ContainarDetalis({super.key});

  @override
  State<ContainarDetalis> createState() => _ContainarDetalisState();
}

class _ContainarDetalisState extends State<ContainarDetalis> {
  int selectindex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 360,
          height: 394,
          decoration: BoxDecoration(
            color: AppColors.backgraund,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                spreadRadius: 0,
                blurRadius: 7,
                color: AppColors.blackColor.withValues(alpha: 0.3),
              ),
            ],
          ),
          child: Column(
            children: [
              55.h,
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  children: [
                    Text(
                      "Graphic Design",
                      style: TextStyles.caption.copyWith(
                        color: AppColors.orange,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.star_rounded,
                      color: Colors.amberAccent,
                      weight: 12,
                    ),
                    Text(
                      "4.2",
                      style: TextStyles.caption.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              6.h,
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Design Principles: Organizing ..",
                      style: TextStyles.subtitle,
                    ),
                  ],
                ),
              ),
              8.h,
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: [
                    SvgPicture.asset(IconsApp.iconv, width: 19, height: 19),
                    8.w,
                    Text(
                      "21 Class  |",
                      style: TextStyles.caption.copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    8.w,
                    SvgPicture.asset(IconsApp.iconcloc, width: 19, height: 19),
                    8.w,
                    Text(
                      "42 Hours",
                      style: TextStyles.caption.copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$28",
                      style: TextStyles.body.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              11.h,
              Row(
                children: [
                  ContainerButton(
                    selectedindex: 0,
                    ontap: (index) {
                      setState(() => selectindex = index);
                    },
                    text: "About",
                    colorbord: selectindex == 0
                        ? AppColors.lightBlue
                        : AppColors.lightBlueBg,
                    colorcontainer: selectindex == 0
                        ? AppColors.lightBlueBg
                        : AppColors.lightBlue,
                  ),
                  //
                  ContainerButton(
                    selectedindex: 1,
                    ontap: (index) {
                      setState(() => selectindex = index);
                    },
                    text: "Curriculcum",
                    colorbord: selectindex == 1
                        ? AppColors.lightBlue
                        : AppColors.lightBlueBg,
                    colorcontainer: selectindex == 1
                        ? AppColors.lightBlueBg
                        : AppColors.lightBlue,
                  ),
                ],
              ),

              selectindex == 0
                  ? Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          17.h,
                          Text(
                            "Graphic Design now a popular profession graphic\ndesign by off your carrer about tantas regiones\nbarbarorum pedibus obiit",
                            style: TextStyles.caption.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          15.h,
                          Text(
                            "Graphic Design n a popular profession l Cur tantas regiones barbarorum pedibus obiit, maria transmi Et ne nimium beatus est; Addidisti ad extremum etiam Read More",
                            style: TextStyles.caption.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    )
                  : Text("data"),
            ],
          ),
        ),
        //
        Positioned(
          left: 290,
          bottom: 328,
          child: SvgPicture.asset(IconsApp.iconvideo, width: 66, height: 66),
        ),
      ],
    );
  }
}
