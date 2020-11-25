import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/filters_screen.dart';
import 'package:meal_app/screens/tabs_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(
    String title,
    IconData icon,
    Function tapHandler,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Colors.teal,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            'Meals',
            Icons.restaurant,
            () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => TabsScreen(),
                ),
              );
            },
          ),
          buildListTile('Filters', Icons.settings, () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => FilterScreen(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
