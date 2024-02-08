import 'package:flutter/material.dart';

class MenCategory extends StatelessWidget {
  const MenCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(30.0),
          child: Text(
            "Men",
            style: TextStyle(
              fontSize: 24,
              letterSpacing: 1.5,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.60,
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 70,
            children: List.generate(4, (index) {
              return Container(
                color: Colors.black45,
                height: 70,
                width: 70,
              );
            }),
          ),
        ),
      ],
    );
  }
}
