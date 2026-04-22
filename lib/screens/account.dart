import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:week4/screens/homemethod.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 42, 112),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      'Hey! Nykaa Users',

                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Divider(),

              // Quick Actions
              Row(
                children: [
                  Expanded(
                    child: Containertop(
                      icon: Icons.shopping_cart,
                      text: 'Orders',
                    ),
                  ),
                  Expanded(
                    child: Containertop(icon: Icons.favorite, text: 'Wishlist'),
                  ),
                ],
              ),

              Gap(20),
              thickLine(),

              // Credit
              Padding(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Credit Options',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              paymentOption(icon: Icons.credit_card, title: 'PAYMENT METHODS'),

              Gap(20),
              thickLine(),

              // Activity
              optionLists(icon: Icons.reviews, text: 'Reviews'),
              optionLists(icon: Icons.help, text: 'FAQs'),

              Gap(20),

              // Logout
              ElevatedButton(onPressed: () {}, child: const Text('Logout')),
            ],
          ),
        ),
      ),
    );
  }
}
