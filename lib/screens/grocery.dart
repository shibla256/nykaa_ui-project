
import 'package:flutter/material.dart';
import 'package:week4/screens/homemethod.dart';
import 'package:week4/screens/images.dart';


class MyGro extends StatefulWidget {
  const MyGro({super.key});

  @override
  State<MyGro> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyGro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 42, 112),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 251, 250, 251) ,
        title: Text('Recent')
      ),
      body: Column(
        children: [
          Row(
            children: [
              recentlyBox(images: GroceryImages.dress),
              recentlyBox(images: GroceryImages.shoes),
            ],
          )
        ],
      )
    );
  }
}

