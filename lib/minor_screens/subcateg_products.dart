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
        elevation: 10,
        backgroundColor: const Color.fromARGB(96, 225, 139, 139),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text(subCategName),
      ),
      body: Center(child: Text(mainCategName)),
    );
  }
}
