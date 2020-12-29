import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/fake_data.dart';
import 'package:food_app/models/category.dart';
import 'package:food_app/models/food.dart';

class FoodPage extends StatelessWidget {
  static const String routeName = '/FoodPage';
  Category category;
  FoodPage({this.category});

  @override
  Widget build(BuildContext context) {
    Map<String, Category> arguments = ModalRoute.of(context).settings.arguments;
    this.category = arguments['category'];
    // print('duy1 ${this.category.id}');
    // print(FAKE_FOODS);
    List<Food> foods = FAKE_FOODS.where((food) => food.categoryId == this.category.id).toList();
    print(foods);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('This show Food ${this.category.content}'),
      ),
      body: Center(
        child: Center(
          child: ListView.builder(
            itemCount: foods.length,
            itemBuilder: (item, index) {
              Food food = foods[index];
              return Container(
                padding: EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  clipBehavior: Clip.hardEdge,
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/images/loading.gif',
                    image: food.urlName,
                  ),
                ),
              );
          })
        ),
      )
    );
  }
}
