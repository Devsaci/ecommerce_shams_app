import 'package:ecommerce_shams_app/utilities/categ_list.dart';
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
            crossAxisSpacing: 15,
            children: List.generate(men.length, (index) {
              return GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: Image(
                        image: AssetImage("images/men/men$index.jpg"),
                      ),
                    ),
                    Text(men[index]),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
