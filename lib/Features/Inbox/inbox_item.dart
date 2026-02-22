import 'package:flutter/material.dart';

class InboxItem extends StatelessWidget {
  const InboxItem({
    super.key,
    required this.trailing,
    required this.title,
    required this.subTitle,
  });
  final Widget trailing;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: ClipOval(
              child: Image.network(
                width: 66,
                height: 66,
                'https://imgs.search.brave.com/bPvYLjMcOtho6DwhZLdC4d2CUG0nDUH7hfS0X_sbKT4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNTM1/MDI3ODE4L3Bob3Rv/L3B1dHRpbmctZ3Jl/ZW4tYXQtc3Vuc2V0/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz1kMkh6cHFOLXI4/c1VCbk85S2UxbTZh/U2J0V05BN0ZkaFQ4/VjBFbFdmODRBPQ',
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Column(children: [Text(title), Text(subTitle)]),
          const Spacer(),
          trailing,
        ],
      ),
    );
  }
}
