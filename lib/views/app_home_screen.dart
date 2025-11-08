import 'package:flutter/material.dart';
import 'package:grocery_store/widgets/category_item_widget.dart';
import 'package:grocery_store/widgets/categories.dart';
import 'package:grocery_store/widgets/grocery_items_widgets.dart';
import 'package:grocery_store/widgets/header_widget.dart';
import 'package:grocery_store/widgets/offer_hero_card_widget.dart';

class AppHomeScreen extends StatefulWidget {
  const AppHomeScreen({super.key});

  @override
  State<AppHomeScreen> createState() => _AppHomeScreenState();
}

class _AppHomeScreenState extends State<AppHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              HeaderWidget(),
              SizedBox(height: 20),
              OfferHeroCardWidget(),
              Categories(category: "Categories"),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: CategoryItemWidget(),
              ),
              Categories(category: "Fruits"),
              GroceryItemsWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}
