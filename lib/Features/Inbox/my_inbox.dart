import 'package:e_learning_mobile_app/Core/CommonWidgets/custom_toggle_tabs.dart';
import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Features/Inbox/inbox_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyInbox extends StatefulWidget {
  const MyInbox({super.key});

  @override
  State<MyInbox> createState() => _MyInboxState();
}

class _MyInboxState extends State<MyInbox> {
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
                      Text('Inbox'),
                    ],
                  ),
                  Icon(Icons.search),
                ],
              ),
              SizedBox(height: 16),
              CustomToggleTabs(
                curTab: curTab,
                tabsNames: ['Chat', 'Calls'],
                onTabChanged: (value) {
                  setState(() {
                    curTab = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
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
                  child: ListView.separated(
                    itemCount: 8,
                    itemBuilder: (context, index) => InboxItem(
                      title: curTab == 0
                          ? 'Patricia D. Regalado'
                          : "Virginia M. Pattersons",
                      subTitle: curTab == 0
                          ? 'Incoming   |   Nov 03, 202X'
                          : 'Hi, Good Evening Bro.!',
                      trailing: curTab == 0
                          ? SvgPicture.asset('assets/images/phoneIcon.svg')
                          : Column(
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '03',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Text('14:59'),
                              ],
                            ),
                    ),
                    separatorBuilder: (context, index) =>
                        Divider(color: AppColors.lightGreenColor, thickness: 2),
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
