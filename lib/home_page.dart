import 'package:flutter/material.dart';

class CustomeHomeScreen extends StatelessWidget {
  const CustomeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        child: Text("ecommerce  Shams"),
      ),
    );
  }
}
