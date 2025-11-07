import 'package:flutter/material.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            HeaderWidget(),
            SizedBox(height: 20),
            OfferHeroCardWidget(),
          ],
        ),
      ),
    );
  }
}
