import 'package:flutter/material.dart';

class SubcategProducts extends StatelessWidget {
  final String mainCategName;
  const SubcategProducts({super.key, required this.mainCategName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SubCategProduct"),
      ),
    );
  }
}
