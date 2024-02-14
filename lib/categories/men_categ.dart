import 'package:ecommerce_shams_app/utilities/categ_list.dart';
import 'package:flutter/material.dart';

import '../minor_screens/subcateg_products.dart';

class MenCategory extends StatelessWidget {
  const MenCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.height * 0.75,
            child: Column(
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
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SubcategProducts(
                                mainCategName: 'men',
                                subCategName: men[index],
                              ),
                            ),
                          );
                        },
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
            ),
          ),
        ),
      ],
    );
  }
}
