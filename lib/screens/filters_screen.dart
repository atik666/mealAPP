import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(
        description,
      ),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Filters'),
        ),
        drawer: MainDrawer(),
        body: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Adjust your meal selection.',
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    _buildSwitchListTile(
                      'Gluten-free',
                      'Only include gluten-free meals',
                      _glutenFree,
                      (newValue) {
                        setState(() {
                          _glutenFree = newValue;
                        });
                      },
                    ),
                    _buildSwitchListTile(
                      'Lactose-free',
                      'Only include lactose-free meals',
                      _lactoseFree,
                          (newValue) {
                        setState(() {
                          _lactoseFree = newValue;
                        });
                      },
                    ),
                    _buildSwitchListTile(
                      'Vegetarian',
                      'Only include vegetarian-free meals',
                      _vegetarian,
                          (newValue) {
                        setState(() {
                          _vegetarian = newValue;
                        });
                      },
                    ),
                    _buildSwitchListTile(
                      'Vegan',
                      'Only include vegan-free meals',
                      _vegan,
                          (newValue) {
                        setState(() {
                          _vegan = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
