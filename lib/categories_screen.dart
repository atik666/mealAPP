import 'package:flutter/material.dart';
import './dummy_data.dart';
import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeals'),
      ),
      body: GridView(
        children: DUMMY_CATEGORIES.map(
              (catData) => CategoryItem(
                title: catData.title,
                color: catData.color,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisSpacing: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          maxCrossAxisExtent: 20,
        ),
      ),
    );
  }
}