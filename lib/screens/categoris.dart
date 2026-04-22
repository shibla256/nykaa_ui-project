
import 'package:flutter/material.dart';
import 'package:week4/screens/images.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 239, 241),
      appBar: AppBar(
        title:  Text(
          'All Categories',
          style: TextStyle(color: Color.fromARGB(255, 17, 16, 17)),
        ),
        actions:  [
          Icon(Icons.search, size: 30, color: Color.fromARGB(255, 21, 21, 21)),
        ],
        backgroundColor: const Color.fromARGB(255, 227, 20, 127),
      ), 
      body: Padding(
        padding:  EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 25,
          crossAxisSpacing: 25,
          children: [
            circleContainer(images: Images.Tops, text: 'Tops'),
            circleContainer(images: Images.Bags, text: 'Bags'),
            circleContainer(images: Images.Traditional, text: 'Traditional'),
            circleContainer(images: Images.Men, text: 'Men'),

            circleContainer(images: Images.Footwear, text: 'Shoes'),
            circleContainer(images: Images.Jewellery, text: 'Jewellery'),
            circleContainer(images: Images.sunglasses, text: 'sunglasses'),
            circleContainer(images: Images.kids, text: 'Kids'),

            circleContainer(images: Images.Watches, text: 'Watches'),
            circleContainer(images: Images.Sandals, text: 'Sandals'),
            circleContainer(images: Images.Home, text: 'Home'),

            circleContainer(images: Images.Makeup, text: 'MakeUp'),
            circleContainer(images: Images.Earing, text: 'Earings'),         
          ],
        ),
      ),
    );
  }
  Widget circleContainer({
    required String images,
    required String text,
  }) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(images),
          radius: 40,
        ),
        SizedBox(height: 15),
        Text(
          text,
          textAlign: TextAlign.center,
          style:  TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}