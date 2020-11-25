import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/favorites_screen.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map> _pages = [
    {
      'page': CategoriesScreen(),
      'title': 'The Categories',
    },
    {
      'page': FavoritesScreen(),
      'title': 'Your Favorites!',
    },
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pages[_selectedPageIndex]['title'],
        ),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: _selectPage,
        backgroundColor: Colors.teal[500],
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.teal[500],
            icon: Icon(
              Icons.category,
            ),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.teal[500],
            icon: Icon(
              Icons.star,
            ),
            title: Text('Favorites'),
          ),
        ],
      ),
    );
  }
}
