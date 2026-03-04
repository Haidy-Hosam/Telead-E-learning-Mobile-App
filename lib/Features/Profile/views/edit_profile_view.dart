import 'package:e_learning_mobile_app/Core/CommonWidgets/app_bar_v2_custom.dart';
import 'package:e_learning_mobile_app/Core/CommonWidgets/primary_button.dart';
import 'package:e_learning_mobile_app/Core/Style/app_colors.dart';


import 'package:e_learning_mobile_app/Features/Profile/widgets/edit_profile_field.dart';
import 'package:flutter/material.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  int curTab = 0;
  List<String> hints = [
    'Full Name',
    'Nick Name',
    'Date of Birth',
    'Email',
    '( +1 )  724-848-1225',
    'Gender',
    'Student',
  ];
  List<IconData> prefix = [
    Icons.person_rounded,
    Icons.man,
    Icons.date_range_outlined,
    Icons.email_outlined,
    Icons.keyboard_arrow_down,
    Icons.g_mobiledata,
    Icons.boy,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppBarV2Custom(title: 'Edit Profile'),

                SizedBox(height: 26),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.greenColor, width: 4),
                    ),
                    child: ClipOval(
                      child: Image.network(
                        width: 90,
                        height: 90,
                        'https://imgs.search.brave.com/bPvYLjMcOtho6DwhZLdC4d2CUG0nDUH7hfS0X_sbKT4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNTM1/MDI3ODE4L3Bob3Rv/L3B1dHRpbmctZ3Jl/ZW4tYXQtc3Vuc2V0/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz1kMkh6cHFOLXI4/c1VCbk85S2UxbTZh/U2J0V05BN0ZkaFQ4/VjBFbFdmODRBPQ',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 41),
                ...List.generate(
                  7,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: EditProfileField(
                      hint: hints[index],
                      prefix: Icon(prefix[index]),
                      suffix: index == 5
                          ? Icon(Icons.arrow_drop_down, size: 32)
                          : null,
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 35.0),
        child: PrimaryButton(
          title: 'Update',
          onPressed: () {},
          isStartAligned: true,
        ),
      ),
    );
  }
}
