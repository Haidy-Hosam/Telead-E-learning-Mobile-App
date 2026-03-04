import 'package:flutter/material.dart';

class RemembermeSqare extends StatefulWidget {
  const RemembermeSqare({super.key});

  @override
  State<RemembermeSqare> createState() => _RemembermeSqareState();
}

class _RemembermeSqareState extends State<RemembermeSqare> {
bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          child: Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4),
              color: isChecked ? Colors.green : Colors.transparent,
            ),
            child: isChecked
                ? const Icon(
                    Icons.check,
                    size: 16,
                    color: Colors.white,
                  )
                : null,
          ),
        ),
        const SizedBox(width: 10),
        const Text("Remember Me"),
      ],
    );
  }
}