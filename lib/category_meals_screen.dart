import 'package:flutter/material.dart';
import './model/meal.dart';
import 'dummy_data.dart';
import 'dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String id;
  final String title;

  CategoryMealsScreen({
    this.id,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    final categoryMeals = DUMMY_MEALS
        .where(
          (element) => element.categories.contains(id),
        )
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Text(
          categoryMeals[index].title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        itemCount: categoryMeals.length,
      ),
    );
  }
}
