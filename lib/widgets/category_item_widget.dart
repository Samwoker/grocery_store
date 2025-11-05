import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 12),
        children: [
          _CategoryItem(icon: Icons.local_grocery_store, label: "Fruits"),
          _CategoryItem(icon: Icons.local_drink, label: "Milk & Egg"),
          _CategoryItem(icon: Icons.local_cafe, label: "Beverages"),
          _CategoryItem(icon: Icons.local_laundry_service, label: "Laundry"),
          _CategoryItem(icon: Icons.local_florist, label: "Vegetables"),
        ],
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _CategoryItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 23,
            child: Icon(icon, color: Colors.green),
          ),
          SizedBox(height: 6),
          Text(label, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
