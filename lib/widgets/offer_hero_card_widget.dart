import 'package:flutter/material.dart';

class OfferHeroCardWidget extends StatelessWidget {
  const OfferHeroCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.23,
      width: size.width,
      margin: EdgeInsets.only(top: 12, right: 12, left: 12, bottom: 12),
      decoration: BoxDecoration(
        color: Color(0xFFD7FFD4),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Up to 30% offer",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -2,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Enjoy your big offer",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.green,
                  ),
                ),
                SizedBox(height: 10),
                MaterialButton(
                  color: Color(0xFF0ca201),
                  onPressed: () {},
                  child: Text(
                    "Shop now",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                "assets/images/image.png",
                height: size.height * 0.16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
