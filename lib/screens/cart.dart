import 'package:flutter/material.dart';
import 'package:week4/screens/grocery.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 216, 42, 112),
        appBar: AppBar(title: Text('CART LIST',style: TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 216, 42, 112),),
        body: Column(
          children: [
            Expanded(child: TabBarView(children: [MyGro()])),
          ],
        ),
      ),
    );
  }
}
