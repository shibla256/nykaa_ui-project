import 'package:flutter/material.dart';
import 'package:week4/screens/account.dart';
import 'package:week4/screens/cart.dart';
import 'package:week4/screens/categoris.dart';
import 'package:week4/screens/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int indexNum = 0;

  final List<Widget> tabWidget = [
    Homepage(),
    Categories(),
    MyAccount(),
    MyCart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabWidget[indexNum],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 231, 138, 175), // ✅ no gradient
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        currentIndex: indexNum,
        selectedItemColor: const Color.fromARGB(255, 249, 249, 249), // you can change color
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),

        onTap: (value) {
          setState(() {
            indexNum = value;
          });
        },

        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
        ],
      ),
    );
  }
}