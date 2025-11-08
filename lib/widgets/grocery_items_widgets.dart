import 'package:flutter/material.dart';
import 'package:grocery_store/models/grocery_items_module.dart';
import 'package:grocery_store/widgets/grocery_items_card_widget.dart';

class GroceryItemsWidgets extends StatelessWidget {
  const GroceryItemsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(groceryItemsList.length, (index) {
          return Padding(
            padding: index == 0
                ? EdgeInsets.symmetric(horizontal: 20)
                : EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {},
              child: GroceryItemsCardWidget(
                groceryItems: groceryItemsList[index],
                size: size,
              ),
            ),
          );
        }),
      ),
    );
  }
}
