import 'package:flutter/material.dart';

class MenCategory extends StatelessWidget {
  const MenCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // color: Colors.red,
      children: [
        Text(
          "Men",
          style: TextStyle(
            fontSize: 24,
            letterSpacing: 1.5,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
