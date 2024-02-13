import 'package:flutter/material.dart';

class SubcategProducts extends StatelessWidget {
  final String mainCategName;
  final String subCategName;
  const SubcategProducts({
    super.key,
    required this.mainCategName,
    required this.subCategName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(subCategName),
      ),
      body: Center(child: Text(mainCategName)),
    );
  }
}
