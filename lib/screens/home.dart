import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gap/gap.dart';
import 'package:week4/screens/homemethod.dart';
import 'package:week4/screens/images.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 203, 221),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 248, 203, 221),
        elevation: 0,
        centerTitle: true,
        title:  Text(
          "𝗡𝗬𝗞𝗔𝗔",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.all(20),
                child: Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:  EdgeInsets.symmetric(vertical: 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon:  Icon(Icons.search),
                      hintText: 'Search for products...',
                    ),
                  ),
                ),
              ),

            CarouselSlider(
  items: [
    Ads(images: CarouselImage.carouselimg1),
    Ads(images: CarouselImage.carouselimg2),
    Ads(images: CarouselImage.carouselimg3),
  ],
  options: CarouselOptions(
    aspectRatio: 16 / 7,
    autoPlay: true,
    enlargeCenterPage: true,
    viewportFraction: 0.9,
  ),
),
   SizedBox(
  height: 160,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      OfferProduct(
        images: OfferImages.Watches,
        price: "Sale is Live",
        text: 'Watches',
      ),
      OfferProduct(
        images: OfferImages.shoes,
        price: 'Shoes Now 50%',
        text: 'Adidas',
      ),
      OfferProduct(
        images: OfferImages.Jewellery,
        price: 'Offers',
        text: 'Jewellery',
      ),
      OfferProduct(
        images: OfferImages.Watches,
        price: 'Flat 40%',
        text: 'Casio',
      ),
      OfferProduct(
        images: OfferImages.shoes,
        price: 'New Drop',
        text: 'Nike',
      ),
    ],
  ),
),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Recently Viewed Items',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),

              Gap(10),

        SizedBox(
  height: 220, // important for proper height
  child: ListView(
    scrollDirection: Axis.horizontal,
    physics: BouncingScrollPhysics(),
    children: const [
      RecentlyBox(
        images:
            'https://m.media-amazon.com/images/I/8156ueDYjIL._AC_UY1000_.jpg',
      ),
      RecentlyBox(
        images:
            'https://f.nooncdn.com/p/pzsku/Z06186BA33EAAB27BD673Z/45/1755784386/5e573216-6d68-4696-b45e-f618ced30f53.jpg?format=webp&width=400',
      ),
      RecentlyBox(
        images:
            "https://swimweargalore.com/cdn/shop/files/LSP2102369.001-Le-Specs-Work-It-Sunglasses2.jpg?v=1765157417&width=640",
      ),
      RecentlyBox(
        images:
            'https://titanworld.com/cdn/shop/files/2480SM13_hand.jpg?v=1730812342&width=1000',
      ),
    ],
  ),
)
            ],
          ),
        ),
      ),
    );
  }
}
