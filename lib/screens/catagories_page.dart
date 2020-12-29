import 'package:flutter/material.dart';
import 'package:food_app/fake_data.dart';
import 'package:food_app/screens/categories_item.dart';

class CategoriesPage extends StatelessWidget {
  static const String routeName = '/CategoriesPage';

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(12),
      children: FAKE_CATEGORIES.map((eachCategory) => CategoriesItem(category: eachCategory)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 3/3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
      ),
    );
  }
}
