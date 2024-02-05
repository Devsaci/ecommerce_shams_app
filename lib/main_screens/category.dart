import 'package:ecommerce_shams_app/widgets/fake_search.dart';
import 'package:flutter/material.dart';

List<String> items = [
  'men',
  'women',
  'shoes',
  'bags',
  'electronics',
  'accessories',
  'home & garden',
  'kids',
  'beauty',
];

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const FakeSearch(),
      ),
      body: Stack(
        children: [
          Positioned(bottom: 0, left: 0, child: sideNavigator(size)),
          Positioned(bottom: 0, right: 0, child: categView(size)),
        ],
      ),
    );
  }

//  Widget sideNavigator
  Widget sideNavigator(Size size) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.2,
      color: Colors.grey.shade300,
      child: ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 100,
            child: Center(
              child: Text(items[index]),
            ),
          );
        },
      ),
    );
  }

// Widget categorieView
  Widget categView(Size size) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.8,
      color: Colors.white,
    );
  }
}
