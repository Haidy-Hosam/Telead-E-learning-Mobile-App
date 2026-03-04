import 'package:e_learning_mobile_app/Core/CommonWidgets/extension.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/iconproject.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/primary_button.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';
import 'package:e_learning_mobile_app/Features/Explore/widgets/container_button.dart';
import 'package:e_learning_mobile_app/Features/Explore/widgets/sectionplay.dart';
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
                      style: AppTextStyles.caption.copyWith(
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
                      style: AppTextStyles.caption.copyWith(
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
                      style: AppTextStyles.subtitle,
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
                      style: AppTextStyles.caption.copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    8.w,
                    SvgPicture.asset(IconsApp.iconcloc, width: 19, height: 19),
                    8.w,
                    Text(
                      "42 Hours",
                      style: AppTextStyles.caption.copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$28",
                      style: AppTextStyles.body.copyWith(
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
                            style: AppTextStyles.caption.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          15.h,
                          Text(
                            "Graphic Design n a popular profession l Cur tantas regiones barbarorum pedibus obiit, maria transmi Et ne nimium beatus est; Addidisti ad extremum etiam Read More",
                            style: AppTextStyles.caption.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 20),
                      child: Column(
                        children: [
                          15.h,
                          Row(
                            children: [
                              Text(
                                "Section 01 - ",
                                style: AppTextStyles.caption.copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                " Introducation",
                                style: AppTextStyles.caption.copyWith(
                                  color: AppColors.primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "25 Mins",
                                style: AppTextStyles.caption.copyWith(
                                  color: AppColors.primaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                          10.h,
                          Sectionplay(
                            name: "Why Using Graphic De..",
                            number: "01",
                            time: "15 Mins",
                          ),
                          10.h,
                          Divider(),
                          PrimaryButton(
                            title: "Enroll Course - \$55",
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
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
