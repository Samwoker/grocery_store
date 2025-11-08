import 'package:flutter/material.dart';
import 'package:grocery_store/models/category_model.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          final item = category[index];
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[200],
                    backgroundImage: AssetImage(item.image),
                  ),
                  const SizedBox(height: 12),
                  Text(item.name),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
