import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
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
              Text(
                'Fuck you!',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 60,
                ),
              ),
              Image.network('https://i.pinimg.com/originals/62/57/61/62576173246e68d85c28210c30027a3a.jpg')
            ],
          ),
        ));
  }
}
