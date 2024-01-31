import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const TextStyle optionStyle =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchScreen(),
                  ));
            },
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellow, width: 1.5),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.search, color: Colors.grey),
                      ),
                      Text(
                        'What are you looking for?',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ],
                  ),
                  Container(
                    height: 32,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(25)),
                    child: const Center(
                      child: Text(
                        'Search',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.yellow[600],
            tabs: const [
              RepeatedTab(label: 'Men'),
              RepeatedTab(label: 'Women'),
              RepeatedTab(label: 'Shoes'),
              RepeatedTab(label: 'Electronics'),
              RepeatedTab(label: 'Accessories'),
              RepeatedTab(label: 'Home & Garden'),
              RepeatedTab(label: 'Kids'),
              RepeatedTab(label: 'Beauty'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('men screen')),
            Center(child: Text('women screen')),
            Center(child: Text('shoes screen')),
            Center(child: Text('bags screen')),
            Center(child: Text('electronics screen')),
            Center(child: Text('accessories screen')),
            Center(child: Text('home and garden screen')),
            Center(child: Text('kids screen')),
            Center(child: Text('beauty screen')),
          ],
        ),
      ),
    );
  }
}

SearchScreen() {}

class RepeatedTab extends StatelessWidget {
  final String label;

  const RepeatedTab({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
