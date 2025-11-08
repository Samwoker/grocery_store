import 'package:flutter/material.dart';
import 'package:grocery_store/models/grocery_items_module.dart';

class GroceryItemsCardWidget extends StatelessWidget {
  final AppModel groceryItems;
  final Size size;

  const GroceryItemsCardWidget({
    super.key,
    required this.groceryItems,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[200],
            image: DecorationImage(
              image: AssetImage(groceryItems.image),
              fit: BoxFit.cover,
            ),
          ),
          height: size.height * 0.25,
          width: size.width * 0.5,
        ),
      ],
    );
  }
}
