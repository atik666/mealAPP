import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_CATEGORIES
          .map(
            (catData) => CategoryItem(
              id: catData.id,
              title: catData.title,
              color: catData.color,
            ),
          )
          .toList(),
      padding: EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
      ),
      // SliverGridDelegateWithMaxCrossAxisExtent(
      //   mainAxisSpacing: 200,
      //   childAspectRatio: 3 / 2,
      //   crossAxisSpacing: 20,
      //   maxCrossAxisExtent: 20,
      // ),
    );
  }
}
