import 'package:flutter/material.dart';
import 'package:food_app/screens/catagories_page.dart';
import 'package:food_app/screens/food_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App with Navigation',
      initialRoute: '/',
      routes: {
        '/FoodPage': (context) => FoodPage(),
        '/CategoriesPage': (context) => CategoriesPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food App'),
        ),
        body: SafeArea(
          child: CategoriesPage(),
        )
      )
    );
  }
}


