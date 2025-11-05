import 'package:flutter/material.dart';
import 'package:grocery_store/widgets/category_item_widget.dart';
import 'package:grocery_store/widgets/fruit_carousel_widget.dart';
import 'package:grocery_store/widgets/fruits_section_widget.dart';
import 'package:grocery_store/widgets/location_widget.dart';
import 'package:grocery_store/widgets/offer_hero_card_widget.dart';

class GroceryHomePage extends StatelessWidget {
  const GroceryHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            LocationWidget(),
            OfferHeroCardWidget(),
            SizedBox(height: 8),
            CategoryItemWidget(),
            SizedBox(height: 16),
            FruitsSectionWidget(),
            FruitCarouselWidget(),
          ],
        ),
      ),
    );
  }
}
