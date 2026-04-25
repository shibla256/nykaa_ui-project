import 'package:flutter/material.dart';
import 'package:week4/screens/homemethod.dart';
import 'package:week4/screens/images.dart';

class Recent extends StatefulWidget {
  const Recent({super.key});

  @override
  State<Recent> createState() => _MyWidgetState();
}
class _MyWidgetState extends State<Recent> {
  final List<String> items = [
    GroceryImages.dress,
    GroceryImages.shoes,
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 247, 251),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 253, 251, 252),
        title:  Text('Recent'),
      ),
      body: GridView.builder(
        padding:  EdgeInsets.all(10),
        itemCount: items.length,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          return RecentlyBox(
            images: items[index],
          );
        },
      ),
    );
  }
}

