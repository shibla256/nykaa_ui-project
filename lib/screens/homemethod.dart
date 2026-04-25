import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OfferProduct extends StatelessWidget {
  final String text;
  final String price;
  final String images;

  const OfferProduct({
    super.key,
    required this.text,
    required this.price,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: 150,
        width: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow:  [
            BoxShadow(
              offset: Offset(1, 1),
              blurRadius: 6,
              color: Colors.black12,
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Container(
              margin:  EdgeInsets.all(6),
              width: double.infinity,
              height: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  images,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                       Icon(Icons.error),
                ),
              ),
            ),
             Gap(5),
            Text(
              text,
              style:  TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Text(
              price,
              style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}

class OfferColumn extends StatelessWidget {
  final String images;
  final String text;

  const OfferColumn({super.key, required this.images, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(images),
          onBackgroundImageError: (_, _) {},
        ),
         SizedBox(height: 6),
        Text(text, style:  TextStyle(fontWeight: FontWeight.w500)),
      ],
    );
  }
}

class TopContainer extends StatelessWidget {
  final String images;
  final String text;
  final Color color;
  final Color containerColor;
  final double height;

  const TopContainer({
    super.key,
    required this.images,
    required this.text,
    required this.color,
    required this.containerColor,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.all(10),
      padding:  EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: containerColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            images,
            width: 80,
            height: height,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) =>
                 Icon(Icons.error),
          ),
           Gap(10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: color,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecentlyBox extends StatelessWidget {
  final String images;

  const RecentlyBox({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      width: 180,
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          images,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) =>  Icon(Icons.error),
        ),
      ),
    );
  }
}

class Ads extends StatelessWidget {
  final String images;

  const Ads({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: NetworkImage(images), fit: BoxFit.cover),
      ),
    );
  }
}

class ContainerTop extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContainerTop({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin:  EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.black),
           Gap(10),
          Text(
            text,
            style:  TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class ThickLine extends StatelessWidget {
  const ThickLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: double.infinity,
      color: const Color.fromARGB(255, 255, 242, 242),
    );
  }
}

class PaymentOption extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String? subtitle;

  const PaymentOption({
    super.key,
    this.icon,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.black),
               SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:  TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle!,
                      style:  TextStyle(
                        color: Color.fromARGB(255, 65, 23, 23),
                        fontSize: 13,
                      ),
                    ),
                ],
              ),
            ],
          ),
           Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}
class OptionLists extends StatelessWidget {
  final IconData icon;
  final String text;

  const OptionLists({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        text,
        style:  TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing:  Icon(Icons.arrow_forward_ios, size: 16),
    );
  }
}
