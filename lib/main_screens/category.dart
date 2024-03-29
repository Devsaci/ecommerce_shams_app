import 'package:ecommerce_shams_app/categories/men_categ.dart';
import 'package:ecommerce_shams_app/widgets/fake_search.dart';
import 'package:flutter/material.dart';

List<ItemsData> items = [
  ItemsData(label: 'men'),
  ItemsData(label: 'women'),
  ItemsData(label: 'shoes'),
  ItemsData(label: 'bags'),
  ItemsData(label: 'electronics'),
  ItemsData(label: 'accessories'),
  ItemsData(label: 'home & garden'),
  ItemsData(label: 'kids'),
  ItemsData(label: 'beauty'),
];

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    for (var element in items) {
      element.isSelected = false;
    }
    setState(() {
      items[0].isSelected = true;
    });
    super.initState();
  }

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
    return SizedBox(
      height: size.height * 0.8,
      width: size.width * 0.2,
      //color: Colors.grey.shade300,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 600),
                curve: Curves.linear,
              );
              // for (var element in items) {
              //   element.isSelected = false;
              // }
              // setState(() {
              //   items[index].isSelected = true;
              // });
            },
            child: Container(
              color: items[index].isSelected == true
                  ? Colors.white
                  : Colors.grey.shade300,
              height: 100,
              child: Center(
                child: Text(items[index].label),
              ),
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
      child: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          for (var element in items) {
            element.isSelected = false;
          }
          setState(() {
            items[value].isSelected = true;
          });
        },
        scrollDirection: Axis.vertical,
        children: const [
          //Center(child: Text("MenCategory")),
          MenCategory(),
          Center(child: Text("WomenCategory")),
          Center(child: Text("ShoesCategory")),
          Center(child: Text("BagsCategory")),
          Center(child: Text("ElectronicsCategory")),
          Center(child: Text("AccessoriesCategory")),
          Center(child: Text("HomeGardenCategory")),
          Center(child: Text("KidsCategory")),
          Center(child: Text("BeautyCategory")),
        ],
      ),
    );
  }
}

class ItemsData {
  String label;
  bool isSelected;

  ItemsData({required this.label, this.isSelected = false});
}
