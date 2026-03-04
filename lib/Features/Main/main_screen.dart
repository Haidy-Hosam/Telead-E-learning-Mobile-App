import 'package:e_learning_mobile_app/Core/CommonWidgets/custom_svg_picture.dart';
import 'package:e_learning_mobile_app/Core/Constans/app_image.dart';
import 'package:e_learning_mobile_app/Core/Style/app_colors.dart';
import 'package:e_learning_mobile_app/Features/Home/Pages/home.dart';
import 'package:e_learning_mobile_app/Features/Inbox/my_inbox.dart';
import 'package:e_learning_mobile_app/Features/Profile/views/profile_view.dart';
import 'package:e_learning_mobile_app/Features/Transaction/transaction_view.dart';
import 'package:e_learning_mobile_app/Features/myCourses/views/my_courses.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreemState();
}

class _MainAppScreemState extends State<MainAppScreen> {
  int _currentIndex = 0;
  final List<Widget> _screenss = [
    HomeScreen(),
    MyCoursesView(),
    MyInbox(),
    TransactionView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _screenss[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.homeSvg,
              colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 0, 0, 0),
                BlendMode.srcIn,
              ),
            ),
            activeIcon: CustomSvgPicture(
              path: AppImages.homeSvg,
              color: AppColors.primaryColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.mycoursesSvg,
              colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 0, 0, 0),
                BlendMode.srcIn,
              ),
            ),
            activeIcon: CustomSvgPicture(
              path: AppImages.mycoursesSvg,
              color: AppColors.primaryColor,
            ),
            label: 'My Courses',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.inboxSvg,
              colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 0, 0, 0),
                BlendMode.srcIn,
              ),
            ),
            activeIcon: CustomSvgPicture(
              path: AppImages.inboxSvg,
              color: AppColors.primaryColor,
            ),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.transactionSvg,
              colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 0, 0, 0),
                BlendMode.srcIn,
              ),
            ),
            activeIcon: CustomSvgPicture(
              path: AppImages.transactionSvg,
              color: AppColors.primaryColor,
            ),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.profileSvg,
              colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 0, 0, 0),
                BlendMode.srcIn,
              ),
            ),
            activeIcon: CustomSvgPicture(
              path: AppImages.profileSvg,
              color: AppColors.primaryColor,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
