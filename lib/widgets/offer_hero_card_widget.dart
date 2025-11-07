import 'package:flutter/material.dart';

class OfferHeroCardWidget extends StatelessWidget {
  const OfferHeroCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.23,
      width: size.width,
      color: Color(0xD7FFD4),
      margin: EdgeInsets.all(12),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Up to 30% offer",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                letterSpacing: -2,
              ),
            ),
            Text(
              "Enjoy your big offer",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
