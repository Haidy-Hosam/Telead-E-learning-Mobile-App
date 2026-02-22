import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.network(
            width: 92,
            height: 92,
            'https://imgs.search.brave.com/bPvYLjMcOtho6DwhZLdC4d2CUG0nDUH7hfS0X_sbKT4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNTM1/MDI3ODE4L3Bob3Rv/L3B1dHRpbmctZ3Jl/ZW4tYXQtc3Vuc2V0/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz1kMkh6cHFOLXI4/c1VCbk85S2UxbTZh/U2J0V05BN0ZkaFQ4/VjBFbFdmODRBPQ',
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(title),
            Text(subTitle),
            SizedBox(height: 10),
            Container(
              height: 22,
              width: 60,
              color: AppColors.greenColor,
              child: Text(
                'Paid',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.whiteColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
