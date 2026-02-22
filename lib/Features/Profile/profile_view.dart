import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Features/Transaction/transaction_item.dart';
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
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
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
                      Expanded(
                        child: ListView.separated(
                          itemBuilder: (context, index) => ProfileSectionItem(),
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 36),
                          itemCount: 9,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileSectionItem extends StatelessWidget {
  const ProfileSectionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(spacing: 14, children: [Icon(Icons.person), Text('Edit Profile')]),
        Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
