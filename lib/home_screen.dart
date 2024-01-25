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
              Tab(child: Text('Men', style: optionStyle)),
              Tab(child: Text('Women', style: optionStyle)),
              Tab(child: Text('Shoes', style: optionStyle)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [],
        ),
      ),
    );
  }
}
