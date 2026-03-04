import 'package:e_learning_mobile_app/Core/CommonWidgets/app_bar_v2_custom.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/Style/app_text_style.dart';
import 'package:e_learning_mobile_app/Core/utils/app_lists.dart';
import 'package:e_learning_mobile_app/Features/Profile/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  int curTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: SafeArea(
          child: Column(
            children: [
              AppBarV2Custom(title: 'Profile'),

              SizedBox(height: 54),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.75,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.blackColor.withValues(alpha: 0.08),
                          offset: const Offset(0, 4),
                          blurRadius: 10,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          SizedBox(height: 75),
                          Text(
                            'James S. Hernandez',
                            style: AppTextStyles.subtitle,
                          ),
                          Text(
                            'hernandex.redial@gmail.ac.in',
                            style: AppTextStyles.caption,
                          ),
                          SizedBox(height: 26),
                          Expanded(
                            child: ListView.separated(
                              itemBuilder: (context, index) => ProfileMenuItem(
                                trailing: index == 4
                                    ? Text(
                                        'English (US)',
                                        style: AppTextStyles.caption.copyWith(
                                          color: AppColors.primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    : null,
                                icon: AppLists.profileIcons[index],
                                title: AppLists.profileTitles[index],
                                onTap: () {
                                  if (index == 0) {
                                    //nav to edit
                                  }
                                },
                              ),
                              separatorBuilder: (context, index) =>
                                  SizedBox(height: 36),
                              itemCount: 9,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    top: -37,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.greenColor,
                            width: 4,
                          ),
                        ),
                        child: ClipOval(
                          child: Image.network(
                            width: 110,
                            height: 110,
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLat8bZvhXD3ChSXyzGsFVh6qgplm1KhYPKA&s',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
