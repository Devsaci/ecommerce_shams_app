import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const TextStyle optionStyle =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const CupertinoSearchTextField(),
          bottom: const TabBar(
            tabs: [
              RepeatedTab(optionStyle: optionStyle, label: 'Men'),
              Tab(child: Text('Women', style: optionStyle)),
              Tab(child: Text('Shoes', style: optionStyle)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('men screen')),
            Center(child: Text('women screen')),
            Center(child: Text('shoes screen')),
          ],
        ),
      ),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;
  const RepeatedTab({
    super.key,
    required this.optionStyle,
    required this.label,
  });

  final TextStyle optionStyle;

  @override
  Widget build(BuildContext context) {
    return Tab(child: Text('Men', style: optionStyle));
  }
}
