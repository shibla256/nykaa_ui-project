
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
      backgroundColor: const Color.fromARGB(255, 216, 42, 112),

     
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 216, 42, 112),
        elevation: 0,
        centerTitle: true,
        title: const Text(
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
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                   
                      SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search for products...',
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              CarouselSlider(
                items: [
                  ads(images: CarouselImage.carouselimg1),
                  ads(images: CarouselImage.carouselimg2),
                  ads(images: CarouselImage.carouselimg3),
                ],
                options: CarouselOptions(aspectRatio: 16 / 7, autoPlay: true),
              ),

               SizedBox(height: 10),

              
               Gap(10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  offerProduct(
                    images: OfferImages.Watches,
                    price: "Sale is Live",
                    text: 'Watches',
                  ),
                  offerProduct(
                    images: OfferImages.shoes,
                    price: 'Shoes Now 50%',
                    text: 'Adidas',
                  ),
                  offerProduct(
                    images: OfferImages.Jewellery,
                    price: 'Offers',
                    text: 'Jewellery',
                  ),
                ],
              ),

                Gap(30),

              
                Padding(
                padding: EdgeInsets.symmetric(horizontal: 13),
                child: Text(
                  'Recently Viewed Items',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),

                 Gap(10),

              
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    recentlyBox(
                      images:
                          'https://m.media-amazon.com/images/I/8156ueDYjIL._AC_UY1000_.jpg',
                    ),
                    recentlyBox(
                      images:
                          'https://f.nooncdn.com/p/pzsku/Z06186BA33EAAB27BD673Z/45/1755784386/5e573216-6d68-4696-b45e-f618ced30f53.jpg?format=webp&width=400',
                    ),
                    recentlyBox(
                      images:
                          "https://swimweargalore.com/cdn/shop/files/LSP2102369.001-Le-Specs-Work-It-Sunglasses2.jpg?v=1765157417&width=640",
                    ),
                    recentlyBox(
                      images:
                          'https://titanworld.com/cdn/shop/files/2480SM13_hand.jpg?v=1730812342&width=1000',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
