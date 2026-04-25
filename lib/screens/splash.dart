import 'dart:async';
import 'package:flutter/material.dart';
import 'package:week4/screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Image.network(
                'https://vectorseek.com/wp-content/uploads/2023/04/Nykaa-Logo-Vector.jpg',

              ),
            ),
          ),
        ],
      ),
    );
  }
}
