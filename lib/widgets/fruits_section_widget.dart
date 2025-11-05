import 'package:flutter/material.dart';

class FruitsSectionWidget extends StatelessWidget {
  const FruitsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Fruits",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {},
            child: Text("See all", style: TextStyle(color: Colors.green)),
          ),
        ],
      ),
    );
  }
}
