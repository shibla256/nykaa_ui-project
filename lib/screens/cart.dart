import 'package:flutter/material.dart';
import 'package:week4/screens/recent.dart';

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
        backgroundColor: const Color.fromARGB(255, 255, 255, 255) ,
        appBar: AppBar(title: Text('CART LIST',style: TextStyle(color: const Color.fromARGB(255, 25, 10, 10)),),
        backgroundColor:  const Color.fromARGB(255, 231, 138, 175),),
        body: Column(
          children: [
            Expanded(child: TabBarView(children: [Recent()])),
          ],
        ),
      ),
    );
  }
}
