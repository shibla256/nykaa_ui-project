import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget offerProduct({
  required String text,
  required String price,
  required String images,
}) {
  return Column(
    children: [
      Container(
        height: 130,
        width: 130,
        decoration: BoxDecoration(
          boxShadow: const [BoxShadow(offset: Offset(1, 1), blurRadius: 6)],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              width: 100,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Image.network(
                images,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 237, 237, 240),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      price,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget offerColumn({required String images, required String text}) {
  return Column(
    children: [
      CircleAvatar(radius: 30, backgroundImage: NetworkImage(images)),
     SizedBox(height: 6),
      Text(text),
    ],
  );
}

Widget topContainer({
  required String images,
  required String text,
  required Color color,
  required Color containerColor,
  required double height,
}) {
  return Container(
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: containerColor,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          images,
          width: 80,
          height: height,
          errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
        ),
         Gap(10),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, color: color),
        ),
      ],
    ),
  );
}

Widget recentlyBox({required String images}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
    width: 120,
    height: 160,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        images,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
      ),
    ),
  );
}

Widget ads({required String images}) {
  return Container(
    margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(image: NetworkImage(images), fit: BoxFit.cover),
    ),
  );
}

Widget Containertop({required IconData icon, required String text}) {
  return Container(
    height: 50,
    margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(5),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.blue),
        const Gap(10),
        Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
  );
}

Widget thickLine() {
  return Container(height: 10, width: double.infinity, color: Colors.grey[300]);
}

Widget paymentOption({
  IconData? icon,
  required String title,
  String? subtitle,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.blue),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (subtitle != null)
                  Text(
                    subtitle,
                    style: TextStyle(color: Colors.grey[600], fontSize: 13),
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

Widget optionLists({required IconData icon, required String text}) {
  return ListTile(
    leading: Icon(icon, color: Colors.blue),
    title: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
  );
}
