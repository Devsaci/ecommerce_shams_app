import 'package:flutter/material.dart';

List<String> imageTry = [
  "images/try/image0.jpg",
  "images/try/image1.jpg",
  "images/try/image2.jpg",
  "images/try/image3.jpg"
];

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
            crossAxisSpacing: 15,
            children: List.generate(4, (index) {
              return SizedBox(
                //color: Colors.black45,
                height: 70,
                width: 70,
                child: Image(image: AssetImage("images/try/image$index.jpg")),
              );
            }),
          ),
        ),
      ],
    );
  }
}
