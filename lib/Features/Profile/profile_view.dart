import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Core/utils/app_lists.dart';
import 'package:e_learning_mobile_app/Features/Profile/profile_menu_item.dart';
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 12,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back),
                      ),
                      Text('Profile'),
                    ],
                  ),
                  Icon(Icons.search),
                ],
              ),
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
                          Text('James S. Hernandez'),
                          Text('hernandex.redial@gmail.ac.in'),
                          SizedBox(height: 26),
                          Expanded(
                            child: ListView.separated(
                              itemBuilder: (context, index) => ProfileMenuItem(
                                trailing: index == 4
                                    ? Text('English (US)')
                                    : null,
                                icon: AppLists.profileIcons[index],
                                title: AppLists.profileTitles[index],
                                onTap: () {},
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
                            'https://imgs.search.brave.com/bPvYLjMcOtho6DwhZLdC4d2CUG0nDUH7hfS0X_sbKT4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNTM1/MDI3ODE4L3Bob3Rv/L3B1dHRpbmctZ3Jl/ZW4tYXQtc3Vuc2V0/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz1kMkh6cHFOLXI4/c1VCbk85S2UxbTZh/U2J0V05BN0ZkaFQ4/VjBFbFdmODRBPQ',
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
