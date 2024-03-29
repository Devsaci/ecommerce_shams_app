import 'package:flutter/material.dart';

import 'main_screens/customer_homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ecommerce App Shams',
        theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(
          //   seedColor: Colors.white,
          // ),
          useMaterial3: true,
        ),
        //home: const CustomeHomeScreen(),
        home: const CustomerHomeScreen());
  }
}
