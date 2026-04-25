import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:week4/screens/homemethod.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {'icon': Icons.shopping_cart, 'text': 'Orders'},
      {'icon': Icons.favorite, 'text': 'Wishlist'},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hey! Nykaa Users',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: ContainerTop(
                        icon: items[index]['icon'] as IconData,
                        text: items[index]['text'] as String,
                      ),
                    );
                  },
                ),
              ),

               Gap(20),
               ThickLine(),

               PaymentOption(
                icon: Icons.credit_card,
                title: 'PAYMENT METHODS',
              ),

               Gap(20),
               ThickLine(),

               OptionLists(icon: Icons.reviews, text: 'Reviews'),
               OptionLists(icon: Icons.help, text: 'FAQs'),

               Gap(20),

              Padding(
                padding:  EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Logout',
                    style: TextStyle(
                      color: Color.fromARGB(255, 243, 33, 163),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}