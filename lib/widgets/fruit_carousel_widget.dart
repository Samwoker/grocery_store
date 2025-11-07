import 'package:flutter/material.dart';

class FruitCarouselWidget extends StatelessWidget {
  const FruitCarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          _FruitCard(
            image: "https://img.icons8.com/color/96/banana.png",
            title: "Banana",
            review: "4.8(392)",
            price: "\$3.99",
          ),
          _FruitCard(
            image: "https://img.icons8.com/color/96/orange.png",
            title: "Orange",
            review: "4.8(392)",
            price: "\$3.99",
          ),
          _FruitCard(
            image: "https://img.icons8.com/color/96/mango.png",
            title: "Mango",
            review: "4.9(392)",
            price: "\$5.99",
          ),
        ],
      ),
    );
  }
}

class _FruitCard extends StatelessWidget {
  final String image;
  final String title;
  final String review;
  final String price;
  const _FruitCard({
    required this.image,
    required this.title,
    required this.review,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            margin: EdgeInsets.all(7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.network(image, height: 150),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellow),
              Text(
                review,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            price,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
