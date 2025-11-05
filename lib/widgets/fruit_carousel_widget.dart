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
          _FruitCard(image: "https://img.icons8.com/color/96/banana.png"),
          _FruitCard(image: "https://img.icons8.com/color/96/banana.png"),
          _FruitCard(image: "https://img.icons8.com/color/96/banana.png"),
          _FruitCard(image: "https://img.icons8.com/color/96/banana.png"),
          _FruitCard(image: "https://img.icons8.com/color/96/banana.png"),
          _FruitCard(image: "https://img.icons8.com/color/96/banana.png"),
        ],
      ),
    );
  }
}

class _FruitCard extends StatelessWidget {
  final String image;
  const _FruitCard({required this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            margin: EdgeInsets.all(7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.network(image, height: 150),
          ),
        ],
      ),
    );
  }
}
