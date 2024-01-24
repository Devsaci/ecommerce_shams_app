import 'package:flutter/material.dart';

class BottomNavigationBarApp extends StatefulWidget {
  const BottomNavigationBarApp({super.key});

  @override
  State<BottomNavigationBarApp> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarApp> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home', style: optionStyle),
    Text('Index 1: Category', style: optionStyle),
    Text('Index 2: Stores', style: optionStyle),
    Text('Index 3: Cart', style: optionStyle),
    Text('Index 4: Profile', style: optionStyle),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Ecommerce App Shams',
            style: optionStyle.copyWith(color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Stores',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 117, 27, 244),
        unselectedItemColor: const Color.fromARGB(255, 200, 92, 9),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: optionStyle.copyWith(fontWeight: FontWeight.w100),
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}