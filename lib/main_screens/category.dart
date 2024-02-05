import 'package:ecommerce_shams_app/widgets/fake_search.dart';
import 'package:flutter/material.dart';

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
          Positioned(
            bottom: 0,
            left: 0,
            child: sideNavigator(size),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: categorieView(size),
          ),
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
    );
  }

// Widget categorieView
  Widget categorieView(Size size) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.8,
      color: Colors.white,
    );
  }
}
