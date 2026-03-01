import 'package:e_learning_mobile_app/Core/CommonWidgets/custom_svg_picture.dart';
import 'package:e_learning_mobile_app/Core/Constans/AppImage.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Features/Home/Pages/home.dart';
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
final List<Widget> _screens = [
  HomeScreen(),
  // ExploreScreen(),
  MyCoursesView(),
  // FavoritesScreen(),
  // indox_Screen(),
  // ProfileView(),
  Center(child: Text('data'),)
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
    child: _screens[_currentIndex],
  ),
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
              AppImages.home_svg,
              colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 0, 0, 0),
                BlendMode.srcIn,
              ),
            ),
            activeIcon: CustomSvgPicture(
              path: AppImages.home_svg,
              color: AppColors.primaryColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.mycourses_svg,
              colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 0, 0, 0),
                BlendMode.srcIn,
              ),
            ),
            activeIcon: CustomSvgPicture(
              path: AppImages.mycourses_svg,
              color: AppColors.primaryColor,
            ),
            label: 'My Courses',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.inbox_svg,
              colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 0, 0, 0),
                BlendMode.srcIn,
              ),
            ),
            activeIcon: CustomSvgPicture(
              path: AppImages.inbox_svg,
              color: AppColors.primaryColor,
            ),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.transaction_svg,
              colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 0, 0, 0),
                BlendMode.srcIn,
              ),
            ),
            activeIcon: CustomSvgPicture(
              path: AppImages.transaction_svg,
              color: AppColors.primaryColor,
            ),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.profile_svg,
              colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 0, 0, 0),
                BlendMode.srcIn,
              ),
            ),
            activeIcon: CustomSvgPicture(
              path: AppImages.profile_svg,
              color: AppColors.primaryColor,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
